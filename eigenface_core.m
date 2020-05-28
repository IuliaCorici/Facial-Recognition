function [m A eigenfaces pr_img] = eigenface_core(database_path)
   n = 200;
   T = zeros(n * n, 10);
   for i = 1 : 10
     image_path = strcat(database_path, '/', num2str(i), '.jpg');
     R = double(rgb2gray(imread(image_path)));
      T(:, i) = R'(:);
   end
  m = zeros(n * n, 1);
  for i = 1 : n*n
  m(i) = mean(T(i,:));
  endfor
  A = T - m;
  [V D] = eig((A')*A);
  for i = 1 : 10
    if D(i,i) < 1 
         V(1 : end, i) = 0;
    endif
   endfor
  V( :, ~any( V, 1)) = [];
  
  eigenfaces = A * V;
  pr_img = (eigenfaces') * A;
  
end