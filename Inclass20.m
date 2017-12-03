%Inclass 20
%GB comments
1 100
2 100
3 100
4. 100
Overall 100


%In this folder you will find a .mat file with x and y data

% For all of the questions below, use any options as necessary to get a
% good fit - starting points, lower bounds etc. 

% 1. Define a custom model and try to fit the data to a Michaelis function 
% y = V*x/(K+x). 

load('data.mat');
fit_Mich = 'V*x/(K+x)';
fitmodel_Mich = fittype(fit_Mich);
[fit_out_M, fit_metric_M] = fit(xx(:), yy(:), fitmodel_Mich);
plot(fit_out_M, xx, yy);

% 2. Use a custom model to try to fit the data to a Hill function with
% exponent 2: y = V*x^2/(K^2+x^2)

fit_Hill = 'V*x^2/(K^2+x^2)';
fitmodel_Hill = fittype(fit_Hill);
[fit_out_H, fit_metric_H] = fit(xx(:),yy(:),fitmodel_Hill);
plot(fit_out_H, xx, yy)

% 3. Now treat the exponent as a free parameter and perform the fit again,
% that is fit to the model y = V*x^n/(K^n+x^n)

fit_Free = 'V*x^n/(K^n+x^n)';
fitmodel_Free = fittype(fit_Free);
[fit_out_F, fit_metric_F] = fit(xx(:),yy(:),fitmodel_Free,'StartPoint',[2, 3, 5]);
plot(fit_out_F, xx, yy)

% 4. Redo parts 1 and 2, but using your model from 3 and fixing the value of
% n to either 1 or 2.

fit_Hill_re = 'V*x^2.1/(K^2.1+x^2.1)';
fitmodel_Hill_re = fittype(fit_Hill_re);
[fit_out_H_re, fit_metric_H_re] = fit(xx(:),yy(:),fitmodel_Hill_re,'Startpoint',[2,3]);
plot(fit_out_H_re, xx, yy)
