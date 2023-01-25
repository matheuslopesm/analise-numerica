A = [2 1 -3; 4 -2 5; 1 2 -7];

L = eye(3) #i
L(2,1) = A(2)/A(1,1) #ii
L(3,1) = A(3,1)/A(1,1) #iii
A(2,:) = -L(2,1)*A(1,:)+A(2,:) #iv
A(3,:) = -L(3,1)*A(1,:)+A(3,:) #v
L(3,2) = A(3,2)/A(2,2) #vi
A(3,:) = -L(3,2)*A(2,:)+A(3,:) #vii

#viii) L se tornou sistema triangular inferior e A se tornou sistema triangular superior
