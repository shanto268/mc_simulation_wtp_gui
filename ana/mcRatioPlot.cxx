{
   std::map<std::string, TH1D*> histo1D;
   std::map<std::string, TH1D*>::iterator histo1Diter;

   std::map<std::string, TH2D*> histo2D;
   std::map<std::string, TH2D*>::iterator histo2Diter;

   TFile *f1 = new TFile("hist6_45deg_1026_away.root","READ");
   TFile *f2 = new TFile("hist6_45deg_1026_32ftwater.root","READ");

   TH1D* x9away=(TH1D*)f1->Get("xZ9");
   TH1D* x9tank=(TH1D*)f2->Get("xZ9");

   TH1D* y9away=(TH1D*)f1->Get("yZ9");
   TH1D* y9tank=(TH1D*)f2->Get("yZ9");

   TH2D* xy9away=(TH2D*)f1->Get("xyZ9");
   TH2D* xy9tank=(TH2D*)f2->Get("xyZ9");

   int nx1d=x9away->GetNbinsX();
   double xmin1d=-10000.0;
   double xmax1d= 10000.0;
   double dx=(xmax1d-xmin1d)/double(nx1d);
   cout<<"nx1d="<<nx1d<<"    dx="<<dx<<endl;

   TH1D* plotXtank=new TH1D("xTank","X Tank",nx1d,xmin1d,xmax1d);
   for (int ix=1; ix<nx1d; ix++) {
      double wt=x9tank->GetBinContent(ix);
      double x=xmax1d-dx*ix+dx/2.0;
      plotXtank->Fill(x,wt);
   }
   
   // xy9tank->Divide(xy9away); 

   int nx=xy9away->GetNbinsX();
   int ny=xy9away->GetNbinsY();
   cout<<"nx="<<nx<<"   ny="<<ny<<endl;

//   TH2D* plotA=new TH2D("plotA","MC (Water 20m)",15,-15.0,15.0,15,-15.0,15.0);
   TH2D* plotA=new TH2D("plotA","MC (Water 32ft)",12,-15.0,15.0,12,-15.0,15.0);

   for (int ix=1; ix<nx; ix++) {
      for(int iy=1; iy<ny; iy++) {
         double wtA=xy9away->GetBinContent(ix,iy);
         double wtT=xy9tank->GetBinContent(nx-ix+2,iy);
         double wt=wtT/wtA;
         if(wt>1.1) wt=1.1;
         // double x=-50.0+2.0*ix-2.0/2.0;
         // double y=-50.0+2.0*iy-2.0/2.0;
         double x=2.5*(ix-26)-2.5/2.0;
         double y=2.5*(iy-25)-2.5/2.0;
         plotA->Fill(x,y,wt);
      }
   }

  plotA->GetXaxis()->SetTitle("X (m)");
  plotA->GetYaxis()->SetTitle("Y (m)");

}

