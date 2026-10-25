%{
Author: Uriel Yafté Sánchez Almaguer (2722827)
Group Number = 8

In this script the following instructions are solved.

1. Implement Conway's Game of Life in MATLAB. The playing field is a N × N
matrix A, that can take values 0 or 1 (logical). Each element of the matrix is a
"cell", and the value 1 means it is alive, while 0 stands for dead. The
rules are: 

• Any live cell with fewer than two live neighbors dies, as if by underpopulation.
• Any live cell with two or three live neighbors lives on to the next generation.
• Any live cell with more than three live neighbors dies, as if by overpopulation.
• Any dead cell with exactly three live neighbors becomes a live cell, as if by
reproduction.

The neighbors are the eight cells around a given cell, i.e. nearest neighbors and
diagonal neighbors. A "generation" is defined by the rules being applied to every
cell in the playing field.

Some HINTS for the implementation: 
• Work with a larger N + 2 × N + 2 matrix, where you leave the first and last
column and row empty. In that way cells on the edge do not require special
treatment.
• Initialize your playing field randomly. E.g. alive with probability 30% (play
with different probabilities, hint: rand, round).
• Plot the result after every generation. (hint: spy, drawnow). For small
fields a short pause can be introduced after each generation (hint: pause).


%}

% Matrix Creation %

% DISCLAIMER: we are using random matrices. For this reason we are going to 
% use a random seed generator to made our result re-pliable. 

N = 100; % Matrix Dimension

prob = 0.1; % 30% of matrix elements equal to 1

rng(4); % Random seed generator 5

A = rand(N + 2) < prob; % Matrix with %

generation = 100; % Generation 

% Changing Matrix Boundary %

A(1,:) = 0; % First row
A(end,:) = 0; % Last row
A(:,1) = 0; % First column
A(:,end) = 0; % Last column



% Remembering the rules %

%{
• Any live cell with fewer than two live neighbors dies, as if by under-population.
• Any live cell with two or three live neighbors lives on to the next generation.
• Any live cell with more than three live neighbors dies, as if by overpopulation.
• Any dead cell with exactly three live neighbors becomes a live cell, as if by
reproduction.
%}

% Analyzing each element of the matrix %

disp(A)
figure;
A_copy = A; % We make a copy of the matrix that will be changed each generation. 
for cycles = 1:generation
    for n = 2:size(A,1)-1
        for m = 2:size(A,2)-1
            if A(n,m) == 1 % (Alive)
                count_neigh = sum(A(n-1:n+1,m-1:m+1),'all') - A(n,m);
                if count_neigh < 2
                    A_copy(n,m) = 0; % Dies
                elseif count_neigh == 2 || 3
                    A_copy(n,m) = 1; % Lives
                    if count_neigh > 3
                        A_copy(n,m) = 0; % Dies
                    end
                end
            elseif A(n,m) == 0
                count_neigh = sum(A(n-1:n+1,m-1:m+1),'all') - A(n,m);
                if count_neigh == 3 % (Dead)
                    A_copy(n,m) = 1;
                end

            end
        end
        A = A_copy;
    end
    disp(A_copy)
    A = A_copy;


    % Plotting Routine (For visual purposes only) %
    imagesc(A);
    colorbar;
    colormap(turbo);
    title(sprintf('Generation %d', cycles));
    
    drawnow;

    frame = getframe(gcf);
    img = frame2im(frame); 

    [indexedImg, colorMap] = rgb2ind(img, 256);
    %pause(1);
    
end

