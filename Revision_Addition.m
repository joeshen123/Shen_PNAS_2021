
%Supplemental code
%{
% 1) Pla2-C2 DPPC/PS Iso vs Hypo Calcium Hill Original
% 1.1) DPPC/PS GUV
[fit_Pla2_DPPCPS_Hill_100mOsm,gof_Pla2_DPPCPS_Hill_100mOsm]=FitHill(Pla2_DPPCPS_Hill,1:414,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm,gof_Pla2_DPPCPS_Hill_240mOsm]=FitHill(Pla2_DPPCPS_Hill,414:902,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Hill_100mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_100mOsm);
fitErr_Pla2_DPPCPS_Hill_100mOsm=confint(fit_Pla2_DPPCPS_Hill_100mOsm);
fitRes_Pla2_DPPCPS_Hill_240mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_240mOsm);
fitErr_Pla2_DPPCPS_Hill_240mOsm=confint(fit_Pla2_DPPCPS_Hill_240mOsm);

%cPla2 C2 DPPC/PS Iso vs Hypo Calcium Hill Repeat
[fit_Pla2_DPPCPS_Hill_100mOsm_1,gof_Pla2_DPPCPS_Hill_100mOsm_1]=FitHill(Pla2_DPPC_PS_Hill_Repeat,1:916,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm_1,gof_Pla2_DPPCPS_Hill_240mOsm_1]=FitHill(Pla2_DPPC_PS_Hill_Repeat,917:1617,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Hill_100mOsm_1=coeffvalues(fit_Pla2_DPPCPS_Hill_100mOsm_1);
fitErr_Pla2_DPPCPS_Hill_100mOsm_1=confint(fit_Pla2_DPPCPS_Hill_100mOsm_1);
fitRes_Pla2_DPPCPS_Hill_240mOsm_1=coeffvalues(fit_Pla2_DPPCPS_Hill_240mOsm_1);
fitErr_Pla2_DPPCPS_Hill_240mOsm_1=confint(fit_Pla2_DPPCPS_Hill_240mOsm_1);

%Human cPla2 C2 DPPC/PS Iso vs Hypo Calcium Hill 
[fit_Pla2_DPPCPS_Hill_100mOsm,gof_Pla2_DPPCPS_Hill_100mOsm]=FitHill(hs_Pla2_DPPCPS_Hill,1:1689,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm,gof_Pla2_DPPCPS_Hill_240mOsm]=FitHill(hs_Pla2_DPPCPS_Hill,1690:2519,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Hill_100mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_100mOsm);
fitErr_Pla2_DPPCPS_Hill_100mOsm=confint(fit_Pla2_DPPCPS_Hill_100mOsm);
fitRes_Pla2_DPPCPS_Hill_240mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_240mOsm);
fitErr_Pla2_DPPCPS_Hill_240mOsm=confint(fit_Pla2_DPPCPS_Hill_240mOsm);

%Plot Ca1/2 for Human cPla2 C2 Hill
figure(3);
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitRes_Pla2_DPPCPS_Hill_100mOsm(1)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,1),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitRes_Pla2_DPPCPS_Hill_240mOsm(1)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,1),'ko')

% plot H
figure(4)
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitRes_Pla2_DPPCPS_Hill_100mOsm(2)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitRes_Pla2_DPPCPS_Hill_240mOsm(2)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,2),'ko')

%Human cPla2 C2 DPPC/PS Iso vs Hypo Langmuir
[fit_Pla2_DPPCPS_Lm1_0mOsm,gof_Pla2_DPPCPS_Lm1_0mOsm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1:1350,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_all_Lm,gof_Pla2_DPPC_240mOsm_all_Lm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1351:2037,1,'ko','-','w');
fitRes_Pla2_DPPCPS_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitErr_Pla2_DPPCPS_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

%Plot Kd  Human cPla2 C2 Iso/Hypo Langmuir
bar(1,fitRes_Pla2_DPPCPS_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_240mOsm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_0mOsm(2),fitErr_Pla2_DPPCPS_0mOsm(1,2)-fitRes_Pla2_DPPCPS_0mOsm(2),fitRes_Pla2_DPPCPS_0mOsm(2)-fitErr_Pla2_DPPCPS_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_240mOsm(2),fitErr_Pla2_DPPCPS_240mOsm(1,2)-fitRes_Pla2_DPPCPS_240mOsm(2),fitRes_Pla2_DPPCPS_240mOsm(2)-fitErr_Pla2_DPPCPS_240mOsm(2,2),'ko');
set(gca,'YScale','log')

%Plot Bmax  Human cPla2 C2 Iso/Hypo Langmuir
bar(1,fitRes_Pla2_DPPCPS_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_240mOsm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_0mOsm(2),fitErr_Pla2_DPPCPS_0mOsm(1,2)-fitRes_Pla2_DPPCPS_0mOsm(2),fitRes_Pla2_DPPCPS_0mOsm(2)-fitErr_Pla2_DPPCPS_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_240mOsm(2),fitErr_Pla2_DPPCPS_240mOsm(1,2)-fitRes_Pla2_DPPCPS_240mOsm(2),fitRes_Pla2_DPPCPS_240mOsm(2)-fitErr_Pla2_DPPCPS_240mOsm(2,2),'ko');

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Repeat 
[fit_Pla2_DPPCPS_0mOsm,gof_Pla2_DPPCPS_0mOsm]=FitLangmuir(Pla2_DPPCPS_Lm4,1:643,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm,gof_Pla2_DPPC_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm4,644:1410,1,'ko','-','w');
%fitRes_Pla2_DPPCPS_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitErr_Pla2_DPPCPS_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
%fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Repeat 1
[fit_Pla2_DPPCPS_0mOsm_1,gof_Pla2_DPPCPS_Lm1_0mOsm_1]=FitLangmuir(Pla2_DPPCPS_Lm5,1:1108,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_1,gof_Pla2_DPPC_240mOsm_1]=FitLangmuir(Pla2_DPPCPS_Lm5,1109:1885,1,'ko','-','w');
%fitRes_Pla2_DPPCPS_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitErr_Pla2_DPPCPS_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
%fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);


%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Original
[fit_Pla2_DPPCPS_0mOsm_2,gof_Pla2_DPPCPS_Lm1_0mOsm_2]=FitLangmuir(Pla2_DPPCPS_Lm1,1:719,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_2,gof_Pla2_DPPC_240mOsm_2]=FitLangmuir(Pla2_DPPCPS_Lm1,720:1189,1,'ko','-','w');
%fitRes_Pla2_DPPCPS_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitErr_Pla2_DPPCPS_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
%fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
%fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);


%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Original2
[fit_Pla2_DPPC_240mOsm_3,gof_Pla2_DPPC_240mOsm_3]=FitLangmuir(Pla2_DPPCPS_Lm2,1:461,1,'ko','-','w');
%fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
%fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Original3
[fit_Pla2_DPPC_240mOsm_4,gof_Pla2_DPPC_240mOsm_4]=FitLangmuir(Pla2_DPPCPS_Lm3,1:389,1,'ko','-','w');
%fitRes_Pla2_DPPCPS_240mOsm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
%fitErr_Pla2_DPPCPS_240mOsm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir (500um Ca)
figure(7);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,1:581,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,582:971,1,'ko','-','w');
fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Repeat (500um Ca)
figure(7);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm_1,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm1,1:515,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm_1,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm1,515:1120,1,'ko','-','w');
fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm_1=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_0mOsm_1);
fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm_1=confint(fit_Pla2_DPPC_500uMCa_Lm_0mOsm_1);
fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm_1=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_240mOsm_1);
fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm_1=confint(fit_Pla2_DPPC_500uMCa_Lm_240mOsm_1);

%FLIM Hypo vs Iso Data (0 mOsm vs 100 mOsm)
GUVIso_FLIM=FLIM_Hypo_Iso.FluorescenceLifeTimens(find(FLIM_Hypo_Iso.OsmolaritymOsm==0));
GUVIHypo_FLIM=FLIM_Hypo_Iso.FluorescenceLifeTimens(find(FLIM_Hypo_Iso.OsmolaritymOsm==100));

Mat_FLIM=padcat(GUVIso_FLIM, GUVIHypo_FLIM);
figure(36), dotplot(Mat_FLIM,0.1, 0.01);
ttest2(GUVIso_FLIM,GUVIHypo_FLIM);
%FLIM Hypo Rupture (100mOsm)
figure(37)
set(figure(37),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(FLIM_Rupture.TimePoint,FLIM_Rupture.radius_micron,'r')
yyaxis left
plot(FLIM_Rupture.TimePoint,FLIM_Rupture.FluorescenceLifeTimens,'k')


% Hela Nucleus Pla2 C2 Calcium Hill Fitting
figure(16);
[fit_cPla2_Nucleus_Hill_noPVP,gof_cPla2_Nucleus_Hill_noPVP]=FitHill(cPla2_Nucleus_Hill_Hela,1:1851,0,'ko','-','k');
[fit_cPla2_Nucleus_Hill_highPVP,gof_cPla2_Nucleus_Hill_highPVP]=FitHill(cPla2_Nucleus_Hill_Hela,1852:4383,1,'ko','--','k');

fitRes_cPla2_Nucleus_Hill_noPVP=coeffvalues(fit_cPla2_Nucleus_Hill_noPVP);
fitErr_cPla2_Nucleus_Hill_noPVP=confint(fit_cPla2_Nucleus_Hill_noPVP);
fitRes_cPla2_Nucleus_Hill_highPVP=coeffvalues(fit_cPla2_Nucleus_Hill_highPVP);
fitErr_cPla2_Nucleus_Hill_highPVP=confint(fit_cPla2_Nucleus_Hill_highPVP);
%}


%Human cPla2 C2 DPPC/PS Iso vs Hypo Langmuir
[fit_hsPla2_DPPCPS_Lm1_0mOsm,gof_hsPla2_DPPCPS_Lm1_0mOsm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1:1350,0,'ko','--','w');
[fit_hsPla2_DPPC_240mOsm_all_Lm,gof_hsPla2_DPPC_240mOsm_all_Lm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1351:2037,1,'ko','-','w');
fitRes_hsPla2_DPPCPS_0mOsm=coeffvalues(fit_hsPla2_DPPCPS_Lm1_0mOsm);
fitErr_hsPla2_DPPCPS_0mOsm=confint(fit_hsPla2_DPPCPS_Lm1_0mOsm);
fitRes_hsPla2_DPPCPS_240mOsm=coeffvalues(fit_hsPla2_DPPC_240mOsm_all_Lm);
fitErr_hsPla2_DPPCPS_240mOsm=confint(fit_hsPla2_DPPC_240mOsm_all_Lm);


%D3487K vs WT Binding
figure(28)
ca = gca;
[AvE1,Std1,t]=GUVadsoprtionVstime(D3487_WT);
[AvE2,Std2]=GUVadsoprtionVstime(D3487K);

H = shadedErrorBar(t,AvE1,Std1,'lineProps','g');
H = shadedErrorBar(t,AvE2,Std2,'lineProps','r');


%D3487R vs WT Binding
figure(28)
ca = gca;
[AvE1,Std1,t]=GUVadsoprtionVstime(D3487_WT);
[AvE2,Std2]=GUVadsoprtionVstime(D3487R);

H = shadedErrorBar(t,AvE1,Std1,'lineProps','g');
H = shadedErrorBar(t,AvE2,Std2,'lineProps','r');

%AKT PH Iso vs Hypo (0 mOsm vs 240 mOsm)
PH_Iso=AKT_PH_Iso_Hypo.NormalizedGFPintensity(find(AKT_PH_Iso_Hypo.OsmolaritymOsm ==0));
PH_Hypo=AKT_PH_Iso_Hypo.NormalizedGFPintensity(find(AKT_PH_Iso_Hypo.OsmolaritymOsm ==240));

Mat_PH=padcat(PH_Iso, PH_Hypo);
figure(36), dotplot(Mat_PH,0.1, 0.05);

[p,h] = ttest2(PH_Iso,PH_Hypo)
