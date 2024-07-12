function retval = gaussian_kernel (x, y, sigma)
  y = y';
  x = x';
  norm_sq = sum((x-y).^2);
  retval = exp(- norm_sq / (2 * sigma ^ 2));
endfunction

%dif