%% Data Visualization & Formatting
% Examples to go along with the workshop on Data Visualization &
% Formatting.


%% 1) Line plot

%--------------------------------------
% generate data for the plot
%--------------------------------------
clear;
t = 0.0:0.01:8 * pi;
x1 = sin(0.1 * t);
x2 = sin(0.2 * t);
x3 = sin(0.3 * t);

y1 = cos(0.1 * t);
y2 = cos(0.2 * t);
y3 = cos(0.3 * t);

%--------------------------------------
% Basic plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

plot(t, x1);
plot(t, x2);
plot(t, x3);

plot(t, y1);
plot(t, y2);
plot(t, y3);

legend('Model 1 (f=0.1)', ...
       'Model 1 (f=0.2)', ...
       'Model 1 (f=0.3)', ...
       'Model 2 (f=0.1)', ...
       'Model 2 (f=0.2)', ...
       'Model 2 (f=0.3)')
   
% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_line_bad', '-dpdf', '-r0');


%--------------------------------------
% Better plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

plot(t, x1, 'Color', 'k', 'LineStyle', '-', 'LineWidth', 1.5);
plot(t, x2, 'Color', [0.0, 0.3, 0.6], 'LineStyle', '-', 'LineWidth', 1.5);
plot(t, x3, 'Color', [0.3, 0.4, 1.0], 'LineStyle', '-', 'LineWidth', 1.5);

plot(t, y1, 'Color', 'k', 'LineStyle', '--', 'LineWidth', 1.5);
plot(t, y2, 'Color', [0.0, 0.3, 0.6], 'LineStyle', '--', 'LineWidth', 1.5);
plot(t, y3, 'Color', [0.3, 0.4, 1.0], 'LineStyle', '--', 'LineWidth', 1.5);

legend('Model 1 (f=0.1)', ...
       'Model 1 (f=0.2)', ...
       'Model 1 (f=0.3)', ...
       'Model 2 (f=0.1)', ...
       'Model 2 (f=0.2)', ...
       'Model 2 (f=0.3)')
   
% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_line_better', '-dpdf', '-r0');


%% 2) Scatter plot

%--------------------------------------
% generate data for the plot
%--------------------------------------
clear;
n = 100;
x = linspace(0, 10, 100);
y1 = x + 0.5 * randn(1, n);
y2 = x + 0.5 * randn(1, n);
y3 = x + 0.5 * randn(1, n);

%--------------------------------------
% Basic plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

scatter(x, y1);
scatter(x, y2);
scatter(x, y3);

legend('Scenario 1', ...
       'Scenario 2', ...
       'Scenario 3')
   
% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_scatter_bad', '-dpdf', '-r0');


%--------------------------------------
% Better plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

scatter(x, y1, 'o', 'MarkerEdgeColor', 'w', 'MarkerFaceColor', 'r');
scatter(x, y2, 's', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'w');
scatter(x, y3, '^', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0.7, 0.7, 0.7]);

legend('Scenario 1', ...
       'Scenario 2', ...
       'Scenario 3')
   
% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_scatter_better', '-dpdf', '-r0');


%% 3) Colormap plot

%--------------------------------------
% generate data for the plot
%--------------------------------------
clear;
[X,Y,Z] = peaks;


%--------------------------------------
% Basic plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

contourf(X, Y, Z)
colormap(jet)
colorbar()

% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_colormap_bad', '-dpdf', '-r0');

%--------------------------------------
% Better plot
%--------------------------------------
h = figure;
set(h, 'Visible', 'off');
hold on;

contourf(X, Y, Z, 20, 'LineWidth', 0.5)
colormap(parula)
colorbar()

% save figure as PDF (with whitespace removed)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h, 'PaperPositionMode', 'Auto', 'PaperUnits', 'Inches', 'PaperSize', [pos(3), pos(4)])
print(h, 'matlab_colormap_better', '-dpdf', '-r0');