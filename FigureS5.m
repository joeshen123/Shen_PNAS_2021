%FigureS5a (Upper Panel) cPla2 Total Hill
% 1) Pla2-C2 
% 1.1) DPPC/PS GUV
[fit_Pla2_DPPCPS_Hill_100mOsm,gof_Pla2_DPPCPS_Hill_100mOsm]=FitHill(Pla2_DPPCPS_Hill,1:414,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm,gof_Pla2_DPPCPS_Hill_240mOsm]=FitHill(Pla2_DPPCPS_Hill,414:902,1,'ko','-','w');
fitRes_Pla2_DPPCPS_Hill_100mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_100mOsm);
fitErr_Pla2_DPPCPS_Hill_100mOsm=confint(fit_Pla2_DPPCPS_Hill_100mOsm);
fitRes_Pla2_DPPCPS_Hill_240mOsm=coeffvalues(fit_Pla2_DPPCPS_Hill_240mOsm);
fitErr_Pla2_DPPCPS_Hill_240mOsm=confint(fit_Pla2_DPPCPS_Hill_240mOsm);

% 1.2) DPPC GUV

[fit_Pla2_DPPCpure_Hill_100mOsm,gof_Pla2_DPPCpure_Hill_100mOsm]=FitHill(Pla2_DPPCpure_Hill,1:398,1,'ko','--','g');
[fit_Pla2_DPPCpure_Hill_240mOsm,gof_Pla2_DPPCpure_Hill_240mOsm]=FitHill(Pla2_DPPCpure_Hill,499:1009,1,'ko','-','g');
fitRes_Pla2_DPPCpure_Hill_100mOsm=coeffvalues(fit_Pla2_DPPCpure_Hill_100mOsm);
fitErr_Pla2_DPPCpure_Hill_100mOsm=confint(fit_Pla2_DPPCpure_Hill_100mOsm);
fitRes_Pla2_DPPCpure_Hill_240mOsm=coeffvalues(fit_Pla2_DPPCpure_Hill_240mOsm);
fitErr_Pla2_DPPCpure_Hill_240mOsm=confint(fit_Pla2_DPPCpure_Hill_240mOsm);

% 1.3) DOPC GUV:
[fit_Pla2_DOPC_Hill_100mOsm,gof_Pla2_DOPC_Hill_100mOsm]=FitHill(Pla2_DOPC_Hill,1:813,1,'ko','--','y');
[fit_Pla2_DOPC_Hill_240mOsm,gof_Pla2_DOPC_Hill_240mOsm]=FitHill(Pla2_DOPC_Hill,814:1712,1,'ko','-','y');
fitRes_Pla2_DOPC_Hill_100mOsm=coeffvalues(fit_Pla2_DOPC_Hill_100mOsm);
fitErr_Pla2_DOPC_Hill_100mOsm=confint(fit_Pla2_DOPC_Hill_100mOsm);
fitRes_Pla2_DOPC_Hill_240mOsm=coeffvalues(fit_Pla2_DOPC_Hill_240mOsm);
fitErr_Pla2_DOPC_Hill_240mOsm=confint(fit_Pla2_DOPC_Hill_240mOsm);


% 1.4) DOPC/DOG GUV:
[fit_Pla2_DOPCDOG_Hill_100mOsm,gof_Pla2_DOPCDOG_Hill_100mOsm]=FitHill(Pla2_DOPCDOG_Hill,1:322,1,'ko','--','r');
[fit_Pla2_DOPCDOG_Hill_240mOsm,gof_Pla2_DOPCDOG_Hill_240mOsm]=FitHill(Pla2_DOPCDOG_Hill,323:835,1,'ko','-','r');
fitRes_Pla2_DOPCDOG_Hill_100mOsm=coeffvalues(fit_Pla2_DOPCDOG_Hill_100mOsm);
fitErr_Pla2_DOPCDOG_Hill_100mOsm=confint(fit_Pla2_DOPCDOG_Hill_100mOsm);
fitRes_Pla2_DOPCDOG_Hill_240mOsm=coeffvalues(fit_Pla2_DOPCDOG_Hill_240mOsm);
fitErr_Pla2_DOPCDOG_Hill_240mOsm=confint(fit_Pla2_DOPCDOG_Hill_240mOsm);

% 1.5)Hs cPla2 C2 DPPCPS

%Human cPla2 C2 DPPC/PS Iso vs Hypo Langmuir
[fit_hsPla2_DPPCPS_Hill_100mOsm,gof_hsPla2_DPPCPS_Hill_100mOsm]=FitHill(hs_Pla2_DPPCPS_Hill,1:1689,1,'kp','--','w');
[fit_hsPla2_DPPCPS_Hill_240mOsm,gof_hsPla2_DPPCPS_Hill_240mOsm]=FitHill(hs_Pla2_DPPCPS_Hill,1690:2519,1,'kp','-','w');
fitRes_hsPla2_DPPCPS_Hill_100mOsm=coeffvalues(fit_hsPla2_DPPCPS_Hill_100mOsm);
fitErr_hsPla2_DPPCPS_Hill_100mOsm=confint(fit_hsPla2_DPPCPS_Hill_100mOsm);
fitRes_hsPla2_DPPCPS_Hill_240mOsm=coeffvalues(fit_hsPla2_DPPCPS_Hill_240mOsm);
fitErr_hsPla2_DPPCPS_Hill_240mOsm=confint(fit_hsPla2_DPPCPS_Hill_240mOsm);

xlim([0,10000])
ylim([0,70])

%FigureS5a: Bottom Panel
% 2) Alox5a-PLAT
% 2.1) DPPC/PS GUV
[fit_Alox5_DPPCPS_Hill_100mOsm,gof_Alox5_DPPCPS_Hill_100mOsm]=FitHill(Alox5_DPPCPS_Hill,1:447,0,'ks','--','w');
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

xlim([0,10000])
ylim([0,70])

%FigureS5b: Upper (Ca2+ 1/2)
% plot fitresults;
% plot Ca1/2
figure(3);
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitRes_Pla2_DPPCPS_Hill_100mOsm(1)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,1),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitRes_Pla2_DPPCPS_Hill_240mOsm(1)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,1),'ko')

bar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--')
bar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(1),'w');
errorbar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(1),fitErr_hsPla2_DPPCPS_Hill_100mOsm(1,1)-fitRes_hsPla2_DPPCPS_Hill_100mOsm(1),fitRes_hsPla2_DPPCPS_Hill_100mOsm(1)-fitErr_hsPla2_DPPCPS_Hill_100mOsm(2,1),'kp');
errorbar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(1),fitErr_hsPla2_DPPCPS_Hill_240mOsm(1,1)-fitRes_hsPla2_DPPCPS_Hill_240mOsm(1),fitRes_hsPla2_DPPCPS_Hill_240mOsm(1)-fitErr_hsPla2_DPPCPS_Hill_240mOsm(2,1),'kp')

bar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(1),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(1),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(1),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCpure_Hill_100mOsm(1),fitRes_Pla2_DPPCpure_Hill_100mOsm(1)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,1),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(1),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCpure_Hill_240mOsm(1),fitRes_Pla2_DPPCpure_Hill_240mOsm(1)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,1),'ko','MarkerFaceColor','g')

bar(7,fitRes_Pla2_DOPC_Hill_100mOsm(1),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Hill_240mOsm(1),'w');
errorbar(7,fitRes_Pla2_DOPC_Hill_100mOsm(1),fitErr_Pla2_DOPC_Hill_100mOsm(1,1)-fitRes_Pla2_DOPC_Hill_100mOsm(1),fitRes_Pla2_DOPC_Hill_100mOsm(1)-fitErr_Pla2_DOPC_Hill_100mOsm(2,1),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Hill_240mOsm(1),fitErr_Pla2_DOPC_Hill_240mOsm(1,1)-fitRes_Pla2_DOPC_Hill_240mOsm(1),fitRes_Pla2_DOPC_Hill_240mOsm(1)-fitErr_Pla2_DOPC_Hill_240mOsm(2,1),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,1)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),fitRes_Pla2_DOPCDOG_Hill_100mOsm(1)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,1),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,1)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),fitRes_Pla2_DOPCDOG_Hill_240mOsm(1)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,1),'ko','MarkerFaceColor','r');

bar(10,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(11,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),'w');
errorbar(10,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitRes_Alox5_DPPCPS_Hill_100mOsm(1)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,1),'ks');
errorbar(11,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitRes_Alox5_DPPCPS_Hill_240mOsm(1)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,1),'ks');

bar(12,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(13,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),'w');
errorbar(12,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitRes_Alox12_DPPCPS_Hill_100mOsm(1)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,1),'k^');
errorbar(13,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitRes_Alox12_DPPCPS_Hill_240mOsm(1)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,1),'k^');

bar(14,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(15,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),'w');
errorbar(14,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitRes_PKCg_DPPChighPS_Hill_100mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,1),'kd','MarkerFaceColor','b');
errorbar(15,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitRes_PKCg_DPPChighPS_Hill_240mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,1),'kd','MarkerFaceColor','b');

set(gca,'YScale','log')
ylim([0,10000])

%FigureS5b(Middle): Hill Coefficient
figure(4)
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitRes_Pla2_DPPCPS_Hill_100mOsm(2)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitRes_Pla2_DPPCPS_Hill_240mOsm(2)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,2),'ko')

bar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--')
bar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(2),'w');
errorbar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(2),fitErr_hsPla2_DPPCPS_Hill_100mOsm(1,2)-fitRes_hsPla2_DPPCPS_Hill_100mOsm(2),fitRes_hsPla2_DPPCPS_Hill_100mOsm(2)-fitErr_hsPla2_DPPCPS_Hill_100mOsm(2,2),'kp');
errorbar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(2),fitErr_hsPla2_DPPCPS_Hill_240mOsm(1,2)-fitRes_hsPla2_DPPCPS_Hill_240mOsm(2),fitRes_hsPla2_DPPCPS_Hill_240mOsm(2)-fitErr_hsPla2_DPPCPS_Hill_240mOsm(2,2),'kp')

bar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(2),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(2),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(2),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,2)-fitRes_Pla2_DPPCpure_Hill_100mOsm(2),fitRes_Pla2_DPPCpure_Hill_100mOsm(2)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,2),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(2),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,2)-fitRes_Pla2_DPPCpure_Hill_240mOsm(2),fitRes_Pla2_DPPCpure_Hill_240mOsm(2)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,2),'ko','MarkerFaceColor','g');

bar(7,fitRes_Pla2_DOPC_Hill_100mOsm(2),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Hill_240mOsm(2),'w');
errorbar(7,fitRes_Pla2_DOPC_Hill_100mOsm(2),fitErr_Pla2_DOPC_Hill_100mOsm(1,2)-fitRes_Pla2_DOPC_Hill_100mOsm(2),fitRes_Pla2_DOPC_Hill_100mOsm(2)-fitErr_Pla2_DOPC_Hill_100mOsm(2,2),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Hill_240mOsm(2),fitErr_Pla2_DOPC_Hill_240mOsm(1,2)-fitRes_Pla2_DOPC_Hill_240mOsm(2),fitRes_Pla2_DOPC_Hill_240mOsm(2)-fitErr_Pla2_DOPC_Hill_240mOsm(2,2),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,2)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),fitRes_Pla2_DOPCDOG_Hill_100mOsm(2)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,2),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,2)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),fitRes_Pla2_DOPCDOG_Hill_240mOsm(2)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,2),'ko','MarkerFaceColor','r');

bar(11,fitRes_Alox5_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(12,fitRes_Alox5_DPPCPS_Hill_240mOsm(2),'w');
errorbar(11,fitRes_Alox5_DPPCPS_Hill_100mOsm(2),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,2)-fitRes_Alox5_DPPCPS_Hill_100mOsm(2),fitRes_Alox5_DPPCPS_Hill_100mOsm(2)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,2),'ks');
errorbar(12,fitRes_Alox5_DPPCPS_Hill_240mOsm(2),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,2)-fitRes_Alox5_DPPCPS_Hill_240mOsm(2),fitRes_Alox5_DPPCPS_Hill_240mOsm(2)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,2),'ks');

bar(13,fitRes_Alox12_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(14,fitRes_Alox12_DPPCPS_Hill_240mOsm(2),'w');
errorbar(13,fitRes_Alox12_DPPCPS_Hill_100mOsm(2),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,2)-fitRes_Alox12_DPPCPS_Hill_100mOsm(2),fitRes_Alox12_DPPCPS_Hill_100mOsm(2)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,2),'k^');
errorbar(14,fitRes_Alox12_DPPCPS_Hill_240mOsm(2),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,2)-fitRes_Alox12_DPPCPS_Hill_240mOsm(2),fitRes_Alox12_DPPCPS_Hill_240mOsm(2)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,2),'k^');

bar(15,fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(16,fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),'w');
errorbar(15,fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,2)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),fitRes_PKCg_DPPChighPS_Hill_100mOsm(2)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,2),'kd','MarkerFaceColor','b');
errorbar(16,fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,2)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),fitRes_PKCg_DPPChighPS_Hill_240mOsm(2)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,2),'kd','MarkerFaceColor','b');
ylim([0,7])

%FigureS5b(Bottom): Max Emission
figure(5)
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(3),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(3),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,3)-fitRes_Pla2_DPPCPS_Hill_100mOsm(3),fitRes_Pla2_DPPCPS_Hill_100mOsm(3)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,3),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(3),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,3)-fitRes_Pla2_DPPCPS_Hill_240mOsm(3),fitRes_Pla2_DPPCPS_Hill_240mOsm(3)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,3),'ko')

bar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--')
bar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(3),'w');
errorbar(3,fitRes_hsPla2_DPPCPS_Hill_100mOsm(3),fitErr_hsPla2_DPPCPS_Hill_100mOsm(1,3)-fitRes_hsPla2_DPPCPS_Hill_100mOsm(3),fitRes_hsPla2_DPPCPS_Hill_100mOsm(3)-fitErr_hsPla2_DPPCPS_Hill_100mOsm(2,3),'kp');
errorbar(4,fitRes_hsPla2_DPPCPS_Hill_240mOsm(3),fitErr_hsPla2_DPPCPS_Hill_240mOsm(1,3)-fitRes_hsPla2_DPPCPS_Hill_240mOsm(3),fitRes_hsPla2_DPPCPS_Hill_240mOsm(3)-fitErr_hsPla2_DPPCPS_Hill_240mOsm(2,3),'kp')

bar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(3),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(3),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Hill_100mOsm(3),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,3)-fitRes_Pla2_DPPCpure_Hill_100mOsm(3),fitRes_Pla2_DPPCpure_Hill_100mOsm(3)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,3),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Hill_240mOsm(3),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,3)-fitRes_Pla2_DPPCpure_Hill_240mOsm(3),fitRes_Pla2_DPPCpure_Hill_240mOsm(3)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,3),'ko','MarkerFaceColor','g');

bar(7,fitRes_Pla2_DOPC_Hill_100mOsm(3),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Hill_240mOsm(3),'w');
errorbar(7,fitRes_Pla2_DOPC_Hill_100mOsm(3),fitErr_Pla2_DOPC_Hill_100mOsm(1,3)-fitRes_Pla2_DOPC_Hill_100mOsm(3),fitRes_Pla2_DOPC_Hill_100mOsm(3)-fitErr_Pla2_DOPC_Hill_100mOsm(2,3),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Hill_240mOsm(3),fitErr_Pla2_DOPC_Hill_240mOsm(1,3)-fitRes_Pla2_DOPC_Hill_240mOsm(3),fitRes_Pla2_DOPC_Hill_240mOsm(3)-fitErr_Pla2_DOPC_Hill_240mOsm(2,3),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,3)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),fitRes_Pla2_DOPCDOG_Hill_100mOsm(3)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,3),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,3)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),fitRes_Pla2_DOPCDOG_Hill_240mOsm(3)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,3),'ko','MarkerFaceColor','r');

bar(11,fitRes_Alox5_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(12,fitRes_Alox5_DPPCPS_Hill_240mOsm(3),'w');
errorbar(11,fitRes_Alox5_DPPCPS_Hill_100mOsm(3),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,3)-fitRes_Alox5_DPPCPS_Hill_100mOsm(3),fitRes_Alox5_DPPCPS_Hill_100mOsm(3)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,3),'ks');
errorbar(12,fitRes_Alox5_DPPCPS_Hill_240mOsm(3),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,3)-fitRes_Alox5_DPPCPS_Hill_240mOsm(3),fitRes_Alox5_DPPCPS_Hill_240mOsm(3)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,3),'ks');

bar(13,fitRes_Alox12_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(14,fitRes_Alox12_DPPCPS_Hill_240mOsm(3),'w');
errorbar(13,fitRes_Alox12_DPPCPS_Hill_100mOsm(3),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,3)-fitRes_Alox12_DPPCPS_Hill_100mOsm(3),fitRes_Alox12_DPPCPS_Hill_100mOsm(3)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,3),'k^');
errorbar(14,fitRes_Alox12_DPPCPS_Hill_240mOsm(3),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,3)-fitRes_Alox12_DPPCPS_Hill_240mOsm(3),fitRes_Alox12_DPPCPS_Hill_240mOsm(3)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,3),'k^');

bar(15,fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(16,fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),'w');
errorbar(15,fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,3)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),fitRes_PKCg_DPPChighPS_Hill_100mOsm(3)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,3),'kd','MarkerFaceColor','b');
errorbar(16,fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,3)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),fitRes_PKCg_DPPChighPS_Hill_240mOsm(3)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,3),'kd','MarkerFaceColor','b');
ylim([0,70])

