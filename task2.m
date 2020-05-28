function task2(image)
  % primul grafic
  figure(1)
	clf
  A = double(imread(image));
  [U, S, V] = svd(A);
  [n m] = size(S);
  V = zeros(min(m, n),1);
  for i = 1 : min(m, n)
      V(i) = S(i, i);
  endfor
  plot(sort(V, 'descend'));
  
  % al doilea grafic
  figure(2)
  clf
  grafic = zeros(min(m,n), 1);
  suma = 0;
  suma_k = 0;
  for i = 1 : min(m, n)
    suma = suma + S(i, i);
  endfor
  t = 1;
 for i = 1 : min(m, n)
    suma_k = suma_k + S(i, i);
    grafic(t) = suma_k / suma;
    t++;
  endfor
  plot(grafic);
  
  % al treilea grafic
  figure(3)
  clf
 grafic3 = zeros(min(m, n), 1);
 for k = 1 : min(m,n)
  A_k = task1(image, k);
  sumgrafic = 0;
   for i = 1 : n
    for j = 1 : m
      sumgrafic = (A(i,j)-A_k(i,j))^2 + sumgrafic;
     endfor
   endfor
   grafic3(k) = sumgrafic / (n*m);
 endfor
plot(grafic3);

 % al patrulea grafic
 figure(4)
 clf
 rata = zeros(min(m,n),1);
 for k = 1 : min(m, n)
   rata(k) = (m * k + n * k + k) / (m * n);
  endfor
  plot(rata);
end