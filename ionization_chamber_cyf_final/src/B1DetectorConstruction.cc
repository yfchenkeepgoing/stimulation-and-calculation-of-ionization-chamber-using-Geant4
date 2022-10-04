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
/// \file B1DetectorConstruction.cc
/// \brief Implementation of the B1DetectorConstruction class

#include "B1DetectorConstruction.hh"
#include "G4Isotope.hh"
#include "G4Element.hh"
#include "G4Material.hh"
#include "G4UnitsTable.hh"
#include "G4RunManager.hh"
#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4Cons.hh"
#include "G4Orb.hh"
#include "G4Sphere.hh"
#include "G4Trd.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

B1DetectorConstruction::B1DetectorConstruction()
    : G4VUserDetectorConstruction(),
      fScoringVolume(0)
{
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

B1DetectorConstruction::~B1DetectorConstruction()
{
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume *B1DetectorConstruction::Construct()
{
    // Get nist material manager
    G4NistManager *nist = G4NistManager::Instance();

    //定义一种新材料PMMA
    G4double density;
    G4String name;
    G4int ncomponents, natoms;
    // a = 12.01*g/mole;
    // G4Element* elC = new G4Element(name="Carbon" ,symbol="C" , z= 6., a);;
    // a = 1.01*g/mole;
    // G4Element* elH = new G4Element(name="Hydrogen",symbol="H" , z= 1., a);
    // a = 16.00*g/mole;
    // G4Element* elO = new G4Element(name="Oxygen" ,symbol="O" , z= 8., a);
    //定义三种元素
    //另一种写法
    G4Element *elC = nist->FindOrBuildElement("C");
    G4Element *elH = nist->FindOrBuildElement("H");
    G4Element *elO = nist->FindOrBuildElement("O");

    density = 1.190 * g / cm3;
    G4Material *fPMMA = new G4Material(name = "PMMA", density, ncomponents = 3);
    fPMMA->AddElement(elC, natoms = 5);
    fPMMA->AddElement(elH, natoms = 8);
    fPMMA->AddElement(elO, natoms = 2);
    //定义材料PMMA，这种材料可以作为外壳的材料(shape1,shape7)

    // Envelope parameters
    //长方体的长宽为180mm，高为12.3mm，填充材料为G4_AIR
    G4double env_sizeXY = 180 * mm, env_sizeZ = 12.3 * mm;
    G4Material *env_mat = nist->FindOrBuildMaterial("G4_AIR");

    // Option to switch on/off checking of volumes overlaps
    //
    G4bool checkOverlaps = true;

    //
    // World，G4中最大的空间
    //
    G4double world_sizeXY = 1.2 * env_sizeXY;
    G4double world_sizeZ = 1.2 * env_sizeZ;
    G4Material *world_mat = nist->FindOrBuildMaterial("G4_AIR");

    G4Box *solidWorld =
        new G4Box("World",                                                    // its name
                  0.5 * world_sizeXY, 0.5 * world_sizeXY, 0.5 * world_sizeZ); // its size

    G4LogicalVolume *logicWorld =
        new G4LogicalVolume(solidWorld, // its solid
                            world_mat,  // its material
                            "World");   // its name

    G4VPhysicalVolume *physWorld =
        new G4PVPlacement(0,               // no rotation
                          G4ThreeVector(), // at (0,0,0)
                          logicWorld,      // its logical volume
                          "World",         // its name
                          0,               // its mother  volume
                          false,           // no boolean operation
                          0,               // copy number
                          checkOverlaps);  // overlaps checking

    //
    // Envelope
    //
    G4Box *solidEnv =
        new G4Box("Envelope",                                           // its name
                  0.5 * env_sizeXY, 0.5 * env_sizeXY, 0.5 * env_sizeZ); // its size

    G4LogicalVolume *logicEnv =
        new G4LogicalVolume(solidEnv,    // its solid
                            env_mat,     // its material
                            "Envelope"); // its name

    new G4PVPlacement(0,               // no rotation
                      G4ThreeVector(), // at (0,0,0)
                      logicEnv,        // its logical volume
                      "Envelope",      // its name
                      logicWorld,      // its mother  volume
                      false,           // no boolean operation
                      0,               // copy number
                      checkOverlaps);  // overlaps checking

    //
    // Shape 1，材料是PMMA，中心位置（0,0,3.1）
    //
    G4Material *shape1_mat = nist->FindOrBuildMaterial("PMMA");
    //这种写法可以，还有种更简单的写法，直接把上面新建材料时的指针fPMMA填入logicShape1中，对logicShape7也可以如此
    G4ThreeVector pos1 = G4ThreeVector(0, 0 * mm, 3.1 * mm);

    //  shape1的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4double shape1_pRMin = 0. * mm, shape1_pRMax = 60. * mm;
    G4double shape1_pDz = 1. * mm;
    G4double shape1_pSPhi = 0. * deg, shape1_pDPhi = 360. * deg;
    G4Tubs *solidShape1 =
        new G4Tubs("Shape1",
                   shape1_pRMin, shape1_pRMax, shape1_pDz, shape1_pSPhi, shape1_pDPhi);

    G4LogicalVolume *logicShape1 =
        new G4LogicalVolume(solidShape1, // its solid
                            shape1_mat,  // its material
                            "Shape1");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos1,           // at position
                      logicShape1,    // its logical volume
                      "Shape1",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 2的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape2_mat = nist->FindOrBuildMaterial("G4_AIR");
    G4ThreeVector pos2 = G4ThreeVector(0, 0 * mm, 1.8 * mm);

    G4double shape2_pRMin = 0. * mm, shape2_pRMax = 60. * mm;
    G4double shape2_pDz = 0.3 * mm;
    G4double shape2_pSPhi = 0. * deg, shape2_pDPhi = 360. * deg;
    G4Tubs *solidShape2 =
        new G4Tubs("Shape2",                                                            // its name
                   shape2_pRMin, shape2_pRMax, shape2_pDz, shape2_pSPhi, shape2_pDPhi); // its size

    G4LogicalVolume *logicShape2 =
        new G4LogicalVolume(solidShape2, // its solid
                            shape2_mat,  // its material
                            "Shape2");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos2,           // at position
                      logicShape2,    // its logical volume
                      "Shape2",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 3的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape3_mat = nist->FindOrBuildMaterial("G4_Al");
    G4ThreeVector pos3 = G4ThreeVector(0, 0 * mm, 1 * mm);

    G4double shape3_pRMin = 0. * mm, shape3_pRMax = 60. * mm;
    G4double shape3_pDz = 0.5 * mm;
    G4double shape3_pSPhi = 0. * deg, shape3_pDPhi = 360. * deg;
    G4Tubs *solidShape3 =
        new G4Tubs("Shape3",                                                            // its name
                   shape3_pRMin, shape3_pRMax, shape3_pDz, shape3_pSPhi, shape3_pDPhi); // its size

    G4LogicalVolume *logicShape3 =
        new G4LogicalVolume(solidShape3, // its solid
                            shape3_mat,  // its material
                            "Shape3");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos3,           // at position
                      logicShape3,    // its logical volume
                      "Shape3",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 4的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape4_mat = nist->FindOrBuildMaterial("G4_AIR");
    G4ThreeVector pos4 = G4ThreeVector(0, 0 * mm, 0 * mm);

    G4double shape4_pRMin = 0. * mm, shape4_pRMax = 60. * mm;
    G4double shape4_pDz = 0.5 * mm;
    G4double shape4_pSPhi = 0. * deg, shape4_pDPhi = 360. * deg;
    G4Tubs *solidShape4 =
        new G4Tubs("Shape4",                                                            // its name
                   shape4_pRMin, shape4_pRMax, shape4_pDz, shape4_pSPhi, shape4_pDPhi); // its size

    G4LogicalVolume *logicShape4 =
        new G4LogicalVolume(solidShape4, // its solid
                            shape4_mat,  // its material
                            "Shape4");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos4,           // at position
                      logicShape4,    // its logical volume
                      "Shape4",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 5的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape5_mat = nist->FindOrBuildMaterial("G4_Al");
    G4ThreeVector pos5 = G4ThreeVector(0, 0 * mm, -1 * mm);

    G4double shape5_pRMin = 0. * mm, shape5_pRMax = 60. * mm;
    G4double shape5_pDz = 0.5 * mm;
    G4double shape5_pSPhi = 0. * deg, shape5_pDPhi = 360. * deg;
    G4Tubs *solidShape5 =
        new G4Tubs("Shape5",                                                            // its name
                   shape5_pRMin, shape5_pRMax, shape5_pDz, shape5_pSPhi, shape5_pDPhi); // its size

    G4LogicalVolume *logicShape5 =
        new G4LogicalVolume(solidShape5, // its solid
                            shape5_mat,  // its material
                            "Shape5");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos5,           // at position
                      logicShape5,    // its logical volume
                      "Shape5",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 6的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape6_mat = nist->FindOrBuildMaterial("G4_AIR");
    G4ThreeVector pos6 = G4ThreeVector(0, 0 * mm, -1.8 * mm);

    G4double shape6_pRMin = 0. * mm, shape6_pRMax = 60. * mm;
    G4double shape6_pDz = 0.3 * mm;
    G4double shape6_pSPhi = 0. * deg, shape6_pDPhi = 360. * deg;
    G4Tubs *solidShape6 =
        new G4Tubs("Shape6",                                                            // its name
                   shape6_pRMin, shape6_pRMax, shape6_pDz, shape6_pSPhi, shape6_pDPhi); // its size

    G4LogicalVolume *logicShape6 =
        new G4LogicalVolume(solidShape6, // its solid
                            shape6_mat,  // its material
                            "Shape6");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos6,           // at position
                      logicShape6,    // its logical volume
                      "Shape6",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking

    //  Shape 7的参数（pRMin内半径，pRMax外半径，pDz z轴方向的半长值，pSPhi圆周起始位置弧度值，pDPhi圆周终止位置弧度值
    //  圆柱体的英文cylinder

    G4Material *shape7_mat = nist->FindOrBuildMaterial("PMMA");
    G4ThreeVector pos7 = G4ThreeVector(0, 0 * mm, -3.1 * mm);

    G4double shape7_pRMin = 0. * mm, shape7_pRMax = 60. * mm;
    G4double shape7_pDz = 1 * mm;
    G4double shape7_pSPhi = 0. * deg, shape7_pDPhi = 360. * deg;
    G4Tubs *solidShape7 =
        new G4Tubs("Shape7",                                                            // its name
                   shape7_pRMin, shape7_pRMax, shape7_pDz, shape7_pSPhi, shape7_pDPhi); // its size

    G4LogicalVolume *logicShape7 =
        new G4LogicalVolume(solidShape7, // its solid
                            shape7_mat,  // its material
                            "Shape7");   // its name

    new G4PVPlacement(0,              // no rotation
                      pos7,           // at position
                      logicShape7,    // its logical volume
                      "Shape7",       // its name
                      logicEnv,       // its mother  volume
                      false,          // no boolean operation
                      0,              // copy number
                      checkOverlaps); // overlaps checking             、

    // Set Shape4 as scoring volume
    //
    fScoringVolume = logicShape4;

    //
    // always return the physical World
    //
    return physWorld;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
