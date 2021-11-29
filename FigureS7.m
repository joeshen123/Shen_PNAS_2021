%FigureS7a: AKT1 PH binding Comparison Iso (0 mOsm) vs Hypo (240 mOsm)

PH_Iso=AKT_PH_Iso_Hypo.NormalizedGFPintensity(find(AKT_PH_Iso_Hypo.OsmolaritymOsm ==0));
PH_Hypo=AKT_PH_Iso_Hypo.NormalizedGFPintensity(find(AKT_PH_Iso_Hypo.OsmolaritymOsm ==240));

Mat_PH=padcat(PH_Iso, PH_Hypo);
figure(36), dotplot(Mat_PH,0.1, 0.05);

[h,p] = ttest2(PH_Iso,PH_Hypo);

%FigureS7b: AKT1 PH binding after GUV rupture

figure(37)
set(figure(37),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(AKT_PH_Rupture.TimePoint,AKT_PH_Rupture.radius_micron,'r')
yyaxis left
plot(AKT_PH_Rupture.TimePoint,AKT_PH_Rupture.NormalizedGFPintensity,'k')
ylim([0,50])