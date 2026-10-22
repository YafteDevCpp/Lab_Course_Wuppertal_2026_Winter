clc; clear;
x = [3 0 0 0
     7 4 0 0
     2 4 6 0
     8 5 9 3];
format long g

%{
       3
      / \
     7   4
    / \ / \
   2   4   6
  / \ / \ / \
 8   5   9   3
%}

function maxSum = maxpath(x)
%each element get the larger of its two lower neighbors added to it. At
%the end x(1, 1) holds the max path sum
n= size(x, 1);
for i = n-1: -1: 1
    for j = 1: i
        x(i, j) = x (i ,j) + max(x(i+1, j), x(i+1, j+1));
    end
    %{
        fprintf("After row %d:\n", i)
        disp(x)
    %}
end
maxSum = x(1, 1);
end

maxpath(x)

%help tril
x = tril(magic(100)^2);
maxpath(x)


