%Figure S8a (Left Panel) : Arfgap1 ALPs binding isotherm

%Langmuir model
figure(12);

% DPPC +16% PS
[fit_Alps_DPPCPS_Lm_0mOsm,gof_Alps_DPPCPS_Lm_0mOsm]=FitLangmuir_ALPS(Alps_DPPCPS_Lm,1:1043,0,'kp','--','w');
fitRes_Alps_DPPCPS_Lm_0mOsm=coeffvalues(fit_Alps_DPPCPS_Lm_0mOsm);
fitErr_Alps_DPPCPS_Lm_0mOsm=confint(fit_Alps_DPPCPS_Lm_0mOsm);

[fit_Alps_DPPCPS_Lm_240mOsm,gof_Alps_DPPCPS_Lm_240mOsm]=FitLangmuir_ALPS(Alps_DPPCPS_Lm,1044:1579,1,'kp','-','w');
fitRes_Alps_DPPCPS_Lm_240mOsm=coeffvalues(fit_Alps_DPPCPS_Lm_240mOsm);
fitErr_Alps_DPPCPS_Lm_240mOsm=confint(fit_Alps_DPPCPS_Lm_240mOsm);

%Pure DPPC

[fit_Alps_DPPCpure_iso_Lm,gof_Alps_DPPCpure_iso_Lm]=FitLangmuir_ALPS(Alps_DPPCpure_iso_Lm,1:227,1,'kp','--','g');
fitRes_Alps_DPPCpure_iso_Lm=coeffvalues(fit_Alps_DPPCpure_iso_Lm);
fitErr_Alps_DPPCpure_iso_Lm=confint(fit_Alps_DPPCpure_iso_Lm);
fitRes_Alps_DPPCpure_iso_Lm_Ca=coeffvalues(fit_Alps_DPPCpure_iso_Lm);
fitErr_Alps_DPPCpure_iso_Lm_Ca=confint(fit_Alps_DPPCpure_iso_Lm);

[fit_Alps_DPPCpure_hypo_Lm,gof_Alps_DPPCpure_hypo_Lm]=FitLangmuir_ALPS(Alps_DPPCpure_hypo_Lm,1:457,1,'kp','-','g');
fitRes_Alps_DPPCpure_hypo_Lm=coeffvalues(fit_Alps_DPPCpure_hypo_Lm);
fitErr_Alps_DPPCpure_hypo_Lm=confint(fit_Alps_DPPCpure_hypo_Lm);

%Figure S8a (Right Panel): Barplot Bmax

figure(13);
bar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(1),'w');
errorbar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(1),fitErr_Alps_DPPCPS_Lm_0mOsm(1,1)-fitRes_Alps_DPPCPS_Lm_0mOsm(1),fitRes_Alps_DPPCPS_Lm_0mOsm(1)-fitErr_Alps_DPPCPS_Lm_0mOsm(2,1),'kp');
errorbar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(1),fitErr_Alps_DPPCPS_Lm_240mOsm(1,1)-fitRes_Alps_DPPCPS_Lm_240mOsm(1),fitRes_Alps_DPPCPS_Lm_240mOsm(1)-fitErr_Alps_DPPCPS_Lm_240mOsm(2,1),'kp');

bar(3,fitRes_Alps_DPPCpure_iso_Lm(1),'w','LineStyle','--');
bar(4,fitRes_Alps_DPPCpure_hypo_Lm(1),'w');
errorbar(3,fitRes_Alps_DPPCpure_iso_Lm(1),fitErr_Alps_DPPCpure_iso_Lm(1,1)-fitRes_Alps_DPPCpure_iso_Lm(1),fitRes_Alps_DPPCpure_iso_Lm(1)-fitErr_Alps_DPPCpure_iso_Lm(2,1),'kp','MarkerFaceColor','g');
errorbar(4,fitRes_Alps_DPPCpure_hypo_Lm(1),fitErr_Alps_DPPCpure_hypo_Lm(1,1)-fitRes_Alps_DPPCpure_hypo_Lm(1),fitRes_Alps_DPPCpure_hypo_Lm(1)-fitErr_Alps_DPPCpure_hypo_Lm(2,1),'kp','MarkerFaceColor','g');
ylim([0, 70]);
%Figure S8a (Right Panel): Barplot Kd

figure(14);
bar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(2),'w');
errorbar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(2),fitErr_Alps_DPPCPS_Lm_0mOsm(1,2)-fitRes_Alps_DPPCPS_Lm_0mOsm(2),fitRes_Alps_DPPCPS_Lm_0mOsm(2)-fitErr_Alps_DPPCPS_Lm_0mOsm(2,2),'kp');
errorbar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(2),fitErr_Alps_DPPCPS_Lm_240mOsm(1,2)-fitRes_Alps_DPPCPS_Lm_240mOsm(2),fitRes_Alps_DPPCPS_Lm_240mOsm(2)-fitErr_Alps_DPPCPS_Lm_240mOsm(2,2),'kp');

bar(3,fitRes_Alps_DPPCpure_iso_Lm(2),'w','LineStyle','--');
bar(4,fitRes_Alps_DPPCpure_hypo_Lm(2),'w');
errorbar(3,fitRes_Alps_DPPCpure_iso_Lm(2),fitErr_Alps_DPPCpure_iso_Lm(1,2)-fitRes_Alps_DPPCpure_iso_Lm(2),fitRes_Alps_DPPCpure_iso_Lm(2)-fitErr_Alps_DPPCpure_iso_Lm(2,2),'kp','MarkerFaceColor','g');
errorbar(4,fitRes_Alps_DPPCpure_hypo_Lm(2),fitErr_Alps_DPPCpure_hypo_Lm(1,2)-fitRes_Alps_DPPCpure_hypo_Lm(2),fitRes_Alps_DPPCpure_hypo_Lm(2)-fitErr_Alps_DPPCpure_hypo_Lm(2,2),'kp','MarkerFaceColor','g');

set(gca,'YScale','log')
ylim([10, 10^4]);
%Figure S8a (Right Panel): Barplot H

figure(15);
bar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(3),'w','LineStyle','--'),hold
bar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(3),'w');
errorbar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(3),fitErr_Alps_DPPCPS_Lm_0mOsm(1,3)-fitRes_Alps_DPPCPS_Lm_0mOsm(3),fitRes_Alps_DPPCPS_Lm_0mOsm(3)-fitErr_Alps_DPPCPS_Lm_0mOsm(2,3),'kp');
errorbar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(3),fitErr_Alps_DPPCPS_Lm_240mOsm(1,3)-fitRes_Alps_DPPCPS_Lm_240mOsm(3),fitRes_Alps_DPPCPS_Lm_240mOsm(3)-fitErr_Alps_DPPCPS_Lm_240mOsm(2,3),'kp');

bar(3,fitRes_Alps_DPPCpure_iso_Lm(3),'w','LineStyle','--');
bar(4,fitRes_Alps_DPPCpure_hypo_Lm(3),'w');
errorbar(3,fitRes_Alps_DPPCpure_iso_Lm(3),fitErr_Alps_DPPCpure_iso_Lm(1,3)-fitRes_Alps_DPPCpure_iso_Lm(3),fitRes_Alps_DPPCpure_iso_Lm(3)-fitErr_Alps_DPPCpure_iso_Lm(2,3),'kp','MarkerFaceColor','g');
errorbar(4,fitRes_Alps_DPPCpure_hypo_Lm(3),fitErr_Alps_DPPCpure_hypo_Lm(1,3)-fitRes_Alps_DPPCpure_hypo_Lm(3),fitRes_Alps_DPPCpure_hypo_Lm(3)-fitErr_Alps_DPPCpure_hypo_Lm(2,3),'kp','MarkerFaceColor','g');
ylim([0,7]);

%Figure S8b: Plot adsorption and desoprtion of Arfgap1 ALPS before and after GUV rupture
figure(38)
set(figure(38),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alps_GUV_Rupture.TimePointmin,Alps_GUV_Rupture.radius_micron,'r')
ylim([10,14])
yyaxis left
plot(Alps_GUV_Rupture.TimePointmin,Alps_GUV_Rupture.NormalizedGFPintensity,'k')
ylim([0,50])

%Figure S8c: %alps-mCherry first, blank solution (No fluoresence protein) after
figure(28)

[AvE1,Std1,t]=GUVadsoprtionVstime(AlpsmCh_first_no_cPla2eGFP);

shadedErrorBar(t,AvE1,Std1,'lineProps','r');

ax = gca;

ax.YColor = 'r';

ylim([0,15])
