n = -5:5;

%INPUTS 
x1 = [0 0 0 0 0 1 0 0 0 0 0];
x2 = [0 0 0 0 0 0 1 0 0 0 0];
x3 = [0 0 0 0 0 0 0 1 0 0 0];
x4 = [0 0 0 0 0 1 1 0 0 0 0];
x5 = [0 0 0 0 0 0 0 1 1 0 0];
x6 = [0 0 0 0 0 0 0 0 1 1 0];
x7 = [1 1 1 0 0 0 0 0 0 0 0];

%STEM PLOT FIGURES FOR INPUTS
figure,
subplot(2,2,1), stem(n, x1), title('Input Signal #1'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x2), title('Input Signal #2'), xlabel('n'), ylabel('x[n]');
subplot(2,2,3), stem(n, x3), title('Input Signal #3'), xlabel('n'), ylabel('x[n]');
subplot(2,2,4), stem(n, x4), title('Input Signal #4'), xlabel('n'), ylabel('x[n]');

figure,
subplot(2,2,1), stem(n, x5), title('Input Signal #5'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x6), title('Input Signal #6'), xlabel('n'), ylabel('x[n]');
subplot(2,2,3), stem(n, x7), title('Input Signal #7'), xlabel('n'), ylabel('x[n]');


%OUTPUTS FOR SYSTEM 1 USING INPUTS DEFINED ABOVE
y11 = system1(n,x1);
y12 = system1(n,x2);
y13 = system1(n,x3);
y14 = system1(n,x4);
y15 = system1(n,x5);
y16 = system1(n,x6);
y17 = system1(n,x7);

%STEM PLOT OF OUTPUTS 
figure,
subplot(2,2,1), stem(n, y11), title('System1 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y12), title('System1 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y13), title('System1 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y14), title('System1 Output for Input 4'), xlabel('n'), ylabel('y[n]');

figure
subplot(2,2,1), stem(n, y15), title('System1 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y16), title('System1 Output for Input 6'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y17), title('System1 Output for Input 7'), xlabel('n'), ylabel('y[n]');

%SYSTEM 2 OUTPUT USING INOUTS ABOVE
y21 = system2(n,x1);
y22 = system2(n,x2);
y23 = system2(n,x3);
y24 = system2(n,x4);
y25 = system2(n,x5);
y26 = system2(n,x6);
y27 = system2(n,x7);

%STEM PLOTS OF SYSTEM 2
figure,
subplot(2,2,1), stem(n, y21), title('System2 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y22), title('System2 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y23), title('System2 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y24), title('System2 Output for Input 4'), xlabel('n'), ylabel('y[n]');

figure
subplot(2,2,1), stem(n, y25), title('System2 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y26), title('System2 Output for Input 6'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y27), title('System2 Output for Input 7'), xlabel('n'), ylabel('y[n]');

%SYSTEM 3 OUTPUTS USING INPUTS ABOVE
y31 = system3(n,x1);
y32 = system3(n,x2);
y33 = system3(n,x3);
y34 = system3(n,x4);
y35 = system3(n,x5);
y36 = system3(n,x6);
y37 = system3(n,x7);

%STEM PLOTS OF SYSTEM 3 OUTPUTS
figure,
subplot(2,2,1), stem(n, y31), title('System3 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y32), title('System3 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y33), title('System3 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y34), title('System3 Output for Input 4'), xlabel('n'), ylabel('y[n]');

figure
subplot(2,2,1), stem(n, y35), title('System3 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y36), title('System3 Output for Input 6'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y37), title('System3 Output for Input 7'), xlabel('n'), ylabel('y[n]');
