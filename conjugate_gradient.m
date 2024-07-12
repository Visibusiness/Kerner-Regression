function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
    x = x0;
    r = b - A * x; 
    p = r; 
    iter = 0; 

    while norm(r) > tol && iter < max_iter

        step_size = (r' * r) / (p' * A * p);
        x = x + step_size * p;
        r_new = r - step_size * A * p;
        direction_modifier = (r_new' * r_new) / (r' * r);
        p = r_new + direction_modifier * p;
        r = r_new;
        iter = iter + 1;
    end
endfunction