%DatasetS1: Additional repeat of Zebrafish cPla2-C2-eGFP binding
%experiments with DPPC + 16%PS. The fitting parameters are stored in
%variables starting with fit (e.g. fit_Pla2_DPPCPS_Hill_100mOsm)

%Zebrafish  Pla2-C2 DPPC/PS Iso vs Hypo Calcium Hill Original
figure(1);
[fit_Pla2_DPPCPS_Hill_100mOsm,gof_Pla2_DPPCPS_Hill_100mOsm]=FitHill(Pla2_DPPCPS_Hill,1:414,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm,gof_Pla2_DPPCPS_Hill_240mOsm]=FitHill(Pla2_DPPCPS_Hill,414:902,1,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Calcium Hill Repeat
figure(2);
[fit_Pla2_DPPCPS_Hill_100mOsm_1,gof_Pla2_DPPCPS_Hill_100mOsm_1]=FitHill(Pla2_DPPC_PS_Hill_Repeat,1:916,0,'ko','--','w');
[fit_Pla2_DPPCPS_Hill_240mOsm_1,gof_Pla2_DPPCPS_Hill_240mOsm_1]=FitHill(Pla2_DPPC_PS_Hill_Repeat,917:1617,1,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Original
figure(3);
[fit_Pla2_DPPCPS_0mOsm,gof_Pla2_DPPCPS_Lm1_0mOsm]=FitLangmuir(Pla2_DPPCPS_Lm1,1:719,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm,gof_Pla2_DPPC_240mOsm]=FitLangmuir(Pla2_DPPCPS_Lm1,720:1189,1,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Original2
figure(4);
[fit_Pla2_DPPC_240mOsm_1,gof_Pla2_DPPC_240mOsm_1]=FitLangmuir(Pla2_DPPCPS_Lm2,1:461,0,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Original3
figure(5);
[fit_Pla2_DPPC_240mOsm_2,gof_Pla2_DPPC_240mOsm_2]=FitLangmuir(Pla2_DPPCPS_Lm3,1:389,0,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Original4
figure(6);
[fit_Pla2_DPPC_240mOsm_3,gof_Pla2_DPPC_240mOsm_3]=FitLangmuir(Pla2Alox5Alox12_DPPCPS_Lm,1:497,0,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Repeat
figure(7);
[fit_Pla2_DPPCPS_0mOsm_r,gof_Pla2_DPPCPS_0mOsm_r]=FitLangmuir(Pla2_DPPCPS_Lm4,1:643,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_r,gof_Pla2_DPPC_240mOsm_r]=FitLangmuir(Pla2_DPPCPS_Lm4,644:1410,1,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS Iso vs Hypo Langmuir Repeat2
figure(8);
[fit_Pla2_DPPCPS_0mOsm_r1,gof_Pla2_DPPCPS_Lm1_0mOsm_r1]=FitLangmuir(Pla2_DPPCPS_Lm5,1:1108,0,'ko','--','w');
[fit_Pla2_DPPC_240mOsm_r1,gof_Pla2_DPPC_240mOsm_r1]=FitLangmuir(Pla2_DPPCPS_Lm5,1109:1885,1,'ko','-','w');


%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir (500um Ca)
figure(9);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm,gof_Pla2_DPPC_500uMCa_Lm_0mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,1:581,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm,gof_Pla2_DPPC_500uMCa_Lm_240mOsm]=FitLangmuir(Pla2_DPPC_500uMCa_Lm,582:971,1,'ko','-','w');

%Zebrafish cPla2 C2 DPPC/PS  Hypo Langmuir Repeat (500um Ca)
figure(10);
[fit_Pla2_DPPC_500uMCa_Lm_0mOsm_1,gof_Pla2_DPPC_500uMCa_Lm_0mOsm_1]=FitLangmuir(Pla2_DPPC_500uMCa_Lm1,1:515,0,'ko','--','w');
[fit_Pla2_DPPC_500uMCa_Lm_240mOsm_1,gof_Pla2_DPPC_500uMCa_Lm_240mOsm_1]=FitLangmuir(Pla2_DPPC_500uMCa_Lm1,515:1120,1,'ko','-','w');
