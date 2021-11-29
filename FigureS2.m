%FigureS2b: 
%Plot GUV radius distribution

figure(34), histogram(GUVdistribution.radius_micron);

%Figure S2c: Check GUV unilamellarity and circularity

%plot GUV unilamellar percentage original vs. modified

GUVuni_old=GUVFractionUniLam.UnilamellarRatio(find(GUVFractionUniLam.Approaches=='Original Approach'));
GUVuni_new=GUVFractionUniLam.UnilamellarRatio(find(GUVFractionUniLam.Approaches=='Modified Approach'));

Mat_GUVuni=padcat(GUVuni_old, GUVuni_new);
figure(35), dotplot(Mat_GUVuni,0.1,0.01);


%Unilamellar Percentage Statistical Test
[h,p] = ttest2(GUVuni_old,GUVuni_new);

%plot GUV circularity original vs. modified

GUVcirc_old=GUVCircularity.Circularity(find(GUVCircularity.Approaches=='Original Approach'));
GUVcirc_new=GUVCircularity.Circularity(find(GUVCircularity.Approaches=='Modified Approach'));

Mat_GUVcirc=padcat(GUVcirc_old, GUVcirc_new);
figure(36), dotplot(Mat_GUVcirc,0.1,0.01);

%Circularity Statistical Test
[h1,p1] = ttest2(GUVcirc_old,GUVcirc_new);