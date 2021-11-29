% FigureS6a(Upper panel): cPla2 Total Langmuir
figure(6);
% 1) Pla2-C2
% 1.1) DPPC/PS, 20uM Ca2+
[fit_Pla2_DPPCPS_Lm1_0mOsm,gof_Pla2_DPPCPS_Lm1_0mOsm]=FitLangmuir(Pla2_DPPCPS_Lm1,1:719,0,'ko','--','w');
% [fit_Pla2_DPPCPS_Lm1_240mOsm,gof_Pla2_DPPCPS_Lm1_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm1,720:1190,1,'ko','-','w');
% [fit_Pla2_DPPCPS_Lm2_240mOsm,gof_Pla2_DPPCPS_Lm2_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm2,1:461,1,'ko','-','w');
% [fit_Pla2_DPPCPS_Lm3_240mOsm,gof_Pla2_DPPCPS_Lm3_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm3,1:389,1,'ko','-','w');
% [fit_Pla2Alox5Alox12_DPPCPS_Lm,gof_Pla2Alox5Alox12_DPPCPS_Lm]=FitLangmuir(Pla2Alox5Alox12_DPPCPS_Lm,1:497,1,'ko','-','w');
[fit_Pla2_DPPC_240mOsm_all_Lm,gof_Pla2_DPPC_240mOsm_all_Lm]=FitLangmuir(Pla2_DPPC_240mOsm_all_Lm,1:1817,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Lm1_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitErr_Pla2_DPPCPS_Lm1_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitRes_Pla2_DPPC_240mOsm_all_Lm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
fitErr_Pla2_DPPC_240mOsm_all_Lm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

% 1.15) hs cPla2 C2 DPPC/PS 20uM Ca2+
[fit_hs_Pla2_DPPCPS_Lm_0mOsm,gof_hs_Pla2_DPPCPS_Lm_0mOsm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1:1350,1,'kp','--','w');
[fit_hs_Pla2_DPPC_240mOsm_Lm,gof_hs_Pla2_DPPC_240mOsm_Lm]=FitLangmuir(hs_Pla2_DPPCPS_LM,1351:2037,1,'kp','-','w');
fitRes_hs_Pla2_DPPCPS_0mOsm=coeffvalues(fit_hs_Pla2_DPPCPS_Lm_0mOsm);
fitErr_hs_Pla2_DPPCPS_0mOsm=confint(fit_hs_Pla2_DPPCPS_Lm_0mOsm);
fitRes_hs_Pla2_DPPCPS_240mOsm=coeffvalues(fit_hs_Pla2_DPPC_240mOsm_Lm);
fitErr_hs_Pla2_DPPCPS_240mOsm=confint(fit_hs_Pla2_DPPC_240mOsm_Lm);


% 2) Pla2-C2 Y90F/V91F
% 2.1) DPPC/PS, 20uM Ca2+
figure(6);
[fit_Y90FV91F_DPPCPS_Lm2_240mOsm,gof_Y90FV91F_DPPCPS_Lm2_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm2,462:1094,1,'mo','-','w');
fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm=coeffvalues(fit_Y90FV91F_DPPCPS_Lm2_240mOsm);
fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm=confint(fit_Y90FV91F_DPPCPS_Lm2_240mOsm);

% 3) Pla2-C2 L32F/L33F
% 3.1) DPPC/PS, 20uM Ca2+
[fit_L32FL33F_DPPCPS_Lm2_240mOsm,gof_L32FL33F_DPPCPS_Lm2_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm2,1095:1895,1,'co','-','w');
fitRes_L32FL33F_DPPCPS_Lm2_240mOsm=coeffvalues(fit_L32FL33F_DPPCPS_Lm2_240mOsm);
fitErr_L32FL33F_DPPCPS_Lm2_240mOsm=confint(fit_L32FL33F_DPPCPS_Lm2_240mOsm);

% 4) Pla2-C2 Y90A/V91A
% 4.1) DPPC/PS, 20uM Ca2+
[fit_Y90AV91A_DPPCPS_Lm3_240mOsm,gof_Y90AV91A_DPPCPS_Lm3_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm3,390:696,1,'ro','-','w');
fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm=coeffvalues(fit_Y90AV91A_DPPCPS_Lm3_240mOsm);
fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm=confint(fit_Y90AV91A_DPPCPS_Lm3_240mOsm);

% 5) Pla2-C2 L32A/L33A
% 5.1) DPPC/PS, 20uM Ca2+
[fit_L32AL33A_DPPCPS_Lm3_240mOsm,gof_L32AL33A_DPPCPS_Lm3_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm3,697:1087,1,'bo','-','w');
fitRes_L32AL33A_DPPCPS_Lm3_240mOsm=coeffvalues(fit_L32AL33A_DPPCPS_Lm3_240mOsm);
fitErr_L32AL33A_DPPCPS_Lm3_240mOsm=confint(fit_L32AL33A_DPPCPS_Lm3_240mOsm);

% 6) Alox5a-PLAT
% 6.1) DPPC/PS, 20uM Ca2+
[fit_Alox5_DPPCPS_Lm,gof_Alox5_DPPCPS_Lm]=FitLangmuir(Pla2Alox5Alox12_DPPCPS_Lm,498:888,1,'ks','-','w');
fitRes_Alox5_DPPCPS_Lm=coeffvalues(fit_Alox5_DPPCPS_Lm);
fitErr_Alox5_DPPCPS_Lm=confint(fit_Alox5_DPPCPS_Lm);

% 7) Alox12-PLAT
% 7.1) DPPC/PS, 20uM Ca2+
[fit_Alox12_DPPCPS_Lm,gof_Alox12_DPPCPS_Lm]=FitLangmuir(Pla2Alox5Alox12_DPPCPS_Lm,889:1231,1,'k^','-','w');
fitRes_Alox12_DPPCPS_Lm=coeffvalues(fit_Alox12_DPPCPS_Lm);
fitErr_Alox12_DPPCPS_Lm=confint(fit_Alox12_DPPCPS_Lm);
ylim([0,70])

% FigureS6a(Middle panel): cPla2 Affinity different Lipid Composition
% 1.3) DPPC pure, 20 uM Ca2+
figure(8);
[fit_Pla2_DPPCpure_Lm_0mOsm,gof_Pla2_DPPCpure_Lm_0mOsm]=FitLangmuir(Pla2_DPPCpure_Lm,1:332,0,'ko','--','g');
[fit_Pla2_DPPCpure_Lm_240mOsm,gof_Pla2_DPPCpure_Lm_240mOsm]=FitLangmuir(Pla2_DPPCpure_Lm,333:1073,1,'ko','-','g');
fitRes_Pla2_DPPCpure_Lm_0mOsm=coeffvalues(fit_Pla2_DPPCpure_Lm_0mOsm);
fitErr_Pla2_DPPCpure_Lm_0mOsm=confint(fit_Pla2_DPPCpure_Lm_0mOsm);
fitRes_Pla2_DPPCpure_Lm_240mOsm=coeffvalues(fit_Pla2_DPPCpure_Lm_240mOsm);
fitErr_Pla2_DPPCpure_Lm_240mOsm=confint(fit_Pla2_DPPCpure_Lm_240mOsm);

% 1.4) DOPC, 20uM Ca2+
[fit_Pla2_DOPC_Lm_0mOsm,gof_Pla2_DOPC_Lm_0mOsm]=FitLangmuir(Pla2_DOPC_Lm,1:451,1,'ko','--','y');
[fit_Pla2_DOPC_Lm_240mOsm,gof_Pla2_DOPC_Lm_240mOsm]=FitLangmuir(Pla2_DOPC_Lm,452:1132,1,'ko','-','y');
fitRes_Pla2_DOPC_Lm_0mOsm=coeffvalues(fit_Pla2_DOPC_Lm_0mOsm);
fitErr_Pla2_DOPC_Lm_0mOsm=confint(fit_Pla2_DOPC_Lm_0mOsm);
fitRes_Pla2_DOPC_Lm_240mOsm=coeffvalues(fit_Pla2_DOPC_Lm_240mOsm);
fitErr_Pla2_DOPC_Lm_240mOsm=confint(fit_Pla2_DOPC_Lm_240mOsm);

% 1.5) DOPC/DOG, 20uM Ca2+
[fit_Pla2_DOPCDOG_Lm_0mOsm,gof_Pla2_DOPCDOG_Lm_0mOsm]=FitLangmuir(Pla2_DOPCDOG_Lm,1:397,1,'ko','--','r');
[fit_Pla2_DOPCDOG_Lm_240mOsm,gof_fit_Pla2_DOPCDOG_Lm_240mOsm]=FitLangmuir(Pla2_DOPCDOG_Lm,398:719,1,'ko','-','r');
fitRes_Pla2_DOPCDOG_Lm_0mOsm=coeffvalues(fit_Pla2_DOPCDOG_Lm_0mOsm);
fitErr_Pla2_DOPCDOG_Lm_0mOsm=confint(fit_Pla2_DOPCDOG_Lm_0mOsm);
fitRes_Pla2_DOPCDOG_Lm_240mOsm=coeffvalues(fit_Pla2_DOPCDOG_Lm_240mOsm);
fitErr_Pla2_DOPCDOG_Lm_240mOsm=confint(fit_Pla2_DOPCDOG_Lm_240mOsm); 

ylim([0,70])

%FigureS6a(Bottom panel): High Calcium Affinity
% 1) Alox5
% 6.2) DPPC/PS, 200uM Ca2+
figure(8);
[fit_Alox5_DPPC_200uMCa_Lm_0mOsm,gof_Alox5_DPPC_200uMCa_Lm_0mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,1:473,0,'ks','--','w');
[fit_Alox5_DPPC_200uMCa_Lm_240mOsm,gof_Alox5_DPPC_200uMCa_Lm_240mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,473:810,1,'ks','-','w');
fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);


% 7.2)Alox12 DPPC/PS, 200uM Ca2+

[fit_Alox12_DPPC_200uMCa_Lm_0mOsm,gof_Alox12_DPPC_200uMCa_Lm_0mOsm]=FitLangmuir(Alox12_DPPC_200uMCa_Lm,1:306,1,'k^','--','w');
[fit_Alox12_DPPC_200uMCa_Lm_240mOsm,gof_Alox12_DPPC_200uMCa_Lm_240mOsm]=FitLangmuir(Alox12_DPPC_200uMCa_Lm,307:615,1,'k^','-','w');
fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm=coeffvalues(fit_Alox12_DPPC_200uMCa_Lm_0mOsm);
fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm=confint(fit_Alox12_DPPC_200uMCa_Lm_0mOsm);
fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm=coeffvalues(fit_Alox12_DPPC_200uMCa_Lm_240mOsm);
fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm=confint(fit_Alox12_DPPC_200uMCa_Lm_240mOsm);

%8) PKCg-C2
% 8.1) DPPC/highPS, 200uM Ca2+
[fit_PKCg_DPPChighPS_200uMCa_Lm_0mOsm,gof_PKCg_DPPChighPS_200uMCa_Lm_0mOsm]=FitLangmuir(PKCg_DPPChighPS_200uMCa_Lm,1:1452,1,'kd','--','b');
[fit_PKCg_DPPChighPS_200uMCa_Lm_240mOsm,gof_PKCg_DPPChighPS_200uMCa_Lm_240mOsm]=FitLangmuir(PKCg_DPPChighPS_200uMCa_Lm,1453:1949,1,'kd','-','b');
fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm=coeffvalues(fit_PKCg_DPPChighPS_200uMCa_Lm_0mOsm);
fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm=confint(fit_PKCg_DPPChighPS_200uMCa_Lm_0mOsm);
fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm=coeffvalues(fit_PKCg_DPPChighPS_200uMCa_Lm_240mOsm);
fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm=confint(fit_PKCg_DPPChighPS_200uMCa_Lm_240mOsm);

% 1.2)cPla2 C2 DPPC/PS, 500uM Ca2+

[fit_Pla2_DPPC_500uMCa_Lm_0mOsm,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,1:581,1,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,582:971,1,'ko','-','w');
fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);
ylim([0,70])

%Figure S6b: Upper Panel Bmax on rim

figure(9)
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,1)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),fitRes_Pla2_DPPCPS_Lm1_0mOsm(1)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,1),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(1),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,1)-fitRes_Pla2_DPPC_240mOsm_all_Lm(1),fitRes_Pla2_DPPC_240mOsm_all_Lm(1)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,1),'ko');

bar(3,fitRes_hs_Pla2_DPPCPS_0mOsm(1),'w','LineStyle','--');
bar(4,fitRes_hs_Pla2_DPPCPS_240mOsm(1),'w');
errorbar(3,fitRes_hs_Pla2_DPPCPS_0mOsm(1),fitErr_hs_Pla2_DPPCPS_0mOsm(1,1)-fitRes_hs_Pla2_DPPCPS_0mOsm(1),fitRes_hs_Pla2_DPPCPS_0mOsm(1)-fitErr_hs_Pla2_DPPCPS_0mOsm(2,1),'kp');
errorbar(4,fitRes_hs_Pla2_DPPCPS_240mOsm(1),fitErr_hs_Pla2_DPPCPS_240mOsm(1,1)-fitRes_hs_Pla2_DPPCPS_240mOsm(1),fitRes_hs_Pla2_DPPCPS_240mOsm(1)-fitErr_hs_Pla2_DPPCPS_240mOsm(2,1),'kp');

bar(5,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(6,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(5,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,1)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,1),'ko');
errorbar(6,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,1)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,1),'ko');

bar(7,fitRes_Pla2_DPPCpure_Lm_0mOsm(1),'w','LineStyle','--');
bar(8,fitRes_Pla2_DPPCpure_Lm_240mOsm(1),'w');
errorbar(7,fitRes_Pla2_DPPCpure_Lm_0mOsm(1),fitErr_Pla2_DPPCpure_Lm_0mOsm(1,1)-fitRes_Pla2_DPPCpure_Lm_0mOsm(1),fitRes_Pla2_DPPCpure_Lm_0mOsm(1)-fitErr_Pla2_DPPCpure_Lm_0mOsm(2,1),'ko','MarkerFaceColor','g');
errorbar(8,fitRes_Pla2_DPPCpure_Lm_240mOsm(1),fitErr_Pla2_DPPCpure_Lm_240mOsm(1,1)-fitRes_Pla2_DPPCpure_Lm_240mOsm(1),fitRes_Pla2_DPPCpure_Lm_240mOsm(1)-fitErr_Pla2_DPPCpure_Lm_240mOsm(2,1),'ko','MarkerFaceColor','g');

bar(9,fitRes_Pla2_DOPC_Lm_0mOsm(1),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPC_Lm_240mOsm(1),'w');
errorbar(9,fitRes_Pla2_DOPC_Lm_0mOsm(1),fitErr_Pla2_DOPC_Lm_0mOsm(1,1)-fitRes_Pla2_DOPC_Lm_0mOsm(1),fitRes_Pla2_DOPC_Lm_0mOsm(1)-fitErr_Pla2_DOPC_Lm_0mOsm(2,1),'ko','MarkerFaceColor','y');
errorbar(10,fitRes_Pla2_DOPC_Lm_240mOsm(1),fitErr_Pla2_DOPC_Lm_240mOsm(1,1)-fitRes_Pla2_DOPC_Lm_240mOsm(1),fitRes_Pla2_DOPC_Lm_240mOsm(1)-fitErr_Pla2_DOPC_Lm_240mOsm(2,1),'ko','MarkerFaceColor','y');

bar(11,fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),'w','LineStyle','--');
bar(12,fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),'w');
errorbar(11,fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),fitErr_Pla2_DOPCDOG_Lm_0mOsm(1,1)-fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),fitRes_Pla2_DOPCDOG_Lm_0mOsm(1)-fitErr_Pla2_DOPCDOG_Lm_0mOsm(2,1),'ko','MarkerFaceColor','r');
errorbar(12,fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),fitErr_Pla2_DOPCDOG_Lm_240mOsm(1,1)-fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),fitRes_Pla2_DOPCDOG_Lm_240mOsm(1)-fitErr_Pla2_DOPCDOG_Lm_240mOsm(2,1),'ko','MarkerFaceColor','r');

bar(13,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),'w');
errorbar(13,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,1)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,1),'mo');

bar(14,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),'w');
errorbar(14,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,1)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,1),'ro');

bar(15,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),'w');
errorbar(15,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,1)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,1),'co');

bar(16,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),'w');
errorbar(16,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,1)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,1),'bo');

bar(17,fitRes_Alox5_DPPCPS_Lm(1),'w');
errorbar(17,fitRes_Alox5_DPPCPS_Lm(1),fitErr_Alox5_DPPCPS_Lm(1,1)-fitRes_Alox5_DPPCPS_Lm(1),fitRes_Alox5_DPPCPS_Lm(1)-fitErr_Alox5_DPPCPS_Lm(2,1),'ks');

bar(18,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(19,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(18,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,1)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,1),'ks');
errorbar(19,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,1)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,1),'ks');

bar(20,fitRes_Alox12_DPPCPS_Lm(1),'w');
errorbar(20,fitRes_Alox12_DPPCPS_Lm(1),fitErr_Alox12_DPPCPS_Lm(1,1)-fitRes_Alox12_DPPCPS_Lm(1),fitRes_Alox12_DPPCPS_Lm(1)-fitErr_Alox12_DPPCPS_Lm(2,1),'k^');

bar(21,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(22,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(21,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,1)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,1),'k^');
errorbar(22,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,1)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,1),'k^');

bar(23,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(24,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(23,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,1)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,1),'kd','MarkerFaceColor','b');
errorbar(24,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,1)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,1),'kd','MarkerFaceColor','b');

ylim([0,90])

%FigureS6b Bottom Panel: Kd
figure(10)
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,2)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitRes_Pla2_DPPCPS_Lm1_0mOsm(2)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,2)-fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitRes_Pla2_DPPC_240mOsm_all_Lm(2)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,2),'ko');

bar(3,fitRes_hs_Pla2_DPPCPS_0mOsm(2),'w','LineStyle','--');
bar(4,fitRes_hs_Pla2_DPPCPS_240mOsm(2),'w');
errorbar(3,fitRes_hs_Pla2_DPPCPS_0mOsm(2),fitErr_hs_Pla2_DPPCPS_0mOsm(1,2)-fitRes_hs_Pla2_DPPCPS_0mOsm(2),fitRes_hs_Pla2_DPPCPS_0mOsm(2)-fitErr_hs_Pla2_DPPCPS_0mOsm(2,2),'kp');
errorbar(4,fitRes_hs_Pla2_DPPCPS_240mOsm(2),fitErr_hs_Pla2_DPPCPS_240mOsm(1,2)-fitRes_hs_Pla2_DPPCPS_240mOsm(2),fitRes_hs_Pla2_DPPCPS_240mOsm(2)-fitErr_hs_Pla2_DPPCPS_240mOsm(2,2),'kp');

bar(5,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(6,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(5,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,2),'ko');
errorbar(6,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,2),'ko');

bar(7,fitRes_Pla2_DPPCpure_Lm_0mOsm(2),'w','LineStyle','--');
bar(8,fitRes_Pla2_DPPCpure_Lm_240mOsm(2),'w');
errorbar(7,fitRes_Pla2_DPPCpure_Lm_0mOsm(2),fitErr_Pla2_DPPCpure_Lm_0mOsm(1,2)-fitRes_Pla2_DPPCpure_Lm_0mOsm(2),fitRes_Pla2_DPPCpure_Lm_0mOsm(2)-fitErr_Pla2_DPPCpure_Lm_0mOsm(2,2),'ko','MarkerFaceColor','g');
errorbar(8,fitRes_Pla2_DPPCpure_Lm_240mOsm(2),fitErr_Pla2_DPPCpure_Lm_240mOsm(1,2)-fitRes_Pla2_DPPCpure_Lm_240mOsm(2),fitRes_Pla2_DPPCpure_Lm_240mOsm(2)-fitErr_Pla2_DPPCpure_Lm_240mOsm(2,2),'ko','MarkerFaceColor','g');

bar(9,fitRes_Pla2_DOPC_Lm_0mOsm(2),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPC_Lm_240mOsm(2),'w');
errorbar(9,fitRes_Pla2_DOPC_Lm_0mOsm(2),fitErr_Pla2_DOPC_Lm_0mOsm(1,2)-fitRes_Pla2_DOPC_Lm_0mOsm(2),fitRes_Pla2_DOPC_Lm_0mOsm(2)-fitErr_Pla2_DOPC_Lm_0mOsm(2,2),'ko','MarkerFaceColor','y');
errorbar(10,fitRes_Pla2_DOPC_Lm_240mOsm(2),fitErr_Pla2_DOPC_Lm_240mOsm(1,2)-fitRes_Pla2_DOPC_Lm_240mOsm(2),fitRes_Pla2_DOPC_Lm_240mOsm(2)-fitErr_Pla2_DOPC_Lm_240mOsm(2,2),'ko','MarkerFaceColor','y');

bar(11,fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),'w','LineStyle','--');
bar(12,fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),'w');
errorbar(11,fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),fitErr_Pla2_DOPCDOG_Lm_0mOsm(1,2)-fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),fitRes_Pla2_DOPCDOG_Lm_0mOsm(2)-fitErr_Pla2_DOPCDOG_Lm_0mOsm(2,2),'ko','MarkerFaceColor','r');
errorbar(12,fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),fitErr_Pla2_DOPCDOG_Lm_240mOsm(1,2)-fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),fitRes_Pla2_DOPCDOG_Lm_240mOsm(2)-fitErr_Pla2_DOPCDOG_Lm_240mOsm(2,2),'ko','MarkerFaceColor','r');

bar(13,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(13,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,2),'mo');

bar(14,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(14,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,2),'ro');

bar(15,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(15,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,2),'co');

bar(16,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(16,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,2),'bo');

bar(17,fitRes_Alox5_DPPCPS_Lm(2),'w');
errorbar(17,fitRes_Alox5_DPPCPS_Lm(2),fitErr_Alox5_DPPCPS_Lm(1,2)-fitRes_Alox5_DPPCPS_Lm(2),fitRes_Alox5_DPPCPS_Lm(2)-fitErr_Alox5_DPPCPS_Lm(2,2),'ks');

bar(18,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(19,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(18,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,2),'ks');
errorbar(19,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,2),'ks');

bar(20,fitRes_Alox12_DPPCPS_Lm(2),'w');
errorbar(20,fitRes_Alox12_DPPCPS_Lm(2),fitErr_Alox12_DPPCPS_Lm(1,2)-fitRes_Alox12_DPPCPS_Lm(2),fitRes_Alox12_DPPCPS_Lm(2)-fitErr_Alox12_DPPCPS_Lm(2,2),'k^');

bar(21,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(22,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(21,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,2),'k^');
errorbar(22,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,2),'k^');

bar(23,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(24,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(23,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,2),'kd','MarkerFaceColor','b');
errorbar(24,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,2),'kd','MarkerFaceColor','b');


set(gca,'YScale','log')
ylim([0,12000])

