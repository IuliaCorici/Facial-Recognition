function [A_k S] = task4(image, k)
  A = double(imread(image));
  [m n] = size(A);
  miu = zeros(m,1);
  for i = 1 : m
    for j = 1 : n
      miu(i) = A(i,j) + miu(i);
    endfor
    miu(i) = miu(i)/n;
   endfor
  for i = 1 : m
    A(i, :) = A(i, :) - miu(i);
  endfor
  Z = zeros(m, m);
  Z = A*A'/ (n - 1);
  [V S] = eig(Z);
  V = fliplr(V);
  W = zeros(m,k);
  W = V(1 : m, 1 : k);
  Y = zeros(k, n);
  Y = W' * A;
  A_k = W*Y + miu;
  S;  
endfunction