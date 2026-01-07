% These first few lines create a basic figure with a tiled layout
x = [-4*pi:0.1:4*pi];
y1 = sin(0.2*x.^2);
y2 = sin(2*x)./x;
y3 = exp(-0.1*x).*sin(2*x);
y4 = sin(x)+0.3*sin(10*x);
fgr = figure();
tly = tiledlayout(fgr,2,2);
ax1 = nexttile(tly,1);
pl1 = plot(ax1,x,y1);
ax2 = nexttile(tly,2);
pl2 = plot(ax2,x,y2);
ax3 = nexttile(tly,3);
pl3 = plot(ax3,x,y3);
ax4 = nexttile(tly,4);
pl4 = plot(ax4,x,y4);

% Task 1: make the linewidth of the top right graph have width 2
fgr.Children.Children(3).Children.LineWidth = 2;

% Task 2: add a label to the horizontal axis of the bottom left graph
xlabel(fgr.Children.Children(2), 'X');

% Task 3: make the y-range of the top left graph -1.5 to +1.5
ylim(fgr.Children.Children(4), [-1.5 1.5]);

% Task 4: change the function displayed in the bottom right graph to sin(x)
fgr.Children.Children(1).Children.YData = sin(x);

% Task 5: make the background colour of the whole figure green
fgr.Color = 'g';
