%{
Author: Uriel Yafté Sánchez Almaguer

In this script the following instructions are solved.
 
1. Instruction:
+ Define a (3 ×3)–matrix A with integer elements (not a diagonal matrix) in
MATLAB. Verify that A is not a singular matrix [hint: try the online-help
for det], otherwise choose a new matrix. Compute A*A, Aˆ2, A/A and
the correspondent elementwise operations (A.*A, A.ˆ2, A./A).
%}

help exercise11

A = [1 4 5 ; 3 9 8 ; 4 0 7]; 

if det(A) ~= 0
    disp("It is not a singular matrix");
    fprintf('\n');
    
    fprintf('2 Times the matrix:')
    fprintf('\n')
    disp(A*A);
    fprintf('\n');

    fprintf('Matrix to the power of 2:')
    fprintf('\n')
    disp(A^2);
    fprintf('\n');

    fprintf('Inverse Product:')
    fprintf('\n')
    disp(A/A)
    fprintf('\n');

    % Element Wise operations %

    fprintf('Elementwise product:')
    fprintf('\n')
    disp(A.*A);
    fprintf('\n');

    fprintf('Elementwise power of 2:')
    fprintf('\n')
    disp(A.^2);
    fprintf('\n');

    fprintf('Elementwise inverse product:')
    fprintf('\n')
    disp(A./A);
    fprintf('\n');


else 
    error("Choose a different matrix: A is singular.");
end 


%{
2. Instruction:
+ Given a positive real number c and a real n×n matrix A, what is the meaning
of cˆA and c.ˆA in MATLAB?
%}

c = 2;
matrixpower = c^A; 
disp(c^A);
disp(2^4);


%{ 
The operation c^A is the Matrix to the power of two. 

The operation c.^A is the power of two of every matrix element.

Note: Every operation that has a point a before declaration means that 
each element of the matrix is going to be affected by it. 
%}




%{
3. Instruction:
+ Compute 0/0 and 1/0 and study the online-help for the result. Depending
on the matrix A, this may have already occurred.
%}



disp(0/0);
% Displays not a number because it is a mathematical indeterminate operation %


disp(1/0);
% This displays 'inf' because the machine computes the limit of the expression 1/x when x-->0 %
