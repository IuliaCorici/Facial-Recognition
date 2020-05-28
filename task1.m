function A_k = task1(image, k)
  A = double(imread(image));
  [U, S, V] = svd(A);
  S2 = S;
  S2(k + 1:end, :) = 0;
  S2(:, k + 1:end) = 0;
  A_k = U*S2*V';
end