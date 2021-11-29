%Figure S3a
%Plot desoprtion of Alox5a-PLAT after GUV rupture

figure(37)
set(figure(37),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alox5_GUV_Rupture.TimePointmin,Alox5_GUV_Rupture.radius_micron,'r')
yyaxis left
plot(Alox5_GUV_Rupture.TimePointmin,Alox5_GUV_Rupture.NormalizedGFPintensity,'k')
ylim([0,50])

%Figure S3b
%Plot desoprtion of Alox12-PLAT after GUV rupture

figure(38)
set(figure(38),'defaultAxesColorOrder',[[0 0 0]; [1 0 0]]);
yyaxis right
plot(Alox12_GUV_Rupture.TimePointmin,Alox12_GUV_Rupture.radius_micron,'r')
yyaxis left
plot(Alox12_GUV_Rupture.TimePointmin,Alox12_GUV_Rupture.NormalizedGFPintensity,'k')
ylim([0,50])