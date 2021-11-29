function dotplot(data, thres, movestep)

l=size(data);
for i=1:l(2);
    %boxplot(data, 'notch', 'off');
    %calculate means/std from finite elements in columns
    dat=data(find(isfinite(data(:,i))),i);
    av(i)=mean(dat);
    sizefinite=size(dat);
    %error(i)=std(dat)/sqrt(sizefinite(1));
    error(i)=std(dat);
    dotPlot_xtr(dat,i, thres, movestep);
    line([i-0.25, i+0.25], [av(i), av(i)], 'Color', 'k', 'LineWidth',3);
    line([i,i],[av(i)-error(i), av(i)+error(i) ], 'Color', 'k', 'LineWidth',1);
    line([i-0.05, i+0.05],[av(i)-error(i), av(i)-error(i) ], 'Color', 'k', 'LineWidth',1);
    line([i-0.05, i+0.05],[av(i)+error(i), av(i)+error(i) ], 'Color', 'k', 'LineWidth',1);
end 