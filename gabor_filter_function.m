function [w]=gabor_filter_function(theta,lambda,psi,sigma_x,sigma_y,gamma)
%  filter size define

row=200;
col=200;
 % (0,0) point of filter
 x0=(row+1)/2;
 y0=(col+1)/2;
 
 for i = 1:row
     for j = 1:col
     x_theta = (i-x0)*cos(theta) + (j-y0)*sin(theta);
     y_theta = -(i-x0)*sin(theta) + (j-y0)*cos(theta);
     
     w(i,j) = exp(-.5*(x_theta.^2/sigma_x^2+(gamma^2*y_theta.^2)/sigma_y^2)).*cos(2*pi/lambda*x_theta+psi);
     end
 end