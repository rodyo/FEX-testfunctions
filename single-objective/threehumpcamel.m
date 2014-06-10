function varargout = threehumpcamel(X)
% Three hump camel back function 
%
%   THREEHUMPCAMEL([x1, x2]) returns the value of the Zettle function at the
%   specified points. [x1] and [x2] may be vectors. The search domain 
%   is 
%
%               -5 < x_i < 5
%
%   The global minimum is 
%
%               f(x1, x2) = f(0, 0) = 0.


% Please report bugs and inquiries to: 
%
% Name       : Rody P.S. Oldenhuis
% E-mail     : oldenhuis@gmail.com    (personal)
%              oldenhuis@luxspace.lu  (professional)
% Affiliation: LuxSpace sàrl
% Licence    : GPL + anything implied by placing it on the FEX


% If you find this work useful, please consider a donation:
% https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6G3S5UYM7HJ3N


    % if no input is given, return dimensions, bounds and minimum
    if (nargin == 0)
        varargout{1} = 2;  % # dims
        varargout{2} = [-5,-5]; % LB
        varargout{3} = [+5,+5]; % LB
        varargout{4} = [0, 0]; % solution
        varargout{5} = 0; % function value at solution

    % otherwise, output function value
    else

        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end

        % keep all values in the search domain
        x1(x1 < -5) = inf;  x1(x1 > 5) = inf;
        x2(x2 < -5) = inf;  x2(x2 > 5) = inf;

        % output function value
        varargout{1} = 2*x1.^2 - 1.05*x1.^4 + x1.^6/6 + x1.*x2 + x2.^2;
    end
     
end
