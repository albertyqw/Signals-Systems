n = -5:5; % Denotes the range

% Input Variables
% Naming Convention: x + Input Signal Number
x1 = [0 0 0 0 0 0 0 0 0 0 0];
x2 = [0 0 0 0 0 1 1 1 1 1 1];
x3 = [0 0 0 0 0 2 2 2 2 2 2];

addvec = [1 1 1 1 1 1 1 1 1 1 1]; %addition factor to test addtivity 

% Generates a 2x2 the STEM Plot for the Inputs
figure,
subplot(2,2,1), stem(n, x1), title('Input Signal #1'), xlabel('n'), ylabel('x[n]');
subplot(2,2,2), stem(n, x2), title('Input Signal #2'), xlabel('n'), ylabel('x[n]');
subplot(2,2,3), stem(n, x3), title('Input Signal #3'), xlabel('n'), ylabel('x[n]');


% Output values for System1 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y16 --> Outputs for System1 with Input Signals #6
yaddvec = system1(n, addvec);
y2addvec = system2(n, addvec);
y3addvec = system3(n, addvec);

y110 = system1(n,x1);
y120 = system1(n,x2);
y130 = system1(n, x3);
y11 = system1(n,(x1 + addvec));
y12 = system1(n,(x2 + addvec));
y13 = system1(n,(x3 + addvec));

disp('system 1 original output')
disp(y110);
disp(y120);
disp(y130);
disp('system 1 scaled and shifted Output')
disp(y11);
disp(y12);
disp(y13);

disp('adddition vector output')


% Generates a 2x2 STEM Plot for System1 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y110), title('System1 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y120), title('System1 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y130), title('System1 Output for Input 3'), xlabel('n'), ylabel('y[n]');


% Output values for System2 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y24 --> Outputs for System2 with Input Signals #4
y210 = system2(n,x1);
y220 = system2(n,x2);
y230 = system2(n,x3);

y21 = system2(n,(x1 + addvec));
y22 = system2(n,(x2 + addvec));
y23 = system2(n,(x3 + addvec));

disp('system 2 original')
disp(y210)
disp(y220)
disp(y230)
disp('system 2 scaled and shifted output')
disp(y21)
disp(y22)
disp(y23)


% Generates a 2x2 STEM Plot for System2 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y210), title('System2 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y220), title('System2 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y230), title('System2 Output for Input 3'), xlabel('n'), ylabel('y[n]');

% Output values for System3 and the respective input signals
% Naming Convention: y + System Number + Input Signal Number 
% Example: y31 --> Outputs for System3 with Input Signals #1
y310 = system3(n,x1);
y320 = system3(n,x2);
y330 = system3(n,x3); 
y31 = system3(n,(x1 + addvec));
y32 = system3(n,(x2 + addvec));
y33 = system3(n,(x3 + addvec));
disp('system 3 original output')
disp(y310)
disp(y320)
disp(y33)

disp('system 3 scaled and shifted output')
disp(y31);
disp(y32);
disp(y33);

% Generates a 2x2 STEM Plot for System3 for Input Signals #1 to #4
figure,
subplot(2,2,1), stem(n, y310), title('System3 Output for Input 1'), xlabel('n'), ylabel('y[n]');
subplot(2,2,2), stem(n, y320), title('System3 Output for Input 2'), xlabel('n'), ylabel('y[n]');
subplot(2,2,3), stem(n, y330), title('System3 Output for Input 3'), xlabel('n'), ylabel('y[n]');

