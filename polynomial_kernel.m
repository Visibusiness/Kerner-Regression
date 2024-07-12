function retval = polynomial_kernel (x, y, d)
   y = y';
  x = x';
  retval = (y' * x + 1) ^ d;

endfunction
