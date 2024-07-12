function [L] = cholesky (A)
    [n, ~] = size(A);
  L = zeros(n);

  for j = 1:n
    L(j,j) = sqrt(A(j,j) - L(j, 1:j-1) * L(j, 1:j-1)');
    L(j+1:n, j) = (A(j+1:n, j) - L(j+1:n, 1:j-1) * L(j, 1:j-1)') / L(j,j);
  endfor
endfunction

