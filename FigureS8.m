%Figure S8a (Left Panel) : Arfgap1 ALPs binding isotherm

%Langmuir model
figure(12);

% DPPC +16% PS
[fit_Alps_DPPCPS_Lm_0mOsm,gof_Alps_DPPCPS_Lm_0mOsm]=FitLangmuir(Alps_DPPCPS_Lm,1:1043,0,'kp','--','w');
fitRes_Alps_DPPCPS_Lm_0mOsm=coeffvalues(fit_Alps_DPPCPS_Lm_0mOsm);
fitErr_Alps_DPPCPS_Lm_0mOsm=confint(fit_Alps_DPPCPS_Lm_0mOsm);

[fit_Alps_DPPCPS_Lm_240mOsm,gof_Alps_DPPCPS_Lm_240mOsm]=FitLangmuir(Alps_DPPCPS_Lm,1044:1579,1,'kp','-','w');
fitRes_Alps_DPPCPS_Lm_240mOsm=coeffvalues(fit_Alps_DPPCPS_Lm_240mOsm);
fitErr_Alps_DPPCPS_Lm_240mOsm=confint(fit_Alps_DPPCPS_Lm_240mOsm);

%Pure DPPC

[fit_Alps_DPPCpure_iso_Lm,gof_Alps_DPPCpure_iso_Lm]=FitLangmuir(Alps_DPPCpure_iso_Lm,1:227,1,'kp','--','g');
fitRes_Alps_DPPCpure_iso_Lm=coeffvalues(fit_Alps_DPPCpure_iso_Lm);
fitErr_Alps_DPPCpure_iso_Lm=confint(fit_Alps_DPPCpure_iso_Lm);
fitRes_Alps_DPPCpure_iso_Lm_Ca=coeffvalues(fit_Alps_DPPCpure_iso_Lm_Ca);
fitErr_Alps_DPPCpure_iso_Lm_Ca=confint(fit_Alps_DPPCpure_iso_Lm_Ca);

[fit_Alps_DPPCpure_hypo_Lm,gof_Alps_DPPCpure_hypo_Lm]=FitLangmuir(Alps_DPPCpure_hypo_Lm,1:457,1,'kp','-','g');
fitRes_Alps_DPPCpure_hypo_Lm=coeffvalues(fit_Alps_DPPCpure_hypo_Lm);
fitErr_Alps_DPPCpure_hypo_Lm=confint(fit_Alps_DPPCpure_hypo_Lm);

ylim([0, 70]);
xlim([0, 600]);
%Barplot Bmax

figure(13);
bar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(1),'w');
errorbar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(1),fitErr_Alps_DPPCPS_Lm_0mOsm(1,1)-fitRes_Alps_DPPCPS_Lm_0mOsm(1),fitRes_Alps_DPPCPS_Lm_0mOsm(1)-fitErr_Alps_DPPCPS_Lm_0mOsm(2,1),'kp');
errorbar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(1),fitErr_Alps_DPPCPS_Lm_240mOsm(1,1)-fitRes_Alps_DPPCPS_Lm_240mOsm(1),fitRes_Alps_DPPCPS_Lm_240mOsm(1)-fitErr_Alps_DPPCPS_Lm_240mOsm(2,1),'kp');

bar(3,fitRes_Alps_DPPCpure_iso_Lm(1),'w','LineStyle','--');
bar(4,fitRes_Alps_DPPCpure_hypo_Lm(1),'w');
errorbar(3,fitRes_Alps_DPPCpure_iso_Lm(1),fitErr_Alps_DPPCpure_iso_Lm(1,1)-fitRes_Alps_DPPCpure_iso_Lm(1),fitRes_Alps_DPPCpure_iso_Lm(1)-fitErr_Alps_DPPCpure_iso_Lm(2,1),'kp','MarkerFaceColor','g');
errorbar(4,fitRes_Alps_DPPCpure_hypo_Lm(1),fitErr_Alps_DPPCpure_hypo_Lm(1,1)-fitRes_Alps_DPPCpure_hypo_Lm(1),fitRes_Alps_DPPCpure_hypo_Lm(1)-fitErr_Alps_DPPCpure_hypo_Lm(2,1),'kp','MarkerFaceColor','g');

%Barplot Kd

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

% Barplot h

figure(15);
bar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(3),'w','LineStyle','--'),hold
bar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(3),'w');
errorbar(1,fitRes_Alps_DPPCPS_Lm_0mOsm(3),fitErr_Alps_DPPCPS_Lm_0mOsm(1,3)-fitRes_Alps_DPPCPS_Lm_0mOsm(3),fitRes_Alps_DPPCPS_Lm_0mOsm(3)-fitErr_Alps_DPPCPS_Lm_0mOsm(2,3),'kp');
errorbar(2,fitRes_Alps_DPPCPS_Lm_240mOsm(3),fitErr_Alps_DPPCPS_Lm_240mOsm(1,3)-fitRes_Alps_DPPCPS_Lm_240mOsm(3),fitRes_Alps_DPPCPS_Lm_240mOsm(3)-fitErr_Alps_DPPCPS_Lm_240mOsm(2,3),'kp');

bar(3,fitRes_Alps_DPPCpure_iso_Lm(3),'w','LineStyle','--');
bar(4,fitRes_Alps_DPPCpure_hypo_Lm(3),'w');
errorbar(3,fitRes_Alps_DPPCpure_iso_Lm(3),fitErr_Alps_DPPCpure_iso_Lm(1,3)-fitRes_Alps_DPPCpure_iso_Lm(3),fitRes_Alps_DPPCpure_iso_Lm(3)-fitErr_Alps_DPPCpure_iso_Lm(2,3),'kp','MarkerFaceColor','g');
errorbar(4,fitRes_Alps_DPPCpure_hypo_Lm(3),fitErr_Alps_DPPCpure_hypo_Lm(1,3)-fitRes_Alps_DPPCpure_hypo_Lm(3),fitRes_Alps_DPPCpure_hypo_Lm(3)-fitErr_Alps_DPPCpure_hypo_Lm(2,3),'kp','MarkerFaceColor','g');