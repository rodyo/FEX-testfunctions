function varargout = crownedcross(X)
% Crowned cross function
%
%   CROWNEDCROSS([x1, x2]) returns the value of the crowned cross
%   function at the specified points. [x1] and [x2] may be vectors.
%   The search domain is
%
%               -10 < x_i < 10
%
%   The global minimum is found on the planes x = 0 and y = 0, with
%
%                   fmin = 0.0001.


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
        varargout{2} = [-10, -10]; % LB
        varargout{3} = [+10, +10]; % UB
        varargout{4} = NaN; % solution (too complicated)
        varargout{5} = 0.0001; % function value at solution

     % otherwise, output function value
    else

        % keep values in the serach interval
        X(X < -10) = inf;     X(X > 10) = inf;

        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end

        % output function value
        varargout{1} = 0.0001*(abs(sin(x1).*sin(x2).*exp(abs(100 - sqrt(x1.^2 + x2.^2)/pi))) + 1).^(0.1);

    end

end