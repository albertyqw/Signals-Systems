%%
x = load('BFVdata_assignment3.mat', 'BFVdu', 'Fs'); 
xBFV = x.BFVdu;
N = length(xBFV);
Fs = x.Fs;
scope = 'full';

tBFV = 0:1/Fs:(length(xBFV)-1)/Fs;

[MBFV, phBFV, fBFV] = fourier_dt(xBFV, Fs, scope); 
%%
%Notch Filters 
BFVfilterNIIR = filter(Hd1,xBFV); %notch IIR Output Waveform
BFVfilterNFIR = filter(Hd2,xBFV); %notch FIR Output Waveform

BFVfilterBIIR = filter(Hd3,xBFV); %Bandpass IIR Output Waveform
BFVfilterBFIR = filter(Hd4,xBFV); %Bandpass FIR Output Waveform

figure(1)
subplot(2,1,1)
plot(tBFV,BFVfilterNIIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 10])
title('BFV Output Time Domain Waveform IIR Notch Filtered'); 
subplot(2,1,2)
plot(tBFV, BFVfilterNFIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 10])
title('BFV Output Time Domain Waveform FIR Notch Filtered'); 

figure(2)
subplot(2,1,1)
plot(tBFV,BFVfilterBIIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 10])
title('BFV Output Time Domain Waveform IIR Bandpass Filtered'); 
subplot(2,1,2)
plot(tBFV, BFVfilterBFIR)
ylabel('Amplitude (mV)'); 
xlabel('time (s)'); 
xlim([0 10])
title('BFV Output Time Domain Waveform FIR Bandpass Filtered'); 
%%
%MAGNITUDE SPECTRAS and phase spectras 

%compute the magnitude spectra of the notch filters
[MBFVNIIRf, phBFVNIIRf, fBFVNIIRf] = fourier_dt(BFVfilterNIIR, Fs, scope); %notch IIR filter 
[MBFVNFIRf, phBFVNFIRf, fBFVNFIRf] = fourier_dt(BFVfilterNFIR, Fs, scope); %Notch FIR filter

[MBFVBIIRf, phBFVBIIRf, fBFVBIIRf] = fourier_dt(BFVfilterBIIR, Fs, scope); %Bandpass IIR filter 
[MBFVBFIRf, phBFVBFIRf, fBFVBFIRf] = fourier_dt(BFVfilterBFIR, Fs, scope); %Bandpass FIR filter

figure(3)
subplot(2,1,1)
plot(fBFVNIIRf, MBFVNIIRf); 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Filtered BFV | Notch IIR Filter')
subplot(2,1,2)
plot(fBFVNFIRf, MBFVNFIRf) 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Filtered BFV | Notch FIR Filter')

figure(4)
subplot(2,1,1)
plot(fBFVBIIRf, MBFVBFIRf); 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Filtered BFV | Bandpass IIR Filter')
subplot(2,1,2)
plot(fBFVBFIRf, MBFVBFIRf) 
xlabel('Frequency (Hz)')
ylabel('|X(f)| (mV)')
title('Filtered BFV | Bandpass FIR Filter')
%%


