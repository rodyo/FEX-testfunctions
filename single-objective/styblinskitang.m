function varargout = styblinskitang(X)
% Styblinski-Tang function
%
%   STYBLINSKYTANG([x1, x2, ..., xn]) returns the value of the 
%   Styblinski-Tang at the specified points. All [xi] may be vectors. 
%   The search domain is 
%
%               -5 < x_i < 5
%
%   The global minimum is 
%
%               f(x1, x2, ..., xn) = 
%               f(-2.903534, -2.903534, ..., -2.903534) = -39.16599 * n


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
        varargout{2} = -5; % LB
        varargout{3} = +5; % LB
        varargout{4} = -2.903534018185960e+000; % solution
        varargout{5} = -3.916616570377142e+001; % *(#dims) .. function value at solution

    % otherwise, output function value
    else

        % keep all values in the search domain
        X(X < -5) = inf;  X(X > 5) = inf;

        % NOTE: orientation can not be determined automatically
        % defaults to columnsums...
        varargout{1} = sum(X.^4 - 16*X.^2 + 5*X, 1)/2;

    end
   
end