function varargout = mccormick(X)
% McCormick function 
%
%   MCCORMICK([x1, x2]) returns the value of the value of the McCormick
%   function at the specified points. [x1] and [x2] may be vectors.
%   The search domain is
%
%               -1.5 < x_1 < 4
%                -3  < x_2 < 4
%
%   The global minimum is 
%
%               f(x1, x2) = f(-0.54719, -1.54719) = -1.9133.


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
        varargout{2} = [-1.5, -3]; % LB
        varargout{3} = [+4, +4]; % UB
        varargout{4} = [-5.471975602214493e-001, -1.547197559268372e+000]; % solution
        varargout{5} = -1.913222954981037e+000; % function value at solution

    % otherwise, output function value
    else
    
    % split input vector X into x1, x2        
    if size(X, 1) == 2
        x1 = X(1, :);        x2 = X(2, :); 
    else        
        x1 = X(:, 1);        x2 = X(:, 2);        
    end
    
    %   keep all values in the search domain
    x1(x1 < -1.5) = inf;       x1(x1 > 4) = inf;
    x1(x2 < -3.0) = inf;       x2(x2 > 4) = inf;
    
    % output function value
    varargout{1} = sin(x1 + x2) + (x1-x2).^2 - 1.5*x1 + 2.5*x2 + 1;
    
    end
     
end