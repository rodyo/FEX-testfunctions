function varargout = chichinadze(X)
% Chichinadze function
%
%   CHICHINADZE([x1, x2]) returns the value of the Chichinadze
%   function at the specified points. [x1] and [x2] may be vectors. 
%   The search domain is
%
%               -30 < x_i < 30
%
%   The global minimum is 
%
%               f(x1, x2) = f(5.90133, 0.5) = -43.3159.


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
        varargout{2} = [-30, -30]; % LB
        varargout{3} = [+30, +30]; % UB
        varargout{4} = [6.189866586965680e+000, 0.5]; % solution
        varargout{5} = -4.294438701899098e+001; % function value at solution

    % otherwise, output function value
    else
        
        % keep values in the serach interval
        X(X < -30) = inf;     X(X > 30) = inf;
        
        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end
        
        % output function value
        varargout{1} = x1.^2 - 12*x1 + 11 + 10*cos(pi*x1/2) + 8*sin(5*pi*x1/2) - ...
            1/sqrt(5)*exp(-((x2 - 0.5).^2)/2);
        
    end
     
end