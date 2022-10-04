//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
//
/// \file B1SteppingAction.cc
/// \brief Implementation of the B1SteppingAction class

#include "B1SteppingAction.hh"
#include "B1EventAction.hh"
#include "B1DetectorConstruction.hh"

#include "G4Step.hh"
#include "G4Event.hh"
#include "G4RunManager.hh"
#include "G4LogicalVolume.hh"

//来自DriftChamberSD.cc的头文件
#include <math.h> //可能不需要加进去

#include "G4HCofThisEvent.hh"
#include "G4TouchableHistory.hh"
#include "G4Track.hh"
#include "G4Step.hh"
#include "G4SDManager.hh"
#include "G4ios.hh"
#include "G4VSolid.hh"
#include "G4GeometryManager.hh"
#include "G4VProcess.hh"
#include "Randomize.hh"
#include "G4Box.hh"
#include "G4SystemOfUnits.hh"

#include "G4Types.hh"
#include "G4String.hh"
#include "geomdefs.hh"

#include "G4ThreeVector.hh"

#include <vector> //可能不需要加进去

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

//初始化
B1SteppingAction::B1SteppingAction(B1EventAction *eventAction)
    : G4UserSteppingAction(),
      fEventAction(eventAction),
      fScoringVolume(0)
{
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

//析构函数
B1SteppingAction::~B1SteppingAction()
{
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void B1SteppingAction::UserSteppingAction(const G4Step *step)
{
  //得到B1DetectorConstruction中定义的fScoringVolume（logicShape4）
  if (!fScoringVolume)
  {
    const B1DetectorConstruction *detectorConstruction = static_cast<const B1DetectorConstruction *>(G4RunManager::GetRunManager()->GetUserDetectorConstruction());
    fScoringVolume = detectorConstruction->GetScoringVolume();
  }

  // get volume of the current step
  G4LogicalVolume *volume = step->GetPreStepPoint()->GetTouchableHandle()->GetVolume()->GetLogicalVolume();

  // check if we are in scoring volume
  if (volume != fScoringVolume)
    return;

  // collect energy deposited in this step

  if (step->GetTrack()->GetTrackID() == 1)
  {
    G4double edepStep = step->GetTotalEnergyDeposit();
    fEventAction->AddEdep(edepStep);
  }

  auto secondaries = step->GetSecondaryInCurrentStep(); //由当前的step得到下一步的step（可能不止一个）
  auto tid = step->GetTrack()->GetTrackID();            //得到当前step的TrackID
  G4int i0 = secondaries->size();                       //得到当前的step的下一步step的数目

  for (int i = 0; i < i0; i++)
  {
    if (tid == 1) //如果当前step是初级粒子对应的step
    {
      if (secondaries->at(i)->GetCreatorProcess()->GetProcessType() == 2 && secondaries->at(i)->GetParticleDefinition()->GetParticleName() == "e-")
      //当前的step的下一步step如果是电离过程且产生的次级粒子时电子
      {
        G4double KineticEnergyStep = secondaries->at(i)->GetKineticEnergy();
        //统计次级粒子——电子的动能
        fEventAction->AddKineticEnergy(KineticEnergyStep);
        //将一个step中电子的动能作为变量输入加和函数
        //下面是统计次级电子个数的代码
        // G4cout << "electric process" << G4endl;//共1445个次级电子，说明被模拟了的次级电子还是占少数
      }
    }
  }
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
