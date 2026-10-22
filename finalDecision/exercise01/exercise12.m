%{
Author: Uriel Yafté Sánchez Almaguer

In this script the following instructions are solved.

1. Instruction
+ Predict the outcome of the following lines, before trying them out.

    • -1+1+1e-20
        A = 
        (-1+1)+(1e-20) =
        (0) + (1e-20) =
        1e-20

    • -1+(1+1e-20)
        A = 
        -1 + (1 + 1e-20) =
        because 1e-20 < 1e-16 computer takes it as not relevant for the sum. 
        -1 + (1) =
        0

    • (-1+1)+1e-20
        A = 
        (0) + 1e-20 =
        1e-20

    • -1+1e-20+1
        A = 
        (-1+1e-20) + 1 =
        (-1) + 1 = 
        0

    • 12345678910111213 - 12345678910111212
        A = This number has 17 elements, but the float operations only
        supports 16 elements numbers. So the computer rounds the expression at
        the last number in this case: 
        = 
        12345678910111212 - 12345678910111212 = 
        0
        
        
    • 00000000000000003 - 00000000000000002
        A = This number has 16 elements, so the operation concludes
        normally:  
        3 - 2 =
        1

    • 0.0000000000000003 - 0.0000000000000002:
        A = This number has 16 elements, so the operation concludes
        normally too:
        3e-16 - 2e-16 =
        1e-16 

%}

help exercise12
format long 

O1 = -1+1+1e-20; 

O2 = -1+(1+1e-20);

O3 = (-1+1)+1e-20;

O4 = -1+1e-20+1; 

O5 = 12345678910111213 - 12345678910111212;

O6 = 00000000000000003 - 00000000000000002; 

O7 = 0.0000000000000003 - 0.0000000000000002;


disp("     -1+1+1e-20 =  " + O1)
disp("     -1+(1+1e-20) =  " + O2)
disp("     (-1+1)+1e-20 =  " + O3)
disp("     -1+1e-20+1 =  " + O4)
disp("     12345678910111213 - 12345678910111212 =  " + O5)
disp("     00000000000000003 - 00000000000000002 =  " + O6)
disp("     0.0000000000000003 - 0.0000000000000002  " + O7)