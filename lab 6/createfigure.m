function createfigure(X1, YMatrix1, xdata1, ydata1, zdata1, YMatrix2)
%CREATEFIGURE1(X1,YMATRIX1,XDATA1,YDATA1,ZDATA1,YMATRIX2)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
%  XDATA1:  contour x
%  YDATA1:  contour y
%  ZDATA1:  contour z
%  YMATRIX2:  matrix of y data

%  Auto-generated by MATLAB on 14-Apr-2020 17:32:12

% Create figure
figure1 = figure;

% Create subplot
subplot1 = subplot(1,2,1,'Parent',figure1,'PlotBoxAspectRatio',[1 1 1]);
box(subplot1,'on');
hold(subplot1,'all');

% Create multiple lines using matrix input to plot
plot(X1,YMatrix1,'Parent',subplot1);

% Create title
title('my isoquants');

% Create subplot
subplot2 = subplot(1,2,2,'Parent',figure1,'PlotBoxAspectRatio',[1 1 1],...
    'Layer','top');
% Uncomment the following line to preserve the X-limits of the axes
% xlim(subplot2,[0 10]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(subplot2,[0 10]);
box(subplot2,'on');
hold(subplot2,'all');

% Create contour
contour(xdata1,ydata1,zdata1,'ShowText','on','LevelList',[2 3 5],...
    'Parent',subplot2);

% Create title
title('isoquants by contour');

% Create multiple lines using matrix input to plot
plot(X1,YMatrix2,'Parent',subplot2);

% Create axes
axes('Parent',figure1,...
    'Position',[0.206743566992014 0.420882669537137 0.219165927240461 0.23789020452099]);

% Create textarrow
annotation(figure1,'textarrow',[0.802129547471162 0.642413487133984],...
    [0.596416576964478 0.515608180839612],'TextEdgeColor','none',...
    'String',{'isoclinali'});

% Create arrow
annotation(figure1,'arrow',[0.796805678793256 0.638864241348713],...
    [0.603951560818084 0.693218514531755]);

% Create arrow
annotation(figure1,'arrow',[0.822537710736469 0.60603371783496],...
    [0.601798708288482 0.628632938643703]);

% Create textbox
annotation(figure1,'textbox',...
    [0.23968677905945 0.53821313240043 0.147181011535049 0.0624327233584501],...
    'String',{'coordinate system'},...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.725933451641526 0.414424111948331 0.115237799467613 0.0269106566200216],...
    'String',{'isoquants'},...
    'FitBoxToText','off');

% Create arrow
annotation(figure1,'arrow',[0.733806566104703 0.74622892635315],...
    [0.445716899892357 0.516684607104413]);

% Create arrow
annotation(figure1,'arrow',[0.725820763087844 0.664596273291925],...
    [0.427417653390743 0.434876210979548]);

% Create arrow
annotation(figure1,'arrow',[0.738243123336291 0.687666370896185],...
    [0.413424111948332 0.376749192680301]);

for(i = 1:100)
    annotation(figure1,'arrow',[rand() rand() ],...
        [rand() rand()]);
end

