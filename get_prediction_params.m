function [a] = get_prediction_params(K, y, lambda)
    m = size(K, 1);
    term = lambda * eye(m) + K;
    L = cholesky(term);
    inverse_L = get_lower_inverse(L);
    a = lambda * (inverse_L' * (inverse_L * y));
end