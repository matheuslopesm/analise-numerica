A = [3 5; -2 4];

m21 = -A(2,1)/A(1,1) #i

L1 = m21*A(1,:) #ii

A(2,:) = L1 + A(2,:) #iii

#iv A matriz A se tornou um sistema triangular superior
