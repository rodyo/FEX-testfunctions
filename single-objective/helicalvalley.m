function varargout = helicalvalley(X)
% Helical valley function
%
%   HELICALVALLEY([x1, x2, x3]) returns the value of the value of the 
%   Helical valley function at the specified points. All [xi] may be 
%   vectors. 
%
%   The global minimum is
%
%                   f(x1, x2, x3) = f(1, 0, 0) = 0.


% Please report bugs and inquiries to: 
%
% Name       : Rody P.S. Oldenhuis
% E-mail     : oldenhuis@gmail.com    (personal)
%              oldenhuis@luxspace.lu  (professional)
% Affiliation: LuxSpace sàrl
% Licence    : BSD


% If you find this work useful, please consider a donation:
% https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6G3S5UYM7HJ3N


    % if no input is given, return dimensions, bounds and minimum
    if (nargin == 0)
        varargout{1} = 3;  % # dims
        varargout{2} = [-inf, -inf, -inf]; % LB
        varargout{3} = [+inf, +inf, +inf]; % UB
        varargout{4} = [1, 0, 0]; % solution
        varargout{5} = 0; % function value at solution
        
    % otherwise, output function value
    else
        
        % split input vector X into x1, x2, x3
        if size(X, 1) == 3
            x1 = X(1, :);  x2 = X(2, :);  x3 = X(3, :);
        else
            x1 = X(:, 1);  x2 = X(:, 2);  x3 = X(:, 3);
        end
        
        % output function value
        varargout{1} = 100*((x3 - 10*atan2(x2, x1)/2/pi).^2 + (sqrt(x1.^2 + x2.^2) - 1).^2) + x3.^2;
    
    end
     
end