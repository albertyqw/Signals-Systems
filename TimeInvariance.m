n = -5:5;% Denotes the range

% Input Variables
% Naming Convention: x + Input Signal Number
x1 = [0 0 0 0 0 1 1 1 1 1 0];
x2 = [0 0 0 0 0 0 1 1 1 1 1];
x3 = [0 0 0 0 1 1 1 1 1 0 0];


% Generates a Figure with 4 STEM Plots representing Input #1 to #4
figure,
subplot(2,2,1), stem(n, x1), title('Input Signal #1'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x2), title('Input Signal #2'), xlabel('n'), ylabel('x[n]');
subplot(2,2,3), stem(n, x3), title('Input Signal #3'), xlabel('n'), ylabel('x[n]');

% Output values for System1 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y110 --> Outputs for System1 with Input Signals #10
y11 = system1(n,x1);
y12 = system1(n,x2);
y13 = system1(n,x3);

% Generates a Figure with 4 STEM Plots representing the Ouput for System1 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y11), title('System1 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y12), title('System1 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y13), title('System1 Output for Input 3'), xlabel('n'), ylabel('y[n]');


% Output values for System2 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y29 --> Outputs for System2 with Input Signals #9
y21 = system2(n,x1);
y22 = system2(n,x2);
y23 = system2(n,x3);

% Generates a Figure with 4 STEM Plots representing the Ouput for System2 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y21), title('System2 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y22), title('System2 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y23), title('System2 Output for Input 3'), xlabel('n'), ylabel('y[n]');

% Output values for System2 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y310 --> Outputs for System3 with Input Signals #10
y31 = system3(n,x1);
y32 = system3(n,x2);
y33 = system3(n,x3);

% Generates a Figure with 4 STEM Plots representing the Ouput for System3 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y31), title('System3 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y32), title('System3 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y33), title('System3 Output for Input 3'), xlabel('n'), ylabel('y[n]');

