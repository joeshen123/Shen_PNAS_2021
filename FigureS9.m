% Figure S9b: cPla2 Ca2+ sensitivity on intact nuclear membranes (Hela
% Cell)
figure(16);
[fit_cPla2_Nucleus_Hill_noPVP,gof_cPla2_Nucleus_Hill_noPVP]=FitHill(cPla2_Nucleus_Hill_Hela,1:1851,0,'ko','-','k');
[fit_cPla2_Nucleus_Hill_highPVP,gof_cPla2_Nucleus_Hill_highPVP]=FitHill(cPla2_Nucleus_Hill_Hela,1852:4383,1,'ko','--','k');

fitRes_cPla2_Nucleus_Hill_noPVP=coeffvalues(fit_cPla2_Nucleus_Hill_noPVP);
fitErr_cPla2_Nucleus_Hill_noPVP=confint(fit_cPla2_Nucleus_Hill_noPVP);
fitRes_cPla2_Nucleus_Hill_highPVP=coeffvalues(fit_cPla2_Nucleus_Hill_highPVP);
fitErr_cPla2_Nucleus_Hill_highPVP=confint(fit_cPla2_Nucleus_Hill_highPVP);

ylim([0 15])
xlim([0.01,2])