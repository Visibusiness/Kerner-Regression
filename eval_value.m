function pred = eval_value(x, X, f, f_param, a)
   m = size(X, 1);
   kernel_values = zeros(m, 1);
   for i = 1:m
       kernel_values(i) = a(i) * f(x, X(i, :), f_param);
   end
   pred = sum(kernel_values);
endfunction