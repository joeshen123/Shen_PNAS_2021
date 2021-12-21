function [fitresult,gof] = FitLangmuir_ALPS(TableDat,Row,PlotWithPrevious,Style,Dash, MarkerFaceColor)



TableDat=TableDat(Row,:);

conc=TableDat.ProteinConcentrationnm;
I=TableDat.NormalizedGFPintensity;


[fitresult, gof] = createFitLM_hill_ALPS(conc, I);

Uconc=unique(conc);

x=linspace(0,600,2000);
y = ((fitresult.Bmax)*x.^(fitresult.n))./(x.^(fitresult.n)+(fitresult.Kd).^(fitresult.n));

for i=1:numel(Uconc)
    av_I(i)=mean(TableDat.NormalizedGFPintensity(TableDat.ProteinConcentrationnm==Uconc(i)));
    err_I(i)=std(TableDat.NormalizedGFPintensity(TableDat.ProteinConcentrationnm==Uconc(i)));
end
errorbar(Uconc,av_I,err_I,Style,'MarkerFaceColor',MarkerFaceColor);

%,'MarkerFaceColor','k'
if PlotWithPrevious~=1
hold
end

Bmax=fitresult.Bmax;
n=fitresult.n;
Kd=fitresult.Kd;

fplot(@(c)Bmax*((c.^n)/(Kd^n+c.^n)),[0 600],[Style(1),Dash])
axis([0 600 0 70])





end

