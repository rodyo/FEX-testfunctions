function varargout = eggholder(X)
% generalized egg holder function
%
%   EGGHOLDER([x1, x2, ..., xn]) returns the value of the generalized 
%   eggholder function at the specified points. All [xi] may be vectors. 
%   The search domain is
%
%               -512 < x_i < 512
%
%   global minimum (for 2 variables) is at
%
%       f(x1, x2) = f(512, 404.2319) = 959.64


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
        varargout{1} = inf;  % # dims
        varargout{2} = -512; % LB
        varargout{3} = +512; % LB
        varargout{4} = NaN; % solution
        varargout{5} = NaN; % function value at solution (too complicated)

    % otherwise, output function value
    else

        % keep values in the serach interval
        X(X < -512) = inf;     X(X > 512) = inf;
        
        % split input vector X into X1, X2
        if size(X, 1) == 2
            X1 = X(1:end-1, :);        X2 = X(2:end, :);
            % output rowsum
            varargout{1} = sum(-(X2+47).*sin(sqrt(abs(X2+X1/2+47)))-X1.*sin(sqrt(abs(X1-(X2+47)))), 1);
        else
            X1 = X(:, 1:end-1);        X2 = X(:, 2:end);
            % output columnsum
            varargout{1} = sum(-(X2+47).*sin(sqrt(abs(X2+X1/2+47)))-X1.*sin(sqrt(abs(X1-(X2+47)))), 2);
        end
        
    end
    
end