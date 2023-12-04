filePath = 'Bertram_2011_Data_figure5.csv';
data = readtable(filePath, 'ReadVariableNames', true);
columnNames= {'T',	'Q1',	'Q2',	'Q3',	'Q4',	'Q5',	'D1',	'M1',	'P11',	'P12',	'D2',	'M2',	'P21',	'P22',	'D3',	'M3',	'P31',	'P32',	'D4',	'M4',	'P410',	'P42'};
T = data.T;
Q1 = data.Q1;
Q2 = data.Q2;
Q3 = data.Q3;
Q4 = data.Q4;
Q5 = data.Q5;
D1 = data.D1;
M1 = data.M1;
P11 = data.P11;
P12 = data.P12;
D2 = data.D2;
M2 = data.M2;
P21 = data.P21;
P22 = data.P22;
D3 = data.D3;
M3 = data.M3;
P31 = data.P31;
P32 = data.P32;
D4 = data.D4;
M4 = data.M4;
P41 = data.P41;
P42 = data.P42;
% load('Bertram_2011_Data_figure5')
globalFontSize = 15;
%set(0, 'DefaultAxesFontWeight', 'bold');
set(0, 'DefaultLineLineWidth', 1.5);
set(0, 'DefaultLineLineWidth', 1.5);
figure;
title('Bertram Figure 4 ');
subplot(4,1,1); % Create a 2x1 grid of plots and select the first plot
plot(T, M1, 'b');
hold
plot(T, M2, 'g');
plot(T, M3, 'r');
plot(T, M4, 'cyan');

xlabel('Time (s)');
ylabel('Active tension (dyn/cm)');
xlim([76, 80]);
numRows = 8000; % You can change this to the desired number of rows
legend('M1', 'M2','M3', 'M4');
% Define the value range
startValue = 60;
endValue = 85;

% Create the single-column vector
Pa=  2275 * ones(1000001, 1);
Pb=  2875 * ones(1000001, 1);
subplot(4,1,2); % Select the second plot
plot(T, D1*10, 'b');
hold
plot(T, D2*10, 'g');
plot(T, D3*10, 'r');
plot(T, D4*10, 'cyan');
xlim([76, 80]);
ylim([0.07, 0.31]);
%title(['Sine Wave with ', num2str(phase_difference_degrees), ' Degree Phase Shift']);
xlabel('Time (s)');
ylabel('Diameter (mm)');
legend('D1', 'D2','D3', 'D4');

subplot(4,1,3); % Select the second plot
plot(T, Pa,'black');
hold
plot(T, Pb,'black');
plot(T, P12, 'b');
plot(T, P12, 'g');
plot(T, P21, 'r');
plot(T, P22, 'cyan');
plot(T, P31, 'm');
plot(T, P32, 'y');
plot(T, P41, 'b');
plot(T, P42, 'b--');
%title(['Sine Wave with ', num2str(phase_difference_degrees), ' Degree Phase Shift']);
xlabel('Time (s)');
ylabel('Pressure (dyncm^-2)');
xlim([76, 80]);
ylim([2100, 2700]);
legend('Pa', 'Pb','P11', 'P12','P21','P22', 'P31','P32','P41','P42');
subplot(4,1,4); % Select the second plot
plot(T, Q1*3600, 'b');
hold
plot(T, Q2*3600, 'g');
plot(T, Q3*3600, 'r');
plot(T, Q4*3600, 'cyan');
plot(T, Q5*3600, 'm');
%title(['Sine Wave with ', num2str(phase_difference_degrees), ' Degree Phase Shift']);
xlabel('Time (s)');
ylabel('Flow-rate(ml/hr)');
xlim([76, 80]);
ylim([-0.12, 1.2]);
legend('Q1', 'Q2','Q3', 'Q4','Q5');
hold
print(gcf, 'figure_2_reproduced', '-dpdf', '-r300'); % 300 DPI



