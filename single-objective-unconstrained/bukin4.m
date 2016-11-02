function varargout = bukin4(X)
% Bukin function #4
%
%   BUKIN4([x1, x2]) returns the value of the 4th Bukin function
%   at the specified points. [x1] and [x2] may be vectors. 
%   The search domain is
%
%               -15 < x_1 < -5
%                -3 < x_2 <  3
%
%   The global minimum is 
%
%               f(x1, x2) = f(-10, 0) = 0


% Please report bugs and inquiries to: 
%
% Name       : Rody P.S. Oldenhuis
% E-mail     : oldenhuis@gmail.com    (personal)
%              oldenhuis@luxspace.lu  (professional)
% Affiliation: LuxSpace s�rl
% Licence    : BSD


% If you find this work useful, please consider a donation:
% https://www.paypal.me/RodyO/3.5

    % if no input is given, return dimensions, bounds and minimum
    if (nargin == 0)
        varargout{1} = 2;  % # dims
        varargout{2} = [-15, -3]; % LB
        varargout{3} = [-5,  +3]; % UB
        varargout{4} = [-10, 0]; % solution
        varargout{5} = 0; % function value at solution

    % otherwise, output function value
    else

    % split input vector X into x1, x2        
    if size(X, 1) == 2
        x1 = X(1, :);        x2 = X(2, :); 
    else        
        x1 = X(:, 1);        x2 = X(:, 2);        
    end
        
    % keep values in the serach interval
    x1(x1 < -15) = inf;     x1(x1 > -5) = inf; 
    x2(x2 <  -3) = inf;     x2(x2 >  3) = inf; 
    
    % output function value
    varargout{1} = 100*x2.^2 + 0.01*abs(x1 + 10);
    
    end
     
end