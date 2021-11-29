%Figure 3b
%Plot Binding versus osmotic shock full length cPla2 in A549
%(permeabilized)
figure(1);
OS0=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==2.5));
OS20=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==2.0));
OS40=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==1.5));
OS60=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==1));
OS80=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==0.5));
OS100=cPLA2fl_Nuclei.ratio(find(cPLA2fl_Nuclei.PVPConc==0));
Imat=padcat(OS0,OS20,OS40,OS60,OS80,OS100);
figure(1), dotplot(Imat,0.1,0.01);
ylim([0 15])

%Figure 3c

% cPla2 Ca2+ sensitivity on intact nuclear membranes
figure(2);
[fit_cPla2_Nucleus_Hill_noPVP,gof_cPla2_Nucleus_Hill_noPVP]=FitHill(cPla2_Nucleus_Hill,1:990,0,'ko','-','k');
[fit_cPla2_Nucleus_Hill_midPVP,gof_cPla2_Nucleus_Hill_midPVP]=FitHill(cPla2_Nucleus_Hill,991:1737,1,'ko','-.','k');
[fit_cPla2_Nucleus_Hill_highPVP,gof_cPla2_Nucleus_Hill_highPVP]=FitHill(cPla2_Nucleus_Hill,1738:3524,1,'ko','--','k');

fitRes_cPla2_Nucleus_Hill_noPVP=coeffvalues(fit_cPla2_Nucleus_Hill_noPVP);
fitErr_cPla2_Nucleus_Hill_noPVP=confint(fit_cPla2_Nucleus_Hill_noPVP);
fitRes_cPla2_Nucleus_Hill_midPVP=coeffvalues(fit_cPla2_Nucleus_Hill_midPVP);
fitErr_cPla2_Nucleus_Hill_midPVP=confint(fit_cPla2_Nucleus_Hill_midPVP);
fitRes_cPla2_Nucleus_Hill_highPVP=coeffvalues(fit_cPla2_Nucleus_Hill_highPVP);
fitErr_cPla2_Nucleus_Hill_highPVP=confint(fit_cPla2_Nucleus_Hill_highPVP);

ylim([0 15])
xlim([0.01,2])