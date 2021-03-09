%% calculate step and input initial value
clear;clc;close all
Delta = 0.0005;   % step
t = 0:Delta:0.7;   % independent variable£ºtime t
n = length(t);
Y(:,1) = [10;1;0;0];   % initial value of four variables
 
%% calculate the differential equation
for k = 1:n-1
    z1 = f(t(k),Y(:,k));
    z2 = f(t(k) + Delta/2,Y(:,k) + z1 * Delta/2);
    z3 = f(t(k) + Delta/2,Y(:,k) + z2 * Delta/2);
    z4 = f(t(k) + Delta,Y(:,k) + z3 * Delta);
    Y(:,k+1) = Y(:,k) + Delta * (z1 + 2*z2 + 2*z3 + z4)/6;
end
y1 = Y(1,:);
y2 = Y(2,:);
y3 = Y(3,:);
y4 = Y(4,:);
 
%% draw the result
figure
set(gcf,'units','normalized','position',[0.15 0.2 0.7 0.6]);  % set locationa and size 
plot(t,y1,'linewidth',2)
hold on
plot(t,y2,'linewidth',2)
hold on
plot(t,y3,'linewidth',2)
hold on
plot(t,y4,'linewidth',2)
ylabel('Concentration (uM)')
xlabel('t (min)')
legend('[S]','[E]','[ES]','[P]')

figure(2)  % draw the plot in question 3
k3 = 150;
f4 = k3 * y3;
plot(y1,f4,'linewidth',2)
ylabel('V (uM/min)')
xlabel('[S] (uM)')
