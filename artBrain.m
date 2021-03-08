% Turn your own brain structural (T1.nii) image files into colorful contours :)
% Otherwise you can download the SPM toolbox (Friston, K. J. et al., 1994) and use their ~/Tamplate/T1.nii.

vol = load_nii('~/T1.nii'); % read your T1 volume image here
X = squeeze(vol.img(100,:,:)))'; % slect the slice for the 1st view
Y = squeeze(vol.img(:,100,:))'; % slect the slice for the 2nd view
Z = squeeze(vol.img(:,:,100))'; % slect the slice for the 3rd view

% open and set figure dimensionsand and background color
a = figure;
width=1000;
height=900;
x0=0; y0=0;
a.Color='black';

% draw 1st view
subplot(1,3,1)
contour(Y,'LineWidth',3) 
set(gca,'Color','k','XColor', 'none','YColor','none')

% draw 2st view
subplot(1,3,2)
contour(Z,'LineWidth',3)
set(gca,'Color','k','XColor', 'none','YColor','none')

% draw 3st view
subplot(1,3,3)
contour(X,'LineWidth',3)
set(gca,'Color','k','XColor', 'none','YColor','none')

% set the desired colormap :)
colormap lines
