clear
clc
close all
close hidden



m=0;        %choose the mode to be plotted
n=4;

dim=max([m,n]);

mn=bez_first_prime_mnzeros(dim,dim);%Calls the function that supplies a table that 
                             %holds the J_m(j'_mn) = 0.

title_m=m;   %saving the m and values for the title       
title_n=n;

dr=.05;  %radial resolution
a=2;  %radius of the circle
r=0:dr:a;
% theta=0:dtheta:2*pi-dtheta;

dtheta=2*pi/80;  %angular resolution
theta=0:dtheta:2*pi;    

[R,Theta] = meshgrid(r,theta);



mode_mn=besselj(m,mn(m+1,n)*R/a).*cos(m*Theta);

X = R.*cos(Theta); 
Y = R.*sin(Theta);
[m,n]=size(R);

surf(X,Y,mode_mn)
title(['Cylindrical Duct, Mode(',num2str(title_m),...
    ',',num2str(title_n),')'])

mn

