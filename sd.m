% housekeeping
clear
clc

%% sd of svi-100 image stack
svi100Files = dir('F:\SVIM-Paper_Data\z-depth analysis\svi100um_1p_FocalPlaneAt+200um_ImageSequence\*.tif');
for i = 1 : length(svi100Files)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\svi100um_1p_FocalPlaneAt+200um_ImageSequence\',svi100Files(i).name);
    I = imread(filename);
    
    % crop images
    im = imcrop(I,[200 400 820 620]);
     
    % convert to 32-bit
    imc = uint32(im);
    
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(i) = sd_m;
    
%     figure, imshow(I);
end

svi100 = sd_norm_m;

%% sd of svi-200 image stack
svi200Files = dir('F:\SVIM-Paper_Data\z-depth analysis\svi200um_1p_FocalPlaneAt+200um_ImageSequence\*.tif');
for i = 1 : length(svi200Files)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\svi200um_1p_FocalPlaneAt+200um_ImageSequence\',svi200Files(i).name);
    I = imread(filename);
    
    % crop images
    im = imcrop(I,[200 400 820 620]);
       
    % convert to 32-bit
    imc = uint32(im);
    
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(i) = sd_m;
    
%     figure, imshow(I);
end

svi200 = sd_norm_m;

%% sd of svi-300 image stack
svi300Files = dir('F:\SVIM-Paper_Data\z-depth analysis\svi300um_1p_FocalPlaneAt+200um_ImageSequence\*.tif');
for i = 1 : length(svi300Files)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\svi300um_1p_FocalPlaneAt+200um_ImageSequence\',svi300Files(i).name);
    I = imread(filename);
    
    % crop images
    im = imcrop(I,[200 400 820 620]);
       
    % convert to 32-bit
    imc = uint32(im);
    
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(i) = sd_m;
    
%     figure, imshow(I);
end

svi300 = sd_norm_m;

%% sd of svi-550 image stack
svi550Files = dir('F:\SVIM-Paper_Data\z-depth analysis\svi550um_1p_FocalPlaneAt+200um_ImageSequence\*.tif');
for i = 1 : length(svi550Files)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\svi550um_1p_FocalPlaneAt+200um_ImageSequence\',svi550Files(i).name);
    I = imread(filename);
    
    % crop images
    im = imcrop(I,[200 400 820 620]);
       
    % convert to 32-bit
    imc = uint32(im);
    
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(i) = sd_m;
    
%     figure, imshow(I);
end

svi550 = sd_norm_m;

%% sd of widefield-LF image stack
wideFiles = dir('F:\SVIM-Paper_Data\z-depth analysis\widefieldLED_FlocalPlaneAt+200um_ImageSequence\*.tif');
for i = 1 : length(wideFiles)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\widefieldLED_FlocalPlaneAt+200um_ImageSequence\',wideFiles(i).name);
    I = imread(filename);
    
    % crop images
    im = imcrop(I,[200 400 820 620]);
       
    % convert to 32-bit
    imc = uint32(im);
       
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(i) = sd_m;
    
%     figure, imshow(I);
end

wide = sd_norm_m;


%% sd of SPIM image stack

spimFiles = dir('F:\SVIM-Paper_Data\z-depth analysis\spim_1p_Bidi_SutterAt-565um_SeqforSmoothing\*.tif');
for s = 1 : length(spimFiles)
    filename = strcat('F:\SVIM-Paper_Data\z-depth analysis\spim_1p_Bidi_SutterAt-565um_SeqforSmoothing\',spimFiles(s).name);
    S = imread(filename);
    
    % crop images
    im = imcrop(S,[555 615 1271 962]);
    
    % background subtract SPIM
    bs_im = im - 100;
    
    % convert to 32-bit
    imc = uint32(bs_im);
    
    % find min
    min_imc = min(imc(:));
    
    % subtract min from each pixel intensity
    s_imc = imc - min_imc;
    
    % find max
    max_imc = max(s_imc(:));
    
    % max value
    f = 65535;
    
    % multiply each pixel by f/max
    m = s_imc*f/max_imc;
    
    % normalized sd, that takes into account total pixel count
    sd_m = std2(m)/mean2(m);
    
    % sd of energy-pixel-normalized image:
    sd_norm_m(s) = sd_m;
    
%     figure, imshow(I);
end

spim = sd_norm_m;

% moving mean
spim_movmean = movmean(spim, 12, 'Endpoints', 'discard'); %

% grab every other row so that z-spacing = 2um
spim = spim_movmean(1:2:end);


%% Normalize s.d. against SPIM

% interpolate SPIM data

norm_svi100 = svi100./spim;
norm_svi200 = svi200./spim;
norm_svi300 = svi300./spim;
norm_svi550 = svi550./spim;
norm_wide = wide./spim;

% generate z-depth column
z = linspace(-50, 50, 51);

% sd of energy-pixel-normalized histograms
figure(1); hold all;
plot(z, norm_svi100, 'DisplayName', 'SVI-100 \mum');
plot(z, norm_svi200, 'DisplayName', 'SVI-200 \mum');
plot(z, norm_svi300, 'DisplayName', 'SVI-300 \mum');
plot(z, norm_svi550, 'DisplayName', 'SVI-550 \mum');
plot(z, norm_wide, 'DisplayName', 'Widefield-LF');
xlabel('Z-Depth (\mum)','Fontsize',14,'FontWeight','bold');
ylabel('Normalized Contrast','Fontsize',14,'FontWeight','bold');
legend('show');

%% sd of energy-pixel-normalized histograms:
% with SPIM ratio'd against surface of slice
% to show degradation of SPIM as a function of penetration depth

% create a matrix of with spim sd value only
dspim(1:51) = spim(1,1);

% normalize against spim
norm_dspim = spim./dspim;
norm_svi100 = svi100./spim;
norm_svi200 = svi200./spim;
norm_svi300 = svi300./spim;
norm_svi550 = svi550./spim;
norm_wide = wide./spim;

% generate z-depth column
z = linspace(-50, 50, 51);

figure(2); hold all;
plot(z, norm_dspim, 'DisplayName', 'SPIM');
plot(z, norm_svi100, 'DisplayName', 'SVI-100 \mum');
plot(z, norm_svi200, 'DisplayName', 'SVI-200 \mum');
plot(z, norm_svi300, 'DisplayName', 'SVI-300 \mum');
plot(z, norm_svi550, 'DisplayName', 'SVI-550 \mum');
plot(z, norm_wide, 'DisplayName', 'Widefield-LF');
xlabel('Z-Depth (\mum)','Fontsize',14,'FontWeight','bold');
ylabel('Normalized Contrast','Fontsize',14,'FontWeight','bold');
legend('show');

%% sd normalized as surface of slice
% to show performance of all modalities as a function of penetration depth

% create a matrix of with spim sd value only
s_spim(1:51) = spim(1,1);

% normalize against spim
norm_dspim = spim./s_spim;
norm_svi100 = svi100./s_spim;
norm_svi200 = svi200./s_spim;
norm_svi300 = svi300./s_spim;
norm_svi550 = svi550./s_spim;
norm_wide = wide./s_spim;

% generate z-depth column
z = linspace(-50, 50, 51);

figure(3); hold all;
plot(z, norm_dspim, 'DisplayName', 'SPIM');
plot(z, norm_svi100, 'DisplayName', '100-\mum SVIM');
plot(z, norm_svi200, 'DisplayName', '200-\mum SVIM');
plot(z, norm_svi300, 'DisplayName', '300-\mum SVIM');
plot(z, norm_svi550, 'DisplayName', '550-\mum SVIM');
plot(z, norm_wide, 'DisplayName', 'Wide-field LFM');
xlabel('Relative z-depth (\mum)','Fontsize',18);
ylabel('Contrast (normalized)','Fontsize',18);
legend('show');
