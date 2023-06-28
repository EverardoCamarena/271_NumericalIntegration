% x as symbolic ones The syms function creates
% a variable dynamically and automatically assigns
% to a MATLAB variable with the same name
syms x

% Lower Limit
a=0;

% Upper Limit
b=1;

% Number of segments
n=10;

% Declare the function
f1=1/(1+x^2);

% inline creates a function of
% string containing in f1
f=inline(f1);

% h is the segment size
h=(b - a)/n;

% X stores the summation of first
% and last segment
X=f(a)+f(b);

% variable R stores the summation of
% all the terms from 1 to n-1
R=0;
for i = 1:1:n-1
	xi=a+(i*h);
	R=R+f(xi);
end

% Formula to calculate numerical integration
% using Trapezoidal Rule
I=(h/2)*(X+2*R);

% Display the output
disp('Area under the curve 1/(1+x^2) = ');
disp(I);
