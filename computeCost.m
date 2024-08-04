function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
##data = load('ex1data1.txt');
##X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples


% You need to return the following variables correctly
##J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%computing the hypothesis i.e. theta(x)
h = X * theta;

%computing the squared errors i.e theta(x)-y)squared
errors = (h - y) .^2
%computing the cost i.e. J (theta) = 1/2m * (theta(x)-y).^2
J = (1/(2 * m)) * sum(errors);

%return the cost
return

end


% =========================================================================

