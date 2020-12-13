%%
x = load('BFVdata_assignment3.mat','BFVdu');
xBFV = x.BFVdu;
N = length(xBFV);
Fs = 100;
scope = 'half';

%compute the frequency spectra of the signal 
[MBFV,phBFV,fBFV] = fourier_dt(xBFV,Fs,scope);

BFVduL1 = xBFV(1:220);
length(BFVduL1);

% Compute the frequency spectra of the single-period segments of the two signals
[MBFV_1p,phBFV_1p,fBFV_1p] = fourier_dt(BFVduL1,Fs,scope);

%zero pad the Length function
L = length(BFVduL1);
BFVdu_1p_zp = [BFVduL1; zeros(L,1)];
[MBFVdu_1p_zp,phBFVdu_1p_zp,fBFVdu_1p_zp] = fourier_dt(BFVdu_1p_zp,Fs,scope);

%%
%plot the magnitude frequency
figure(1)
plot(fBFV,MBFV)
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('|X(f)| (mV)')
title('Half Sided BFV Magnitude Spectra')
%%
%plot the magnitude spectra
figure(2)
subplot(2,1,1);
plot(fBFV_1p,MBFV_1p)
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('|X(f)| (mV)')
title('Half Sided BFV Magnitude Spectra | Signal to Length L = 220')
%%
%plot the magnitude spectra of the zero pad 
figure(2)
subplot(2,1,2);
plot(fBFVdu_1p_zp,MBFVdu_1p_zp)
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('|X(f)| (mV)')
title('Half Sided BFV Zero Padded Magenitude Spectra')
%%
%comparison graph for L = 220 and full frequency
figure(3)
plot(fBFV,MBFV, 'g')
hold on
plot(fBFV_1p,MBFV_1p, 'r')
xlim([0 20])
xlabel('Frequency (Hz)');
ylabel('|X(f)| (mV)')
title('Graph Comparing Limited and Non-Limited BFV Magnitude Spectra');
legend('BFV Half Sided Spectrum', 'BFV Half Sided Spectrum | L = 220');
%%
%comparison graph for L = 220 and zero padded 
figure(4) 
plot(fBFV_1p,MBFV_1p, 'g');
hold on
%plot(fBFV_1p,MBFV_1p, 'r');
hold off
hold on
plot(fBFVdu_1p_zp,MBFVdu_1p_zp, 'b')
hold off
xlim([0 20]); 
xlabel('Frequency (Hz)');
ylabel('|X(f)| (mV)')
title('Graph Comparing Original BFV vs 0 Padded vs Non-0 Padded BFV Magnitude Spectra with L = 220'); 
legend('Original BFV Magnitude Spectra', 'BFV Magnitude Spectra | L = 220', 'BFV Magnitude Spectra 0 Padded'); 
%%

%spectrogram 
% plot the spectrograms of the two EEG signals
winlen = 3e3;  % length of the windowed segments
overlap = 500; % number of samples overlapping for each window position
NFFT = 10e3;   % number of points in the FFT (the signal is zero-padded to this length)

figure
subplot(2,1,1)
[s_BFV,f_BFV,t_BFV] = spectrogram(xBFV,winlen,overlap,NFFT,Fs);
imagesc(t_BFV,f_BFV,abs(s_BFV)/winlen)
axis xy
ylim([0 30])
title('BFV')
ylabel('f (Hz)')
cb1 = colorbar;
cb1.Label.String = '|X(f)| (mV)';



