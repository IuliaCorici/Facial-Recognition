function task5(image)
  A = double(imread(image));
  [m n] = size(A);
  k = min(m, n);
  % graficul 1
  figure(1)
  clf
  [A_k S] = task3(image, k);
  plot(diag(S));
  
  %graficul 2
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
  
  %graficul 3
  figure(3)
  clf
  grafic3 = zeros(min(m, n), 1);
  for k = 1 : min(m,n)
  [A_k S] = task3(image, k);
  sumgrafic = 0;
   for i = 1 : m
    for j = 1 : n
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
   rata(k) = (2 * k + 1) / (n);
  endfor
  plot(rata); 
end