warning('off','all')

% Calculate and plot Hill-fit for Ca2+/Adsorption isotherms
% function: val(freeCa2) = Imax*((freeCa2^H)/(EC50^H+freeCa2^H))
% fitRes/fitErr: EC50,H,Imax 

figure(1);
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


figure(2);
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



% plot fitresults;
% plot Ca1/2
figure(3);
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_100mOsm(1),fitRes_Pla2_DPPCPS_Hill_100mOsm(1)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,1),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCPS_Hill_240mOsm(1),fitRes_Pla2_DPPCPS_Hill_240mOsm(1)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,1),'ko')

bar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(1),'w','LineStyle','--');
bar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(1),'w');
errorbar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(1),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,1)-fitRes_Pla2_DPPCpure_Hill_100mOsm(1),fitRes_Pla2_DPPCpure_Hill_100mOsm(1)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,1),'ko','MarkerFaceColor','g');
errorbar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(1),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,1)-fitRes_Pla2_DPPCpure_Hill_240mOsm(1),fitRes_Pla2_DPPCpure_Hill_240mOsm(1)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,1),'ko','MarkerFaceColor','g')

bar(5,fitRes_Pla2_DOPC_Hill_100mOsm(1),'w','LineStyle','--');
bar(6,fitRes_Pla2_DOPC_Hill_240mOsm(1),'w');
errorbar(5,fitRes_Pla2_DOPC_Hill_100mOsm(1),fitErr_Pla2_DOPC_Hill_100mOsm(1,1)-fitRes_Pla2_DOPC_Hill_100mOsm(1),fitRes_Pla2_DOPC_Hill_100mOsm(1)-fitErr_Pla2_DOPC_Hill_100mOsm(2,1),'ko','MarkerFaceColor','y');
errorbar(6,fitRes_Pla2_DOPC_Hill_240mOsm(1),fitErr_Pla2_DOPC_Hill_240mOsm(1,1)-fitRes_Pla2_DOPC_Hill_240mOsm(1),fitRes_Pla2_DOPC_Hill_240mOsm(1)-fitErr_Pla2_DOPC_Hill_240mOsm(2,1),'ko','MarkerFaceColor','y');

bar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),'w');
errorbar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,1)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(1),fitRes_Pla2_DOPCDOG_Hill_100mOsm(1)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,1),'ko','MarkerFaceColor','r');
errorbar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,1)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(1),fitRes_Pla2_DOPCDOG_Hill_240mOsm(1)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,1),'ko','MarkerFaceColor','r');

bar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),'w');
errorbar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_100mOsm(1),fitRes_Alox5_DPPCPS_Hill_100mOsm(1)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,1),'ks');
errorbar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox5_DPPCPS_Hill_240mOsm(1),fitRes_Alox5_DPPCPS_Hill_240mOsm(1)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,1),'ks');

bar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),'w');
errorbar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_100mOsm(1),fitRes_Alox12_DPPCPS_Hill_100mOsm(1)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,1),'k^');
errorbar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,1)-fitRes_Alox12_DPPCPS_Hill_240mOsm(1),fitRes_Alox12_DPPCPS_Hill_240mOsm(1)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,1),'k^');

bar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),'w','LineStyle','--');
bar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),'w');
errorbar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(1),fitRes_PKCg_DPPChighPS_Hill_100mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,1),'kd','MarkerFaceColor','b');
errorbar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,1)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(1),fitRes_PKCg_DPPChighPS_Hill_240mOsm(1)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,1),'kd','MarkerFaceColor','b');

set(gca,'YScale','log')

% plot H
figure(4)
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_100mOsm(2),fitRes_Pla2_DPPCPS_Hill_100mOsm(2)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,2)-fitRes_Pla2_DPPCPS_Hill_240mOsm(2),fitRes_Pla2_DPPCPS_Hill_240mOsm(2)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,2),'ko')

bar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(2),'w','LineStyle','--');
bar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(2),'w');
errorbar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(2),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,2)-fitRes_Pla2_DPPCpure_Hill_100mOsm(2),fitRes_Pla2_DPPCpure_Hill_100mOsm(2)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,2),'ko','MarkerFaceColor','g');
errorbar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(2),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,2)-fitRes_Pla2_DPPCpure_Hill_240mOsm(2),fitRes_Pla2_DPPCpure_Hill_240mOsm(2)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,2),'ko','MarkerFaceColor','g');

bar(5,fitRes_Pla2_DOPC_Hill_100mOsm(2),'w','LineStyle','--');
bar(6,fitRes_Pla2_DOPC_Hill_240mOsm(2),'w');
errorbar(5,fitRes_Pla2_DOPC_Hill_100mOsm(2),fitErr_Pla2_DOPC_Hill_100mOsm(1,2)-fitRes_Pla2_DOPC_Hill_100mOsm(2),fitRes_Pla2_DOPC_Hill_100mOsm(2)-fitErr_Pla2_DOPC_Hill_100mOsm(2,2),'ko','MarkerFaceColor','y');
errorbar(6,fitRes_Pla2_DOPC_Hill_240mOsm(2),fitErr_Pla2_DOPC_Hill_240mOsm(1,2)-fitRes_Pla2_DOPC_Hill_240mOsm(2),fitRes_Pla2_DOPC_Hill_240mOsm(2)-fitErr_Pla2_DOPC_Hill_240mOsm(2,2),'ko','MarkerFaceColor','y');

bar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),'w');
errorbar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,2)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(2),fitRes_Pla2_DOPCDOG_Hill_100mOsm(2)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,2),'ko','MarkerFaceColor','r');
errorbar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,2)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(2),fitRes_Pla2_DOPCDOG_Hill_240mOsm(2)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,2),'ko','MarkerFaceColor','r');

bar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(2),'w');
errorbar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(2),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,2)-fitRes_Alox5_DPPCPS_Hill_100mOsm(2),fitRes_Alox5_DPPCPS_Hill_100mOsm(2)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,2),'ks');
errorbar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(2),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,2)-fitRes_Alox5_DPPCPS_Hill_240mOsm(2),fitRes_Alox5_DPPCPS_Hill_240mOsm(2)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,2),'ks');

bar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(2),'w');
errorbar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(2),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,2)-fitRes_Alox12_DPPCPS_Hill_100mOsm(2),fitRes_Alox12_DPPCPS_Hill_100mOsm(2)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,2),'k^');
errorbar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(2),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,2)-fitRes_Alox12_DPPCPS_Hill_240mOsm(2),fitRes_Alox12_DPPCPS_Hill_240mOsm(2)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,2),'k^');

bar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),'w','LineStyle','--');
bar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),'w');
errorbar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,2)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(2),fitRes_PKCg_DPPChighPS_Hill_100mOsm(2)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,2),'kd','MarkerFaceColor','b');
errorbar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,2)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(2),fitRes_PKCg_DPPChighPS_Hill_240mOsm(2)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,2),'kd','MarkerFaceColor','b');

% plot Imax
figure(5)
bar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(3),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Hill_100mOsm(3),fitErr_Pla2_DPPCPS_Hill_100mOsm(1,3)-fitRes_Pla2_DPPCPS_Hill_100mOsm(3),fitRes_Pla2_DPPCPS_Hill_100mOsm(3)-fitErr_Pla2_DPPCPS_Hill_100mOsm(2,3),'ko');
errorbar(2,fitRes_Pla2_DPPCPS_Hill_240mOsm(3),fitErr_Pla2_DPPCPS_Hill_240mOsm(1,3)-fitRes_Pla2_DPPCPS_Hill_240mOsm(3),fitRes_Pla2_DPPCPS_Hill_240mOsm(3)-fitErr_Pla2_DPPCPS_Hill_240mOsm(2,3),'ko')

bar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(3),'w','LineStyle','--');
bar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(3),'w');
errorbar(3,fitRes_Pla2_DPPCpure_Hill_100mOsm(3),fitErr_Pla2_DPPCpure_Hill_100mOsm(1,3)-fitRes_Pla2_DPPCpure_Hill_100mOsm(3),fitRes_Pla2_DPPCpure_Hill_100mOsm(3)-fitErr_Pla2_DPPCpure_Hill_100mOsm(2,3),'ko','MarkerFaceColor','g');
errorbar(4,fitRes_Pla2_DPPCpure_Hill_240mOsm(3),fitErr_Pla2_DPPCpure_Hill_240mOsm(1,3)-fitRes_Pla2_DPPCpure_Hill_240mOsm(3),fitRes_Pla2_DPPCpure_Hill_240mOsm(3)-fitErr_Pla2_DPPCpure_Hill_240mOsm(2,3),'ko','MarkerFaceColor','g');

bar(5,fitRes_Pla2_DOPC_Hill_100mOsm(3),'w','LineStyle','--');
bar(6,fitRes_Pla2_DOPC_Hill_240mOsm(3),'w');
errorbar(5,fitRes_Pla2_DOPC_Hill_100mOsm(3),fitErr_Pla2_DOPC_Hill_100mOsm(1,3)-fitRes_Pla2_DOPC_Hill_100mOsm(3),fitRes_Pla2_DOPC_Hill_100mOsm(3)-fitErr_Pla2_DOPC_Hill_100mOsm(2,3),'ko','MarkerFaceColor','y');
errorbar(6,fitRes_Pla2_DOPC_Hill_240mOsm(3),fitErr_Pla2_DOPC_Hill_240mOsm(1,3)-fitRes_Pla2_DOPC_Hill_240mOsm(3),fitRes_Pla2_DOPC_Hill_240mOsm(3)-fitErr_Pla2_DOPC_Hill_240mOsm(2,3),'ko','MarkerFaceColor','y');

bar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),'w');
errorbar(7,fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),fitErr_Pla2_DOPCDOG_Hill_100mOsm(1,3)-fitRes_Pla2_DOPCDOG_Hill_100mOsm(3),fitRes_Pla2_DOPCDOG_Hill_100mOsm(3)-fitErr_Pla2_DOPCDOG_Hill_100mOsm(2,3),'ko','MarkerFaceColor','r');
errorbar(8,fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),fitErr_Pla2_DOPCDOG_Hill_240mOsm(1,3)-fitRes_Pla2_DOPCDOG_Hill_240mOsm(3),fitRes_Pla2_DOPCDOG_Hill_240mOsm(3)-fitErr_Pla2_DOPCDOG_Hill_240mOsm(2,3),'ko','MarkerFaceColor','r');

bar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(3),'w');
errorbar(9,fitRes_Alox5_DPPCPS_Hill_100mOsm(3),fitErr_Alox5_DPPCPS_Hill_100mOsm(1,3)-fitRes_Alox5_DPPCPS_Hill_100mOsm(3),fitRes_Alox5_DPPCPS_Hill_100mOsm(3)-fitErr_Alox5_DPPCPS_Hill_100mOsm(2,3),'ks');
errorbar(10,fitRes_Alox5_DPPCPS_Hill_240mOsm(3),fitErr_Alox5_DPPCPS_Hill_240mOsm(1,3)-fitRes_Alox5_DPPCPS_Hill_240mOsm(3),fitRes_Alox5_DPPCPS_Hill_240mOsm(3)-fitErr_Alox5_DPPCPS_Hill_240mOsm(2,3),'ks');

bar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(3),'w');
errorbar(11,fitRes_Alox12_DPPCPS_Hill_100mOsm(3),fitErr_Alox12_DPPCPS_Hill_100mOsm(1,3)-fitRes_Alox12_DPPCPS_Hill_100mOsm(3),fitRes_Alox12_DPPCPS_Hill_100mOsm(3)-fitErr_Alox12_DPPCPS_Hill_100mOsm(2,3),'k^');
errorbar(12,fitRes_Alox12_DPPCPS_Hill_240mOsm(3),fitErr_Alox12_DPPCPS_Hill_240mOsm(1,3)-fitRes_Alox12_DPPCPS_Hill_240mOsm(3),fitRes_Alox12_DPPCPS_Hill_240mOsm(3)-fitErr_Alox12_DPPCPS_Hill_240mOsm(2,3),'k^');

bar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),'w','LineStyle','--');
bar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),'w');
errorbar(13,fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),fitErr_PKCg_DPPChighPS_Hill_100mOsm(1,3)-fitRes_PKCg_DPPChighPS_Hill_100mOsm(3),fitRes_PKCg_DPPChighPS_Hill_100mOsm(3)-fitErr_PKCg_DPPChighPS_Hill_100mOsm(2,3),'kd','MarkerFaceColor','b');
errorbar(14,fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),fitErr_PKCg_DPPChighPS_Hill_240mOsm(1,3)-fitRes_PKCg_DPPChighPS_Hill_240mOsm(3),fitRes_PKCg_DPPChighPS_Hill_240mOsm(3)-fitErr_PKCg_DPPChighPS_Hill_240mOsm(2,3),'kd','MarkerFaceColor','b');

% Calculate and plot Langmuir-fit for Ca2+/Adsorption isotherms
% function: val(Cprot) = Imax/(1+(Kd/Cprot))
% fitRes/fitErr: Kd,Imax 

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
% 1.2) DPPC/PS, 500uM Ca2+
figure(7);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,1:581,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,582:971,1,'ko','-','w');
fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_0mOsm);
fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm=coeffvalues(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);
fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm=confint(fit_Pla2_DPPC_500uMCa_Lm_240mOsm);

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

% 6.2) DPPC/PS, 200uM Ca2+
figure(7);
[fit_Alox5_DPPC_200uMCa_Lm_0mOsm,gof_Alox5_DPPC_200uMCa_Lm_0mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,1:473,1,'ks','--','w');
[fit_Alox5_DPPC_200uMCa_Lm_240mOsm,gof_Alox5_DPPC_200uMCa_Lm_240mOsm]=FitLangmuir(Alox5_DPPC_200uMCa_Lm,473:810,1,'ks','-','w');
fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_0mOsm);
fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm=coeffvalues(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);
fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm=confint(fit_Alox5_DPPC_200uMCa_Lm_240mOsm);
figure(6);

% 7) Alox12-PLAT
% 7.1) DPPC/PS, 20uM Ca2+
[fit_Alox12_DPPCPS_Lm,gof_Alox12_DPPCPS_Lm]=FitLangmuir(Pla2Alox5Alox12_DPPCPS_Lm,889:1231,1,'k^','-','w');
fitRes_Alox12_DPPCPS_Lm=coeffvalues(fit_Alox12_DPPCPS_Lm);
fitErr_Alox12_DPPCPS_Lm=confint(fit_Alox12_DPPCPS_Lm);

% 7.2) DPPC/PS, 200uM Ca2+
figure(7);
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

% plot fitresults;
% plot Imax
figure(9)
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(1),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,1)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(1),fitRes_Pla2_DPPCPS_Lm1_0mOsm(1)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,1),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(1),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,1)-fitRes_Pla2_DPPC_240mOsm_all_Lm(1),fitRes_Pla2_DPPC_240mOsm_all_Lm(1)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,1),'ko');

bar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,1)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(1)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,1),'ko');
errorbar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,1)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(1)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,1),'ko');

bar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(1),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(1),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(1),fitErr_Pla2_DPPCpure_Lm_0mOsm(1,1)-fitRes_Pla2_DPPCpure_Lm_0mOsm(1),fitRes_Pla2_DPPCpure_Lm_0mOsm(1)-fitErr_Pla2_DPPCpure_Lm_0mOsm(2,1),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(1),fitErr_Pla2_DPPCpure_Lm_240mOsm(1,1)-fitRes_Pla2_DPPCpure_Lm_240mOsm(1),fitRes_Pla2_DPPCpure_Lm_240mOsm(1)-fitErr_Pla2_DPPCpure_Lm_240mOsm(2,1),'ko','MarkerFaceColor','g');

bar(7,fitRes_Pla2_DOPC_Lm_0mOsm(1),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Lm_240mOsm(1),'w');
errorbar(7,fitRes_Pla2_DOPC_Lm_0mOsm(1),fitErr_Pla2_DOPC_Lm_0mOsm(1,1)-fitRes_Pla2_DOPC_Lm_0mOsm(1),fitRes_Pla2_DOPC_Lm_0mOsm(1)-fitErr_Pla2_DOPC_Lm_0mOsm(2,1),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Lm_240mOsm(1),fitErr_Pla2_DOPC_Lm_240mOsm(1,1)-fitRes_Pla2_DOPC_Lm_240mOsm(1),fitRes_Pla2_DOPC_Lm_240mOsm(1)-fitErr_Pla2_DOPC_Lm_240mOsm(2,1),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),fitErr_Pla2_DOPCDOG_Lm_0mOsm(1,1)-fitRes_Pla2_DOPCDOG_Lm_0mOsm(1),fitRes_Pla2_DOPCDOG_Lm_0mOsm(1)-fitErr_Pla2_DOPCDOG_Lm_0mOsm(2,1),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),fitErr_Pla2_DOPCDOG_Lm_240mOsm(1,1)-fitRes_Pla2_DOPCDOG_Lm_240mOsm(1),fitRes_Pla2_DOPCDOG_Lm_240mOsm(1)-fitErr_Pla2_DOPCDOG_Lm_240mOsm(2,1),'ko','MarkerFaceColor','r');

bar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),'w');
errorbar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,1)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(1)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,1),'mo');

bar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),'w');
errorbar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,1)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(1)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,1),'ro');

bar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),'w');
errorbar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,1)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(1)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,1),'co');

bar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),'w');
errorbar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,1)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(1)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,1),'bo');

bar(15,fitRes_Alox5_DPPCPS_Lm(1),'w');
errorbar(15,fitRes_Alox5_DPPCPS_Lm(1),fitErr_Alox5_DPPCPS_Lm(1,1)-fitRes_Alox5_DPPCPS_Lm(1),fitRes_Alox5_DPPCPS_Lm(1)-fitErr_Alox5_DPPCPS_Lm(2,1),'ks');

bar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,1)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(1)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,1),'ks');
errorbar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,1)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(1)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,1),'ks');

bar(18,fitRes_Alox12_DPPCPS_Lm(1),'w');
errorbar(18,fitRes_Alox12_DPPCPS_Lm(1),fitErr_Alox12_DPPCPS_Lm(1,1)-fitRes_Alox12_DPPCPS_Lm(1),fitRes_Alox12_DPPCPS_Lm(1)-fitErr_Alox12_DPPCPS_Lm(2,1),'k^');

bar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,1)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(1)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,1),'k^');
errorbar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,1)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(1)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,1),'k^');

bar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),'FaceColor',[0.9 0.9 0.9]);
errorbar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,1)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,1),'kd','MarkerFaceColor','b');
errorbar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,1)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,1),'kd','MarkerFaceColor','b');

% plot Kd
figure(10)
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,2)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(2),fitRes_Pla2_DPPCPS_Lm1_0mOsm(2)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,2),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,2)-fitRes_Pla2_DPPC_240mOsm_all_Lm(2),fitRes_Pla2_DPPC_240mOsm_all_Lm(2)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,2),'ko');

bar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,2),'ko');
errorbar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,2)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(2)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,2),'ko');

bar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(2),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(2),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(2),fitErr_Pla2_DPPCpure_Lm_0mOsm(1,2)-fitRes_Pla2_DPPCpure_Lm_0mOsm(2),fitRes_Pla2_DPPCpure_Lm_0mOsm(2)-fitErr_Pla2_DPPCpure_Lm_0mOsm(2,2),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(2),fitErr_Pla2_DPPCpure_Lm_240mOsm(1,2)-fitRes_Pla2_DPPCpure_Lm_240mOsm(2),fitRes_Pla2_DPPCpure_Lm_240mOsm(2)-fitErr_Pla2_DPPCpure_Lm_240mOsm(2,2),'ko','MarkerFaceColor','g');

bar(7,fitRes_Pla2_DOPC_Lm_0mOsm(2),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Lm_240mOsm(2),'w');
errorbar(7,fitRes_Pla2_DOPC_Lm_0mOsm(2),fitErr_Pla2_DOPC_Lm_0mOsm(1,2)-fitRes_Pla2_DOPC_Lm_0mOsm(2),fitRes_Pla2_DOPC_Lm_0mOsm(2)-fitErr_Pla2_DOPC_Lm_0mOsm(2,2),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Lm_240mOsm(2),fitErr_Pla2_DOPC_Lm_240mOsm(1,2)-fitRes_Pla2_DOPC_Lm_240mOsm(2),fitRes_Pla2_DOPC_Lm_240mOsm(2)-fitErr_Pla2_DOPC_Lm_240mOsm(2,2),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),fitErr_Pla2_DOPCDOG_Lm_0mOsm(1,2)-fitRes_Pla2_DOPCDOG_Lm_0mOsm(2),fitRes_Pla2_DOPCDOG_Lm_0mOsm(2)-fitErr_Pla2_DOPCDOG_Lm_0mOsm(2,2),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),fitErr_Pla2_DOPCDOG_Lm_240mOsm(1,2)-fitRes_Pla2_DOPCDOG_Lm_240mOsm(2),fitRes_Pla2_DOPCDOG_Lm_240mOsm(2)-fitErr_Pla2_DOPCDOG_Lm_240mOsm(2,2),'ko','MarkerFaceColor','r');

bar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(2)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,2),'mo');

bar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(2)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,2),'ro');

bar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),'w');
errorbar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,2)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(2)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,2),'co');

bar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),'w');
errorbar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,2)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(2)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,2),'bo');

bar(15,fitRes_Alox5_DPPCPS_Lm(2),'w');
errorbar(15,fitRes_Alox5_DPPCPS_Lm(2),fitErr_Alox5_DPPCPS_Lm(1,2)-fitRes_Alox5_DPPCPS_Lm(2),fitRes_Alox5_DPPCPS_Lm(2)-fitErr_Alox5_DPPCPS_Lm(2,2),'ks');

bar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,2),'ks');
errorbar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,2),'ks');

bar(18,fitRes_Alox12_DPPCPS_Lm(2),'w');
errorbar(18,fitRes_Alox12_DPPCPS_Lm(2),fitErr_Alox12_DPPCPS_Lm(1,2)-fitRes_Alox12_DPPCPS_Lm(2),fitRes_Alox12_DPPCPS_Lm(2)-fitErr_Alox12_DPPCPS_Lm(2,2),'k^');

bar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,2),'k^');
errorbar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,2)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(2)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,2),'k^');

bar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),'FaceColor',[0.9 0.9 0.9]);
errorbar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,2),'kd','MarkerFaceColor','b');
errorbar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,2)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,2),'kd','MarkerFaceColor','b');


set(gca,'YScale','log')
figure(7), set(gca,'Color',[0.9 0.9 0.9])
%plot n

figure(11)
bar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(3),'w','LineStyle','--'),hold
bar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(3),'w');
errorbar(1,fitRes_Pla2_DPPCPS_Lm1_0mOsm(3),fitErr_Pla2_DPPCPS_Lm1_0mOsm(1,3)-fitRes_Pla2_DPPCPS_Lm1_0mOsm(3),fitRes_Pla2_DPPCPS_Lm1_0mOsm(3)-fitErr_Pla2_DPPCPS_Lm1_0mOsm(2,3),'ko');
errorbar(2,fitRes_Pla2_DPPC_240mOsm_all_Lm(3),fitErr_Pla2_DPPC_240mOsm_all_Lm(1,3)-fitRes_Pla2_DPPC_240mOsm_all_Lm(3),fitRes_Pla2_DPPC_240mOsm_all_Lm(3)-fitErr_Pla2_DPPC_240mOsm_all_Lm(2,3),'ko');

bar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(3),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(3),'FaceColor',[0.9 0.9 0.9]);
errorbar(3,fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(3),fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(1,3)-fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(3),fitRes_Pla2_DPPC_500uMCa_Lm_0mOsm(3)-fitErr_Pla2_DPPC_500uMCa_Lm_0mOsm(2,3),'ko');
errorbar(4,fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(3),fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(1,3)-fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(3),fitRes_Pla2_DPPC_500uMCa_Lm_240mOsm(3)-fitErr_Pla2_DPPC_500uMCa_Lm_240mOsm(2,3),'ko');

bar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(3),'w','LineStyle','--');
bar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(3),'w');
errorbar(5,fitRes_Pla2_DPPCpure_Lm_0mOsm(3),fitErr_Pla2_DPPCpure_Lm_0mOsm(1,3)-fitRes_Pla2_DPPCpure_Lm_0mOsm(3),fitRes_Pla2_DPPCpure_Lm_0mOsm(3)-fitErr_Pla2_DPPCpure_Lm_0mOsm(2,3),'ko','MarkerFaceColor','g');
errorbar(6,fitRes_Pla2_DPPCpure_Lm_240mOsm(3),fitErr_Pla2_DPPCpure_Lm_240mOsm(1,3)-fitRes_Pla2_DPPCpure_Lm_240mOsm(3),fitRes_Pla2_DPPCpure_Lm_240mOsm(3)-fitErr_Pla2_DPPCpure_Lm_240mOsm(2,3),'ko','MarkerFaceColor','g');

bar(7,fitRes_Pla2_DOPC_Lm_0mOsm(3),'w','LineStyle','--');
bar(8,fitRes_Pla2_DOPC_Lm_240mOsm(3),'w');
errorbar(7,fitRes_Pla2_DOPC_Lm_0mOsm(3),fitErr_Pla2_DOPC_Lm_0mOsm(1,3)-fitRes_Pla2_DOPC_Lm_0mOsm(3),fitRes_Pla2_DOPC_Lm_0mOsm(3)-fitErr_Pla2_DOPC_Lm_0mOsm(2,3),'ko','MarkerFaceColor','y');
errorbar(8,fitRes_Pla2_DOPC_Lm_240mOsm(3),fitErr_Pla2_DOPC_Lm_240mOsm(1,3)-fitRes_Pla2_DOPC_Lm_240mOsm(3),fitRes_Pla2_DOPC_Lm_240mOsm(3)-fitErr_Pla2_DOPC_Lm_240mOsm(2,3),'ko','MarkerFaceColor','y');

bar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(3),'w','LineStyle','--');
bar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(3),'w');
errorbar(9,fitRes_Pla2_DOPCDOG_Lm_0mOsm(3),fitErr_Pla2_DOPCDOG_Lm_0mOsm(1,3)-fitRes_Pla2_DOPCDOG_Lm_0mOsm(3),fitRes_Pla2_DOPCDOG_Lm_0mOsm(3)-fitErr_Pla2_DOPCDOG_Lm_0mOsm(2,3),'ko','MarkerFaceColor','r');
errorbar(10,fitRes_Pla2_DOPCDOG_Lm_240mOsm(3),fitErr_Pla2_DOPCDOG_Lm_240mOsm(1,3)-fitRes_Pla2_DOPCDOG_Lm_240mOsm(3),fitRes_Pla2_DOPCDOG_Lm_240mOsm(3)-fitErr_Pla2_DOPCDOG_Lm_240mOsm(2,3),'ko','MarkerFaceColor','r');

bar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(3),'w');
errorbar(11,fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(3),fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(1,3)-fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(3),fitRes_Y90FV91F_DPPCPS_Lm2_240mOsm(3)-fitErr_Y90FV91F_DPPCPS_Lm2_240mOsm(2,3),'mo');

bar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(3),'w');
errorbar(12,fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(3),fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(1,3)-fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(3),fitRes_Y90AV91A_DPPCPS_Lm3_240mOsm(3)-fitErr_Y90AV91A_DPPCPS_Lm3_240mOsm(2,3),'ro');

bar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(3),'w');
errorbar(13,fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(3),fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(1,3)-fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(3),fitRes_L32FL33F_DPPCPS_Lm2_240mOsm(3)-fitErr_L32FL33F_DPPCPS_Lm2_240mOsm(2,3),'co');

bar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(3),'w');
errorbar(14,fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(3),fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(1,3)-fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(3),fitRes_L32AL33A_DPPCPS_Lm3_240mOsm(3)-fitErr_L32AL33A_DPPCPS_Lm3_240mOsm(2,3),'bo');

bar(15,fitRes_Alox5_DPPCPS_Lm(3),'w');
errorbar(15,fitRes_Alox5_DPPCPS_Lm(3),fitErr_Alox5_DPPCPS_Lm(1,3)-fitRes_Alox5_DPPCPS_Lm(3),fitRes_Alox5_DPPCPS_Lm(3)-fitErr_Alox5_DPPCPS_Lm(2,3),'ks');

bar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(3),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(3),'FaceColor',[0.9 0.9 0.9]);
errorbar(16,fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(3),fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(1,3)-fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(3),fitRes_Alox5_DPPC_200uMCa_Lm_0mOsm(3)-fitErr_Alox5_DPPC_200uMCa_Lm_0mOsm(2,3),'ks');
errorbar(17,fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(3),fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(1,3)-fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(3),fitRes_Alox5_DPPC_200uMCa_Lm_240mOsm(3)-fitErr_Alox5_DPPC_200uMCa_Lm_240mOsm(2,3),'ks');

bar(18,fitRes_Alox12_DPPCPS_Lm(3),'w');
errorbar(18,fitRes_Alox12_DPPCPS_Lm(3),fitErr_Alox12_DPPCPS_Lm(1,3)-fitRes_Alox12_DPPCPS_Lm(3),fitRes_Alox12_DPPCPS_Lm(3)-fitErr_Alox12_DPPCPS_Lm(2,3),'k^');

bar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(3),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(3),'FaceColor',[0.9 0.9 0.9]);
errorbar(19,fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(3),fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(1,3)-fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(3),fitRes_Alox12_DPPC_200uMCa_Lm_0mOsm(3)-fitErr_Alox12_DPPC_200uMCa_Lm_0mOsm(2,3),'k^');
errorbar(20,fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(3),fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(1,3)-fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(3),fitRes_Alox12_DPPC_200uMCa_Lm_240mOsm(3)-fitErr_Alox12_DPPC_200uMCa_Lm_240mOsm(2,3),'k^');

bar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(3),'FaceColor',[0.9 0.9 0.9],'LineStyle','--');
bar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(3),'FaceColor',[0.9 0.9 0.9]);
errorbar(21,fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(3),fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(1,3)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(3),fitRes_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(3)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_0mOsm(2,3),'kd','MarkerFaceColor','b');
errorbar(22,fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(3),fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(1,3)-fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(3),fitRes_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(3)-fitErr_PKCg_DPPChighPS_200uMCa_Lm_240mOsm(2,3),'kd','MarkerFaceColor','b');



%determine Kd for ARFGAP1-ALPS +/- Ca2+
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
[fit_Alps_DPPCpure_iso_Lm_Ca,gof_Alps_DPPCpure_iso_Lm_Ca]=FitLangmuir(Alps_DPPCpure_iso_Lm,228:478,1,'kp','--','k');
fitRes_Alps_DPPCpure_iso_Lm=coeffvalues(fit_Alps_DPPCpure_iso_Lm);
fitErr_Alps_DPPCpure_iso_Lm=confint(fit_Alps_DPPCpure_iso_Lm);
fitRes_Alps_DPPCpure_iso_Lm_Ca=coeffvalues(fit_Alps_DPPCpure_iso_Lm_Ca);
fitErr_Alps_DPPCpure_iso_Lm_Ca=confint(fit_Alps_DPPCpure_iso_Lm_Ca);

[fit_Alps_DPPCpure_hypo_Lm,gof_Alps_DPPCpure_hypo_Lm]=FitLangmuir(Alps_DPPCpure_hypo_Lm,1:457,1,'kp','-','g');
[fit_Alps_DPPCpure_hypo_Lm_Ca,gof_Alps_DPPCpure_hypo_Lm_Ca]=FitLangmuir(Alps_DPPCpure_hypo_Lm,458:915,1,'kp','-','k');
fitRes_Alps_DPPCpure_hypo_Lm=coeffvalues(fit_Alps_DPPCpure_hypo_Lm);
fitErr_Alps_DPPCpure_hypo_Lm=confint(fit_Alps_DPPCpure_hypo_Lm);
fitRes_Alps_DPPCpure_hypo_Lm_Ca=coeffvalues(fit_Alps_DPPCpure_hypo_Lm_Ca);
fitErr_Alps_DPPCpure_hypo_Lm_Ca=confint(fit_Alps_DPPCpure_hypo_Lm_Ca);

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
 

% cPla2 Ca2+ sensitivity on intact nuclear membranes
figure(16);
[fit_cPla2_Nucleus_Hill_noPVP,gof_cPla2_Nucleus_Hill_noPVP]=FitHill(cPla2_Nucleus_Hill,1:990,0,'ko','-','k');
[fit_cPla2_Nucleus_Hill_midPVP,gof_cPla2_Nucleus_Hill_midPVP]=FitHill(cPla2_Nucleus_Hill,991:1737,1,'ko','-.','k');
[fit_cPla2_Nucleus_Hill_highPVP,gof_cPla2_Nucleus_Hill_highPVP]=FitHill(cPla2_Nucleus_Hill,1738:3524,1,'ko','--','k');

fitRes_cPla2_Nucleus_Hill_noPVP=coeffvalues(fit_cPla2_Nucleus_Hill_noPVP);
fitErr_cPla2_Nucleus_Hill_noPVP=confint(fit_cPla2_Nucleus_Hill_noPVP);
fitRes_cPla2_Nucleus_Hill_midPVP=coeffvalues(fit_cPla2_Nucleus_Hill_midPVP);
fitErr_cPla2_Nucleus_Hill_midPVP=confint(fit_cPla2_Nucleus_Hill_midPVP);
fitRes_cPla2_Nucleus_Hill_highPVP=coeffvalues(fit_cPla2_Nucleus_Hill_highPVP);
fitErr_cPla2_Nucleus_Hill_highPVP=confint(fit_cPla2_Nucleus_Hill_highPVP);

%Plot Binding versus osmotic shock full length cPla2 in A549
%(permeabilized)

OS0=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==2.5));
OS20=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==2.0));
OS40=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==1.5));
OS60=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==1));
OS80=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==0.5));
OS100=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==0));
Imat=padcat(OS0,OS20,OS40,OS60,OS80,OS100);
figure(17), dotplot(Imat,0.1,0.01,'.',[0.5 0.5 0.5],5,'none');

%Iso2Hypo shift experiment cPla2-C2 on DPPC/PS GUVs
figure(18)
set(figure(18),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
scatter(4*pi*cPla2_Hyper2Hypo.radius_micron.^2, cPla2_Hyper2Hypo.Circularity,'r');
% scatter(cPla2_Hyper2Hypo.RenderedAreaum2,cPla2_Hyper2Hypo.Circularity,'r')
yyaxis left
scatter(4*pi*cPla2_Hyper2Hypo.radius_micron.^2, cPla2_Hyper2Hypo.NormalizedGFPintensity,'k');
% scatter(cPla2_Hyper2Hypo.RenderedAreaum2,cPla2_Hyper2Hypo.NormalizedGFPintensity,'k')




figure(19)
set(figure(19),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(cPla2_Hyper2Hypo.TimePointmin,cPla2_Hyper2Hypo.Circularity,'r')
yyaxis left
plot(cPla2_Hyper2Hypo.TimePointmin,cPla2_Hyper2Hypo.NormalizedGFPintensity,'k')

%Plot desoprtion of cPla2-C2 after GUV rupture

figure(20)
set(figure(19),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(cPla2_GUVrupture.TimePointmin,cPla2_GUVrupture.radius_micron,'r')
yyaxis left
plot(cPla2_GUVrupture.TimePointmin,cPla2_GUVrupture.NormalizedGFPintensity,'k')

%Plot Binding vs Osmolarity

% cPla2-C2

dM0mOsm_cPla2=cPla2vsOsm.NormalizedGFPintensity(find(cPla2vsOsm.OsmolaritymOsm==0));
dM50mOsm_cPla2=cPla2vsOsm.NormalizedGFPintensity(find(cPla2vsOsm.OsmolaritymOsm==50));
dM100mOsm_cPla2=cPla2vsOsm.NormalizedGFPintensity(find(cPla2vsOsm.OsmolaritymOsm==100));
dM170mOsm_cPla2=cPla2vsOsm.NormalizedGFPintensity(find(cPla2vsOsm.OsmolaritymOsm==170));
dM240mOsm_cPla2=cPla2vsOsm.NormalizedGFPintensity(find(cPla2vsOsm.OsmolaritymOsm==240));

Imat_cPla2=padcat(dM0mOsm_cPla2,dM50mOsm_cPla2,dM100mOsm_cPla2,dM170mOsm_cPla2,dM240mOsm_cPla2);
figure(21), dotplot(Imat_cPla2,0.1,0.01,'o',[0 0 0],5,'w');

%Alox5a-PLAT

dM0mOsm_Alox5=Alox5vsOsm.NormalizedGFPintensity(find(Alox5vsOsm.OsmolaritymOsm==0));
dM50mOsm_Alox5=Alox5vsOsm.NormalizedGFPintensity(find(Alox5vsOsm.OsmolaritymOsm==50));
dM100mOsm_Alox5=Alox5vsOsm.NormalizedGFPintensity(find(Alox5vsOsm.OsmolaritymOsm==100));
dM170mOsm_Alox5=Alox5vsOsm.NormalizedGFPintensity(find(Alox5vsOsm.OsmolaritymOsm==170));

Imat_Alox5=padcat(dM0mOsm_Alox5,dM50mOsm_Alox5,dM100mOsm_Alox5,dM170mOsm_Alox5);
figure(22), dotplot(Imat_Alox5,0.1,0.01,'s', [0 0 0],5,'w');

%Alox12-PLAT

dM0mOsm_Alox12=Alox12vsOsm.NormalizedGFPintensity(find(Alox12vsOsm.OsmolaritymOsm==0));
dM50mOsm_Alox12=Alox12vsOsm.NormalizedGFPintensity(find(Alox12vsOsm.OsmolaritymOsm==50));
dM100mOsm_Alox12=Alox12vsOsm.NormalizedGFPintensity(find(Alox12vsOsm.OsmolaritymOsm==100));
dM140mOsm_Alox12=Alox12vsOsm.NormalizedGFPintensity(find(Alox12vsOsm.OsmolaritymOsm==140));

Imat_Alox12=padcat(dM0mOsm_Alox12,dM50mOsm_Alox12,dM100mOsm_Alox12,dM140mOsm_Alox12);
figure(23), dotplot(Imat_Alox12,0.1,0.01,'^', [0 0 0],5,'w');

%PKCg-C2

dM0mOsm_PKCg=PKCgvsOsm.NormalizedGFPintensity(find(PKCgvsOsm.OsmolaritymOsm==0));
dM240mOsm_PKCg=PKCgvsOsm.NormalizedGFPintensity(find(PKCgvsOsm.OsmolaritymOsm==240));

Imat_PKCg=padcat(dM0mOsm_PKCg,dM240mOsm_PKCg);
figure(24), dotplot(Imat_PKCg,0.1,0.01,'d', [0 0 0],5, 'b');

%Plot Binding vs lipids

%cPla2-C2

cPla2_DPPCpure_0mOsm=cPla2_lipids_0mOsm.NormalizedGFPintensity(find(cPla2_lipids_0mOsm.LipidConcentration=='DPPC'));
cPla2_DOPC_0mOsm=cPla2_lipids_0mOsm.NormalizedGFPintensity(find(cPla2_lipids_0mOsm.LipidConcentration=='DOPC'));
cPla2_DOPC10DOG_0mOsm=cPla2_lipids_0mOsm.NormalizedGFPintensity(find(cPla2_lipids_0mOsm.LipidConcentration=='DOPC + 10% DOG'));
cPla2_DOPC18DOG_0mOsm=cPla2_lipids_0mOsm.NormalizedGFPintensity(find(cPla2_lipids_0mOsm.LipidConcentration=='DOPC + 18% DOG'));

Imat_cPla2_lipids=padcat(cPla2_DPPCpure_0mOsm,cPla2_DOPC_0mOsm,cPla2_DOPC10DOG_0mOsm,cPla2_DOPC18DOG_0mOsm);
figure(25), dotplot(Imat_cPla2_lipids,0.1,0.01,'o', 'none',5, 'w');

% Alox5a-PLAT

Alox5_DPPCpure_0mOsm=Alox5_lipids_0mOsm.NormalizedGFPintensity(find(Alox5_lipids_0mOsm.LipidConcentration=='DPPC'));
Alox5_DOPC_0mOsm=Alox5_lipids_0mOsm.NormalizedGFPintensity(find(Alox5_lipids_0mOsm.LipidConcentration=='DOPC'));
Alox5_DOPC10DOG_0mOsm=Alox5_lipids_0mOsm.NormalizedGFPintensity(find(Alox5_lipids_0mOsm.LipidConcentration=='DOPC + 10% DOG'));
Alox5_DOPC18DOG_0mOsm=Alox5_lipids_0mOsm.NormalizedGFPintensity(find(Alox5_lipids_0mOsm.LipidConcentration=='DOPC + 18% DOG'));

Imat_Alox5_lipids=padcat(Alox5_DPPCpure_0mOsm,Alox5_DOPC_0mOsm,Alox5_DOPC10DOG_0mOsm,Alox5_DOPC18DOG_0mOsm);
figure(26), dotplot(Imat_Alox5_lipids,0.1,0.01,'o', 'none',5, 'w');

% Alox12-PLAT

Alox12_DPPCpure_0mOsm=Alox12_lipids_0mOsm.NormalizedGFPintensity(find(Alox12_lipids_0mOsm.LipidConcentration=='DPPC'));
Alox12_DOPC_0mOsm=Alox12_lipids_0mOsm.NormalizedGFPintensity(find(Alox12_lipids_0mOsm.LipidConcentration=='DOPC'));
Alox12_DOPC10DOG_0mOsm=Alox12_lipids_0mOsm.NormalizedGFPintensity(find(Alox12_lipids_0mOsm.LipidConcentration=='DOPC + 10% DOG'));
Alox12_DOPC18DOG_0mOsm=Alox12_lipids_0mOsm.NormalizedGFPintensity(find(Alox12_lipids_0mOsm.LipidConcentration=='DOPC + 18% DOG'));

Imat_Alox12_lipids=padcat(Alox12_DPPCpure_0mOsm,Alox12_DOPC_0mOsm,Alox12_DOPC10DOG_0mOsm,Alox12_DOPC18DOG_0mOsm);
figure(27), dotplot(Imat_Alox12_lipids,0.1,0.01,'o', 'none',5, 'w');

%Competetion exps

%alps-mCherry first, cPla2-C2-eGFP second
figure(28)

[AvE1,Std1,t]=GUVadsoprtionVstime(AlpsmCh_first);
[AvE2,Std2]=GUVadsoprtionVstime(cPla2eGFP_sec);

shadedErrorBaryy(t,AvE1,Std1,'r',[0 15],[0,5,10,15],t,AvE2,Std2,'g',[0 110],[0,20,40,60,80,100]);

%alps-mCherry first, blank solution (No fluoresence protein) after
figure(28)

[AvE1,Std1,t]=GUVadsoprtionVstime(AlpsmCh_first_no_cPla2eGFP);

shadedErrorBaryy(t,AvE1,Std1,'r',[0 15],[0,5,10,15]);

%alps-eGFP first, cPla2-C2-mCherry second
figure(29)

[AvE1,Std1,t]=GUVadsoprtionVstime(AlpseGFP_first);
[AvE2,Std2]=GUVadsoprtionVstime(cPla2mCh_second);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 5],[1,2,3,4,5],t,AvE2,Std2,'r',[0 25],[0,5,10,15,20,25]);

%cPla2-C2-eGFP first, Alps-mCherry second
figure(30)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2eGFP_first);
[AvE2,Std2]=GUVadsoprtionVstime(AlpsmCh_second);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 100],[0,20,40,60,80,100],t,AvE2,Std2,'r',[0 15],[0,5,10,15]);

%cPla2-C2-mCherry first, Alps-eGFP second
figure(31)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2mCh_first);
[AvE2,Std2]=GUVadsoprtionVstime(AlpseGFP_second);

shadedErrorBaryy(t,AvE2,Std2,'g',[0 10],[0,5,10],t,AvE1,Std1,'r',[0 10],[0,5,10]);

%noCa: cPla2-C2-eGFP first, Alps-mCherry second
figure(32)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2eGFP_noCa_first)
[AvE2,Std2]=GUVadsoprtionVstime(AlpsmCh_noCa_second);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 20],[0,5,10,15,20],t,AvE2,Std2,'r',[0 15],[0,5,10,15]);

%noCa: cPla2-C2-mCherry first, Alps-eGFP second
figure(33)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2mCh_noCa_first);
[AvE2,Std2]=GUVadsoprtionVstime(AlpseGFP_noCa_second);

shadedErrorBaryy(t,AvE2,Std2,'g',[0 10],[0,5,10],t,AvE1,Std1,'r',[0 6],[0,3,6]);

%Plot GUV radius distribution

figure(34), histogram(GUVdistribution.radius_micron);

%plot GUV unilamellar percentage original vs. modified

GUVuni_old=GUVFractionUniLam.UnilamellarRatio(find(GUVFractionUniLam.Approaches=='Original Approach'));
GUVuni_new=GUVFractionUniLam.UnilamellarRatio(find(GUVFractionUniLam.Approaches=='Modified Approach'));

Mat_GUVuni=padcat(GUVuni_old, GUVuni_new);
figure(35), dotplot(Mat_GUVuni,0.1,0.01,'o', 'none',5, [0.5, 0.5, 0.5]);

%plot GUV circularity original vs. modified

GUVcirc_old=GUVCircularity.Circularity(find(GUVCircularity.Approaches=='Original Approach'));
GUVcirc_new=GUVCircularity.Circularity(find(GUVCircularity.Approaches=='Modified Approach'));

Mat_GUVcirc=padcat(GUVcirc_old, GUVcirc_new);
figure(36), dotplot(Mat_GUVcirc,0.1,0.01,'o', 'none',5, [0.5, 0.5, 0.5]);


%Plot desoprtion of Alox5a-PLAT after GUV rupture

figure(37)
set(figure(37),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alox5_GUV_Rupture.TimePointmin,Alox5_GUV_Rupture.radius_micron,'r')
yyaxis left
plot(Alox5_GUV_Rupture.TimePointmin,Alox5_GUV_Rupture.NormalizedGFPintensity,'k')


%Plot desoprtion of Alox12-PLAT after GUV rupture

figure(38)
set(figure(38),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alox12_GUV_Rupture.TimePointmin,Alox12_GUV_Rupture.radius_micron,'r')
yyaxis left
plot(Alox12_GUV_Rupture.TimePointmin,Alox12_GUV_Rupture.NormalizedGFPintensity,'k')

%Plot desoprtion of Alps-EGFP after GUV rupture

figure(38)
set(figure(38),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alps_GUV_Rupture.TimePointmin,Alps_GUV_Rupture.radius_micron,'r')
yyaxis left
plot(Alps_GUV_Rupture.TimePointmin,Alps_GUV_Rupture.NormalizedGFPintensity,'k')

% cPla2 C2 MK2 vs cPla2 C2 EGFP (Tag Competition)
figure(39)

[AvE1,Std1,t]=GUVadsoprtionVstime(EGFP_1ST_MK2_2ND);
[AvE2,Std2]=GUVadsoprtionVstime(MK2_1ST_EGFP_2ND);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 1.1],[0,0.2,0.4,0.6,0.8,1.0],t,AvE2,Std2,'r',[0 1.1],[0,0.2,0.4,0.6,0.8,1.0]);

% cPla2 C2 mCherry vs cPla2 C2 EGFP (Tag Competition)
figure(40)

[AvE1,Std1,t]=GUVadsoprtionVstime(EGFP_1ST_mCherry_2ND);
[AvE2,Std2]=GUVadsoprtionVstime(mCherry_1ST_EGFP_2ND);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 1.0],[0,0.2,0.4,0.6,0.8,1.0],t,AvE2,Std2,'r',[0 1.0],[0,0.2,0.4,0.6,0.8,1.0]);




