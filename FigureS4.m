%FigureS4b: FLIM Hypo vs Iso Data (0 mOsm vs 100 mOsm)
GUVIso_FLIM=FLIM_Hypo_Iso.FluorescenceLifeTimens(find(FLIM_Hypo_Iso.OsmolaritymOsm==0));
GUVIHypo_FLIM=FLIM_Hypo_Iso.FluorescenceLifeTimens(find(FLIM_Hypo_Iso.OsmolaritymOsm==100));

Mat_FLIM=padcat(GUVIso_FLIM, GUVIHypo_FLIM);
figure(36), dotplot(Mat_FLIM,0.1, 0.01);
ttest2(GUVIso_FLIM,GUVIHypo_FLIM);

%FigureS4c:FLIM Hypo Rupture (100mOsm)
set(figure(37),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(FLIM_Rupture.TimePoint,FLIM_Rupture.radius_micron,'r')
yyaxis left
plot(FLIM_Rupture.TimePoint,FLIM_Rupture.FluorescenceLifeTimens,'k')
