 %%
x = load('VGRFdata_assignment4.mat', 'VGRF'); 
xVGRF  = x.VGRF;
N = length(xVGRF); 
Fs = 100; 
scope = 'half';

t = 0:1/Fs:(length(xVGRF)-1)/Fs;

[MVGRF, phVGRF, fVGRF] = fourier_dt(xVGRF, Fs, scope); 
%%

%create object filter 
while ~exist('Hd3','var')
    disp('A filter object Hd3 must be created in filterDesigner and')
    disp('and exported to the Matlab workspace in order to filter')
    disp('the example signals.')
    disp('')
    disp('Press the spacebar to open the filterDesigner tool...')
    pause
    filterDesigner
    disp('')
    disp('Press the spacebar again once your filter object Hd1')
    disp('is exported to the workspace...')
    pause
end

%create object filter 
while ~exist('Hd4','var')
    disp('A filter object Hd4 must be created in filterDesigner and')
    disp('and exported to the Matlab workspace in order to filter')
    disp('the example signals.')
    disp('')
    disp('Press the spacebar to open the filterDesigner tool...')
    pause
    filterDesigner
    disp('')
    disp('Press the spacebar again once your filter object Hd1')
    disp('is exported to the workspace...')
    pause
end

%Bandpass filters 
VGRFfilterBIIR = filter(Hd3,xVGRF); %bandpass IIR Filter 
VGRFfilterBFIR = filter(Hd4,xVGRF); %bandpass FIR filter
%%
figure(1)
plot(t, xVGRF); 
ylabel('Vertical Ground Reaction Force (N)'); 
xlabel('time (s)'); 
xlim([0 24]);
title('VGRF Input Time Domain Waveform'); 
%%

figure(2)
subplot(3,1,1)
plot(fVGRF, MVGRF); 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('VGRF Input Time Domain Magnitude Spectra')
xlim([0 10])
subplot(3,1,2)
plot(t,VGRFfilterBIIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 24])
title('VGRF Output Time Domain Waveform IIR Bandpass Filtered'); 
subplot(3,1,3)
plot(t, VGRFfilterBFIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 24])
title('VGRF Output Time Domain Waveform FIR Bandpass Filtered');


%compute the magnitude spectra of the Bandpass filters
[MVGRFBIIRf, phVGRFBIIRf, fVGRFBIIRf] = fourier_dt(VGRFfilterBIIR, Fs, scope); %band pass filter IIR
[MVGRFBFIRf, phVGRFBFIRf, fVGRFBFIRf] = fourier_dt(VGRFfilterBFIR, Fs, scope); %band pass filter for FIR 

figure(4)
subplot(2,1,1)
plot(fVGRFBIIRf, MVGRFBIIRf); 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
xlim([0 15])
title('Magnitude Spectra of VGRF | Bandpass IIR Filter')
subplot(2,1,2)
plot(fVGRFBFIRf, MVGRFBFIRf) 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
xlim([0 15])
title('Magnitude Spectra of VGRF | Bandpass FIR Filter')

figure(5)
subplot(2,1,1)
plot(fVGRFBIIRf, phVGRFBIIRf) 
xlabel('Frequency (Hz)')
ylabel(' <X(f) (Rad)')
xlim([0 15])
title('Phase Spectra of VGRF | Bandpass IIR Filter')
subplot(2,1,2)
plot(fVGRFBFIRf, phVGRFBFIRf)
xlabel('Frequency (Hz)')
ylabel(' <X(f) (Rad)')
xlim([0 15])
title('Phase Spectra of VGRF | Bandpass FIR Filter')
%%



