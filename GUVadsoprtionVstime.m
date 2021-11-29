function [AvE,StdE,t] = GUVadsoprtionVstime(dat)

for i=0:max(dat.TimePoint)
 n=i+1;
 t(n)=i;
 AvE(n)=mean(dat.NormalizedGFPintensity(dat.TimePoint==i));  
 StdE(n)=std(dat.NormalizedGFPintensity(dat.TimePoint==i));  
 
   
end


%shadedErrorBar(t,AvE,StdE,'lineProps',props);



end

