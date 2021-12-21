
 warning('off','all')

% Figure 1C. cPla2-C2 debinding post GUV Rupture
figure(1)
set(figure(1),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(cPla2_GUVrupture.TimePointmin,cPla2_GUVrupture.radius_micron,'r')
yyaxis left
plot(cPla2_GUVrupture.TimePointmin,cPla2_GUVrupture.NormalizedGFPintensity,'k')


% Figure 1d. Compare half Ca of cPla2, Alox5a, Alox12 and PKC Gamma in low
% stretch and high stretch regime

% 1) Pla2-C2 
% 1.1) DPPC/PS GUV
figure(2)
[fit_Pla2_DPPCPS_Hill_100mOsm,gof_Pla2_DPPCPS_Hill_100mOsm]=FitHill(Pla2_DPPCPS_Hill,1:414,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm,gof_Pla2_DPPCPS_Hill_240mOsm]=FitHill(Pla2_DPPCPS_Hill,414:902,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Hill_100mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_100mOsm);
fitErr_Pla2_DPPCPS_Hill_100mOsm=confint(fit_Pla2_DPPCPS_Hill_100mOsm);
fitRes_Pla2_DPPCPS_Hill_240mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_240mOsm);
fitErr_Pla2_DPPCPS_Hill_240mOsm=confint(fit_Pla2_DPPCPS_Hill_240mOsm);

% 2) Alox5a-PLAT
% 2.1) DPPC/PS GUV
[fit_Alox5_DPPCPS_Hill_100mOsm,gof_Alox5_DPPCPS_Hill_100mOsm]=FitHill(Alox5_DPPCPS_Hill,1:447,1,'ks','--','w');
[fit_Alox5_DPPCPS_Hill_240mOsm,gof_Alox5_DPPCPS_Hill_240mOsm]=FitHill(Alox5_DPPCPS_Hill,448:995,1,'ks','-','w');
fitRes_Alox5_DPPCPS_Hill_100mOsm=coeffvalues(fit_Alox5_DPPCPS_Hill_100mOsm);
fitErr_Alox5_DPPCPS_Hill_100mOsm=confint(fit_Alox5_DPPCPS_Hill_100mOsm);
fitRes_Alox5_DPPCPS_Hill_240mOsm=coeffvalues(fit_Alox5_DPPCPS_Hill_240mOsm);
fitErr_Alox5_DPPCPS_Hill_240mOsm=confint(fit_Alox5_DPPCPS_Hill_240mOsm);

% 3) Alox12-PLAT
% 3.1) DPPC/PS GUV
[fit_Alox12_DPPCPS_Hill_100mOsm,gof_Alox12_DPPCPS_Hill_100mOsm]=FitHill(Alox12_DPPCPS_Hill,1:308,1,'k^','--','w');
[fit_Alox12_DPPCPS_Hill_240mOsm,gof_Alox12_DPPCPS_Hill_240mOsm]=FitHill(Alox12_DPPCPS_Hill,309:1028,1,'k^','-','w');
fitRes_Alox12_DPPCPS_Hill_100mOsm=coeffvalues(fit_Alox12_DPPCPS_Hill_100mOsm);
fitErr_Alox12_DPPCPS_Hill_100mOsm=confint(fit_Alox12_DPPCPS_Hill_100mOsm);
fitRes_Alox12_DPPCPS_Hill_240mOsm=coeffvalues(fit_Alox12_DPPCPS_Hill_240mOsm);
fitErr_Alox12_DPPCPS_Hill_240mOsm=confint(fit_Alox12_DPPCPS_Hill_240mOsm);

% 4) PKCg-C2
% 4.1) DPPC/high PS GUV
[fit_PKCg_DPPChighPS_Hill_100mOsm,gof_PKCg_DPPChighPS_Hill_100mOsm]=FitHill(PKCg_DPPChighPS_Hill,1:1032,1,'kd','--','b');
[fit_PKCg_DPPChighPS_Hill_240mOsm,gof_PKCg_DPPChighPS_Hill_240mOsm]=FitHill(PKCg_DPPChighPS_Hill,1033:1555,1,'kd','-','b');
fitRes_PKCg_DPPChighPS_Hill_100mOsm=coeffvalues(fit_PKCg_DPPChighPS_Hill_100mOsm);
fitErr_PKCg_DPPChighPS_Hill_100mOsm=confint(fit_PKCg_DPPChighPS_Hill_100mOsm);
fitRes_PKCg_DPPChighPS_Hill_240mOsm=coeffvalues(fit_PKCg_DPPChighPS_Hill_240mOsm);
fitErr_PKCg_DPPChighPS_Hill_240mOsm=confint(fit_PKCg_DPPChighPS_Hill_240mOsm);

figure(3);

bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitRes_Pla2_DPPCPS_Hill_100mOsm(1)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,1),'k');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitRes_Pla2_DPPCPS_Hill_240mOsm(1)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,1),'k')

bar(3,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(4,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),'w');
errorbar(3,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitRes_Alox5_DPPCPS_Hill_100mOsm(1)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,1),'k');
errorbar(4,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitRes_Alox5_DPPCPS_Hill_240mOsm(1)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,1),'k');

bar(5,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(6,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),'w');
errorbar(5,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitRes_Alox12_DPPCPS_Hill_100mOsm(1)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,1),'k');
errorbar(6,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitRes_Alox12_DPPCPS_Hill_240mOsm(1)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,1),'k');

bar(7,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(8,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),'w');
errorbar(7,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitRes_PKCg_DPPChighPS_Hill_100mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,1),'k');
errorbar(8,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitRes_PKCg_DPPChighPS_Hill_240mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,1),'k');

set(gca,'YScale','log')
ylim([0,10^4])

% Figure 1e. Compare Kd of cPla2 WT, cPla2 hydrophobic mutants, Alox5a,
% Alox12 and PKC Gamma in no stretch and high stretch regime (20 uM Ca)

% 1) Pla2-C2
% 1.1) DPPC/PS, 20uM Ca2+
figure(4);
[fit_Pla2_DPPCPS_Lm1_0mOsm,gof_Pla2_DPPCPS_Lm1_0mOsm]=FitLangmuir(Pla2_DPPCPS_Lm1,1:719,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_all_Lm,gof_Pla2_DPPC_240mOsm_all_Lm]=FitLangmuir(Pla2_DPPC_240mOsm_all_Lm,1:1817,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Lm1_0mOsm=coeffvalues(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitErr_Pla2_DPPCPS_Lm1_0mOsm=confint(fit_Pla2_DPPCPS_Lm1_0mOsm);
fitRes_Pla2_DPPC_240mOsm_all_Lm=coeffvalues(fit_Pla2_DPPC_240mOsm_all_Lm);
fitErr_Pla2_DPPC_240mOsm_all_Lm=confint(fit_Pla2_DPPC_240mOsm_all_Lm);

% 2) Pla2-C2 Y90F/V91F
% 2.1) DPPC/PS, 20uM Ca2+
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

figure(5);
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,2)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitRes_Pla2_DPPCPS_Lm1_0mOsm(2)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,2)-fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitRes_Pla2_DPPC_240mOsm_all_Lm(2)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,2),'ko');

bar(3,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(3,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,2),'mo');

bar(4,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(4,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,2),'ro');

bar(5,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(5,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,2),'co','Color', [0.2 0 0],'MarkerEdgeColor',[0.2 0 0]);

bar(6,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(6,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,2),'bo');

bar(7,fitRes_Alox5_DPPCPS_Lm(2),'w');
errorbar(7,fitRes_Alox5_DPPCPS_Lm(2),fitErr_Alox5_DPPCPS_Lm(1,2)-fitRes_Alox5_DPPCPS_Lm(2),fitRes_Alox5_DPPCPS_Lm(2)-fitErr_Alox5_DPPCPS_Lm(2,2),'ks');

bar(8,fitRes_Alox12_DPPCPS_Lm(2),'w');
errorbar(8,fitRes_Alox12_DPPCPS_Lm(2),fitErr_Alox12_DPPCPS_Lm(1,2)-fitRes_Alox12_DPPCPS_Lm(2),fitRes_Alox12_DPPCPS_Lm(2)-fitErr_Alox12_DPPCPS_Lm(2,2),'k^');

set(gca,'YScale','log')
ylim([10,10^4])
figure(5), set(gca,'Color',[1 1 1])


% Figure 1f. Compare Kd of cPla2 WT, cPla2 hydrophobic mutants, Alox5a,
% Alox12 and PKC Gamma in no stretch and high stretch regime (200 uM Ca)

% 1.2) DPPC/PS, 500uM Ca2+
figure(6);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,1:581,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,582:971,1,'ko','-','w');
fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);

% 6.2) DPPC/PS, 200uM Ca2+
[fit_Alox5_DPPC_200uMCa_Lm_0mOsm,gof_Alox5_DPPC_200uMCa_Lm_0mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,1:473,1,'ks','--','w');
[fit_Alox5_DPPC_200uMCa_Lm_240mOsm,gof_Alox5_DPPC_200uMCa_Lm_240mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,473:810,1,'ks','-','w');
fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);

% 7) Alox12-PLAT
% 7.2) DPPC/PS, 200uM Ca2+
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

figure(7);
bar(1,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(1,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,2),'ko');


bar(3,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(4,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(3,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,2),'ks');
errorbar(4,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,2),'ks');


bar(5,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(6,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(5,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,2),'k^');
errorbar(6,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,2),'k^');


bar(7,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(8,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(7,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,2),'kd','MarkerFaceColor','b');
errorbar(8,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,2),'kd','MarkerFaceColor','b');


set(gca,'YScale','log')
ylim([10,10^4])
figure(7), set(gca,'Color',[1 1 1])




