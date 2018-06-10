function varargout = schweffel(X)
% Schweffel function
%
%   SCHWEFFEL([x1, x2]) returns the value of the Schweffel function
%   at the specified points. [x1] and [x2] may be vectors. The search
%   domain is
%
%               -500 < x_i < 500
%
%   The global minimum is
%
%               f(x1, x2) = f(420.9687, 420.9687) = -837.9658.


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
        varargout{2} = [-500 -500]; % LB
        varargout{3} = [+500 +500]; % UB
        varargout{4} = [4.209687467626741e+002    4.209687464869218e+002]; % solution
        varargout{5} = -8.379657745448676e+002; % function value at solution

    % otherwise, output function value
    else

        % keep all values in the search domain
        X(X < -500) = inf;  X(X > 500) = inf;

        % split input vector X into x1, x2
        if size(X, 1) == 2
            x1 = X(1, :);        x2 = X(2, :);
        else
            x1 = X(:, 1);        x2 = X(:, 2);
        end

        % output function value
        varargout{1} = -x1.*sin(sqrt(abs(x1))) -x2.*sin(sqrt(abs(x2)));
    end

end
