function varargout = booth(X)
% Booth function
%
%   BOOTH([x1, x2]) returns the value of the Booth function 
%   at the specified points. [x1] and [x2] may be vectors. 
%   The search domain is
%
%               -10 < x_i < 10
%
%   The global minimum is 
%
%                   f(x1, x2) = f(1, 3) = 0


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
        varargout{2} = [-10, -10]; % LB
        varargout{3} = [+10, +10]; % UB
        varargout{4} = [1, 3]; % solution
        varargout{5} = 0; % function value at solution

    % otherwise, output function value
    else
        
        % keep values in the search interval
        X(X < -10) = inf;     X(X > 10) = inf;
        
        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end
        
        % output function value
        varargout{1} = (x1 + 2*x2 - 7).^2 + (2*x1 + x2 - 5).^2;
    
    end
    
end