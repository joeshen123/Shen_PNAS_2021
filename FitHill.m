function [fitresult,gof] = FitHill(TableDat,Row,PlotWithPrevious,Style,Dash,MarkerFaceColor)



TableDat=TableDat(Row,:);

freeCa2=TableDat.FreeCa2um;

I=TableDat.NormalizedGFPintensity;


[fitresult, gof] = createHillFit5(freeCa2, I);

conc=unique(freeCa2);

for i=1:numel(conc)
    av_I(i)=mean(TableDat.NormalizedGFPintensity(TableDat.FreeCa2um==conc(i)));
    err_I(i)=std(TableDat.NormalizedGFPintensity(TableDat.FreeCa2um==conc(i)));
end
errorbar(conc,av_I,err_I,Style,'MarkerFaceColor',MarkerFaceColor);


%,'MarkerFaceColor','k'
if PlotWithPrevious~=1
hold
end

% plot(fitresult,[Style(1),'-']);
% set(gca,'XScale','log')


Imax=fitresult.Imax;
H=fitresult.H;
EC50=fitresult.EC50;
fplot(@(freeCa2)Imax*((freeCa2^H)/(EC50^H+freeCa2^H)),[0.01 10000],[Style(1),Dash])

set(gca,'XScale','log')
axis([0 10000 0 70])


end

