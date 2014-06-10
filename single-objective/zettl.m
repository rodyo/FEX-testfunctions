function varargout = zettl(X)
% Zettl function
%
%   ZETTL([x1, x2]) returns the value of the Zettle function at the
%   specified points. [x1] and [x2] may be vectors. The search domain 
%   is 
%
%               -5 < x_i < 5
%
%   The global minimum is 
%
%               f(x1, x2) = f(-0.0299, 0) = -0.003791


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
        varargout{1} = 2;        % # dims
        varargout{2} = [-5, -5]; % LB
        varargout{3} = [+5, +5]; % UB
        varargout{4} = [-2.989597760285287e-002, 0]; % solution
        varargout{5} = -3.791237220468656e-003; % function value at solution
        
    % otherwise, output function value
    else
        % keep all values in the search domain
        X(X < -5) = inf;        X(X > 5) = inf;
        
        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end
        
        % output function value
        varargout{1} = (x1.^2 + x2.^2 - 2*x1).^2 + x1/4;
    end
    
end