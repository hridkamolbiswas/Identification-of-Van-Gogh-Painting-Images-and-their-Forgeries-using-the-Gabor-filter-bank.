clear all:
close all;
clc;

lambda= [30 35 40 45];  
theta=[0 pi/6 (2/6)*pi (3/6)*pi (4/6)*pi (5/6)*pi];
sigma = 0.56*lambda;         
  k=1;
  for i=1:1:4
    for t=1:1:6 
        
        w = gabor_filter_function(theta(t),lambda(i),0,sigma(i),sigma(i),0.5);
      
        subplot(4,6,k)
       imshow(w);
        
        k=k+1;
    end 
  end
