#include "Riostream.h"
void basic() {undefined

//??.dat?????
   TString dir = gROOT->GetTutorialDir();
   dir.Append("/tree/");
   dir.ReplaceAll("/./","/");

// ??.dat??
   ifstream in;
   in.open(Form("%sbasic.dat",dir.Data()));

// ??????????????????

   Float_t x,y,z;
   Int_t nlines = 0;

//??.root??
   auto f = TFile::Open("testem7.root","h1");
   TH1F h1("h1","x distribution",100,-4,4);
   TNtuple ntuple("ntuple","data from ascii file","x:y:z");

//????????.root???

   while (1) {undefined
      in >> x >> y >> z;
      if (!in.good()) break;
      if (nlines < 5) printf("x=%8f, y=%8f, z=%8f\n",x,y,z);
      h1.Fill(x);
      ntuple.Fill(x,y,z);
      nlines++;
   }
   printf(" found %d points\n",nlines);

   in.close();

   f->Write();
}
