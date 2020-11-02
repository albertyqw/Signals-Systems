n = -5:5; % Denotes the range

% Input Variables
% Naming Convention: x + Input Signal Number
x1 = [0 0 0 0 0 0 0 0 0 0 0];
x2 = [0 0 0 0 1 0 0 0 0 0 0];
x3 = [0 0 0 0 0 1 0 0 0 0 0];
x4 = [0 0 0 0 0 0 1 0 0 0 0];
x5 = [0 0 0 0 0 1 1 1 1 1 1];
x6 = [0 0 0 0 1 0 0 1 0 0 1];

% Generates a 2x2 the STEM Plot for the Inputs
figure,
subplot(2,2,1), stem(n, x1), title('Input Signal #1'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x2), title('Input Signal #2'), xlabel('n'), ylabel('x[n]');
subplot(2,2,3), stem(n, x3), title('Input Signal #3'), xlabel('n'), ylabel('x[n]');
subplot(2,2,4), stem(n, x4), title('Input Signal #4'), xlabel('n'), ylabel('x[n]');

% Generates a 2x2 the STEM Plot for the Inputs
figure,
subplot(2,2,1), stem(n, x5), title('Input Signal #5'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x6), title('Input Signal #6'), xlabel('n'), ylabel('x[n]');

% Output values for System1 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y16 --> Outputs for System1 with Input Signals #6
y11 = system1(n,x1);
y12 = system1(n,x2);
y13 = system1(n,x3);
y14 = system1(n,x4);
y15 = system1(n,x5);
y16 = system1(n,x6);

% Generates a 2x2 STEM Plot for System1 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y11), title('System1 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y12), title('System1 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y13), title('System1 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y14), title('System1 Output for Input 4'), xlabel('n'), ylabel('y[n]');

% Generates a 2x2 STEM Plot for System1 for Input Signals #5 to #6
figure
subplot(2,2,1), stem(n, y15), title('System1 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y16), title('System1 Output for Input 6'), xlabel('n'), ylabel('y[n]');

% Output values for System2 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y24 --> Outputs for System2 with Input Signals #4
y21 = system2(n,x1);
y22 = system2(n,x2);
y23 = system2(n,x3);
y24 = system2(n,x4);
y25 = system2(n,x5);
y26 = system2(n,x6);

% Generates a 2x2 STEM Plot for System2 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y21), title('System2 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y22), title('System2 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y23), title('System2 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y24), title('System2 Output for Input 4'), xlabel('n'), ylabel('y[n]');

% Generates a 2x2 STEM Plot for System2 for Input Signals #5 to #6
figure
subplot(2,2,1), stem(n, y25), title('System2 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y26), title('System2 Output for Input 6'), xlabel('n'), ylabel('y[n]');

% Output values for System2 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y31 --> Outputs for System3 with Input Signals #1
y31 = system3(n,x1);
y32 = system3(n,x2);
y33 = system3(n,x3);
y34 = system3(n,x4);
y35 = system3(n,x5);
y36 = system3(n,x6);

% Generates a 2x2 STEM Plot for System3 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y31), title('System3 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y32), title('System3 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y33), title('System3 Output for Input 3'), xlabel('n'), ylabel('y[n]');
subplot(2,2,4), stem(n, y34), title('System3 Output for Input 4'), xlabel('n'), ylabel('y[n]');

% Generates a 2x2 STEM Plot for System3 for Input Signals #5 to #6
figure
subplot(2,2,1), stem(n, y35), title('System3 Output for Input 5'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y36), title('System3 Output for Input 6'), xlabel('n'), ylabel('y[n]');
