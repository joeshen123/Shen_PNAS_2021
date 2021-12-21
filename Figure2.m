%Figure 2A: cPla2-C2-eGFP first, Alps-mCherry second
figure(30)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2eGFP_first);
[AvE2,Std2]=GUVadsoprtionVstime(AlpsmCh_second);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 100],[0,20,40,60,80,100],t,AvE2,Std2,'r',[0 15],[0,5,10,15]);

%Figure 2B: alps-mCherry first, cPla2-C2-eGFP second
figure(28)

[AvE1,Std1,t]=GUVadsoprtionVstime(AlpsmCh_first);
[AvE2,Std2]=GUVadsoprtionVstime(cPla2eGFP_sec);

shadedErrorBaryy(t,AvE1,Std1,'r',[0 15],[0,5,10,15],t,AvE2,Std2,'g',[0 110],[0,20,40,60,80,100]);

%Figure 2C: noCa: cPla2-C2-eGFP first, Alps-mCherry second
figure(32)

[AvE1,Std1,t]=GUVadsoprtionVstime(cPla2eGFP_noCa_first);
[AvE2,Std2]=GUVadsoprtionVstime(AlpsmCh_noCa_second);

shadedErrorBaryy(t,AvE1,Std1,'g',[0 20],[0,5,10,15,20],t,AvE2,Std2,'r',[0 15],[0,5,10,15]);