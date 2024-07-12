function retval = linear_kernel (x, y, other)

  y = y';
  x = x';
  retval = y' * x;
endfunction
