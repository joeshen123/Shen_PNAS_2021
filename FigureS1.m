
%Figure S1d cPla2 C2-eGFP Calcium Mutant binding (60 min)
WT=D3487_WT.NormalizedGFPintensity(find(D3487_WT.TimePoint==60));
K=D3487K.NormalizedGFPintensity(find(D3487K.TimePoint==60));
R=D3487R.NormalizedGFPintensity(find(D3487R.TimePoint==60));

Mat_D3487=padcat(WT,K,R);
figure(36), dotplot(Mat_D3487,0.1, 0.01);
ylim([0,70]);

%WT and D3487K Statistical Test
[h,p] = ttest2(WT,K);
%WT and D3487R Statistical Test
[h1,p1] = ttest2(WT,R);