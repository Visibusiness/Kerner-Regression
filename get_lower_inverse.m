function [P] = get_lower_inverse (L)
  P = zeros(size(L));
  [n, ~] = size(L);
  for i = 1:n
    P(i, i) = 1 / L(i, i);
    for j = i+1:n
      P(j, i) = -L(j, i:n) * P(i:n, i) / L(j, j);
    endfor
  endfor
endfunction

