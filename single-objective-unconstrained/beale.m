function varargout = beale(X)
% Beale funcion
%
%   BEALE([x1, x2]) returns the value of the value of the Beale
%   function at the specified points. [x1] and [x2] may be vectors.
%   The search domain is
%
%               -4.5 < x_i < 4.5
%
%   The global minimum is
%
%               f(x1, x2) = f(3, 0.5) = 0.


% Please report bugs and inquiries to:
%
% Name   : Rody P.S. Oldenhuis
% E-mail : oldenhuis@gmail.com
% Licence: 2-clause BSD (See Licence.txt)


% If you find this work useful, please consider a donation:
% https://www.paypal.me/RodyO/3.5

    % if no input is given, return dimensions, bounds and minimum
    if (nargin == 0)
        varargout{1} = 2;  % # dims
        varargout{2} = [-4.5, -4.5]; % LB
        varargout{3} = [+4.5, +4.5]; % UB
        varargout{4} = [3, 0.5]; % solution
        varargout{5} = 0; % function value at solution

    % otherwise, output function value
    else

        % keep values in the serach interval
        X(X < -4.5) = inf;     X(X > 4.5) = inf;

        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end

        % output function value
        varargout{1} = (1.5 - x1 + x1.*x2).^2 + (2.25 - x1 + x1.*x2.^2).^2 + (2.625 - x1 + x1.*x2.^3).^2;

    end

end