function [K] = build_kernel (X, f, f_param)
  m = size(X, 1);
  K = zeros(m, m);
  for i = 1 : m
    for j = i : m
      K(i, j) = f(X(i, :), X(j, :), f_param);
      K(j, i) = K(i, j);
    endfor
  endfor
endfunction