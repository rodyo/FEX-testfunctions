[![View Test functions for global optimization algorithms on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/23147-test-functions-for-global-optimization-algorithms)

[![Donate to Rody](https://i.stack.imgur.com/bneea.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url)

# FEX-testfunctions

This is a set of test functions which can be used to test the effectiveness of global optimization algorithms. Some are rather easy to optimize (rosenbrock, leon, ...), others next to impossible (crosslegtable, bukin6, ...).
All the test-functions are taken from either [1], [2] or [3] (see below). All functions may be called in two ways:

[dims, lb, ub, sol, fval_sol] = fun()

(e.g., no input arguments) This returns the number of dimensions of the function, the default lower and upper bounds, the solution vectors for all global minima and the corresponding function values. To calculate the function value for input X, use:

val = fun( [x1, x2, ..., xn] )

with the dimension [n] depending on the specific function [fun] (for most functions, n=2). Note the single vector argument--this is done in order to easily insert the function into a global optimizer that inserts a [N x n] matrix of trial vectors in these functions.

I also included a function to display most of the functions. This is called EZIMAGE, and can be called with a function handle argument:

ezimage(@himmelblau) (to plot the himmelblau function)
ezimage(@sinenvsin) (see screenshot)
...

or just as-is:

ezimage()

which lists all functions and waits for user input. This is meant to get a first impression of what the challenges are the test function has to offer.

FUTURE WORK:
- constrained single-objective functions
- (constrained) multi-objective functions

sources:
[1] Mishra, Sudhanshu. "Some new test functions for global optimization and performance of repulsive particle swarm method". MPRA, 23rd august 2006. http://mpra.ub.uni-muenchen.de/2718/
[2] Z.K. Silagadze. "Finding two-dimensional peaks". 11th mar 2004. arXiv preprint: arXiv:physics/0402085v3
[3] W. Sun, Ya-X. Yuan. "Optimization theory and Methods. Nonlinear Programming". Springer verlag, 2006. ISBN-13:978-0-387-24975-9.

If you consider this work useful, please consider [a donation](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url).
