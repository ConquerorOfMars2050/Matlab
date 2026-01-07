% Here are some complex numbers, saved to variables from z1 to z5
z1 = 3 + 5j;
z2 = -4 -2j;
z3 = -1 +3j;
z4 = 5 -1j;
z5 = 1 + 15j;
z6 = -4 +2j;
% Follow the instructions below

% 1. Add z1 and z2 together, and store it to c1
c1 = z1 + z2;

% 2. Multiply z3 and z4, and store it to c2
c2 = z3 * z4;

% 3. Multiply z2 and z6 together, and store it to x1
x1 = z2 *z6;

% 4. Divide z3 by z5, and store it to c3
c3 = z3 / z5;

% 5. Multiply z1 and z2 together, and divide by z6 - store the result in c4
c4 = (z1 * z2) / z6;

% 6. Divide z4 by z3, and store it to c5
c5 = z4 / z3;

% 7. Raise z4 to the power of 4, and store it to c6
c6 = (z4)^4;

% 8. Find the cube root of z5, and store it to c7
c7 = (z5)^(1/3);

% 9. Find the imaginary part of square root of z3, and store it to x2
x2 = imag((z3)^(1/2));

% 10. A complex number has an argument of 70 degrees and a modulus of 2.5, use the exponential notation to save it to c8

c8 = 2.5 * (exp((70 * (pi / 180))*j));
