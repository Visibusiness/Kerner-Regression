function [a] = get_prediction_params_iterative(K, y, lambda)
    [m, ~] = size(K);
    a = zeros(m, 1);
    a = conjugate_gradient(K + lambda * eye(m), y, a, 1e-10, 1000);
end


