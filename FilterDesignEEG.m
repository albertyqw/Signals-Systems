%%
%load EEG Data
x = load('EEGdata_assignment4.mat', 'EEGa4'); 
xEEG = x.EEGa4;
N = length(xEEG); 
Fs = 200; 
scope = 'full'; 

%create a time array 
t = 0:1/Fs:(length(xEEG)-1)/Fs;

%compute the magnitude spectra
[MEEG, phEEG, fEEG] = fourier_dt(xEEG, Fs, scope);
%%
% plot the magnitude spectra of the two ECG signals
figure(1)
plot(fEEG,MEEG)
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('EEG Magnitude Spectra')
%%
%FILTERING OF THE EEG SIGNALS 

%create object filter 
while ~exist('Hd1','var')
    disp('A filter object Hd1 must be created in filterDesigner and')
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
while ~exist('Hd2','var')
    disp('A filter object Hd2 must be created in filterDesigner and')
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

%filterDesigner

%Hd1 = EEG Notch IIR Filter
%Hd2 = EEG Notch FIR Filter 

%Notch Filters 
EEGfilterNIIR = filter(Hd1,xEEG); %notch IIR Output Waveform
EEGfilterNFIR = filter(Hd2,xEEG); %notch FIR Output Waveform
%plotting the output time domain
figure(2)
subplot(3,1,1)
plot(t, xEEG); 
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 30])
title('EEG Input Time Domain Waveform'); 
subplot(3,1,2)
plot(t,EEGfilterNIIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 30])
title('EEG Output Time Domain Waveform IIR Notch Filtered'); 
subplot(3,1,3)
plot(t, EEGfilterNFIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 30])
title('EEG Output Time Domain Waveform FIR Notch Filtered'); 

%%
%MAGNITUDE SPECTRAS and phase spectras 

%compute the magnitude spectra of the notch filters
[MEEGNIIRf, phEEGNIIRf, fEEGNIIRf] = fourier_dt(EEGfilterNIIR, Fs, scope); %notch IIR filter 
[MEEGNFIRf, phEEGNFIRf, fEEGNFIRf] = fourier_dt(EEGfilterNFIR, Fs, scope); %Notch FIR filter 

figure(4)
subplot(2,1,1)
plot(fEEGNIIRf, MEEGNIIRf); 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Magnitude Spectra of EEG | Notch IIR Filter')
subplot(2,1,2)
plot(fEEGNFIRf, MEEGNFIRf) 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Magnitude Spectra of EEG | Notch FIR Filter')

figure(5)
subplot(2,1,1)
plot(fEEGNIIRf, phEEGNIIRf) 
xlabel('Frequency (Hz)')
ylabel(' <X(f) (Rad)')
title('Phase Spectra of EEG | Notch IIR Filter')
subplot(2,1,2)
plot(fEEGNFIRf, phEEGNFIRf)
xlabel('Frequency (Hz)')
ylabel(' <X(f) (Rad)')
title('Phase Spectra of EEG | Notch FIR Filter')
%%

%filterDesigner






