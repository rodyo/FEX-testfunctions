function varargout = ackley(X)
% Ackley funcion 
%
%   ACKLEY([x1, x2]) returns the value of the value of the Ackley
%   function at the specified points. [x1] and [x2] may be vectors.
%   The search domain is
%
%               -35 < x_i < 35
%
%   The global minimum is 
%
%               f(x1, x2) = f(3, 0.5) = 0.


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
        varargout{2} = [-35, -35]; % LB
        varargout{3} = [+35, +35]; % UB
        varargout{4} = [3, 0.5]; % solution
        varargout{5} = 0; % function value at solution

    % otherwise, output function value
    else
        
        % Keep all values in the search domain
        X(X < -35) = inf;   X(X > 35) = inf;
        
        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end
        
        % output function value
        varargout{1} = 20*(1 - exp(-0.2*sqrt(0.5*(x1.^2 + x2.^2))))...
            - exp(0.5*(cos(2*pi*x1) + cos(2*pi*x2))) + exp(1);
        
    end
    
end