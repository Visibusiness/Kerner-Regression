function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  [m, n] = size(X);
  train_idx = round(m * percentage);
  pred_idx = m - train_idx;
  
  for i = 1:pred_idx
    X_pred(i,:) = X(i+train_idx,:);
    y_pred(i) = y(i+train_idx);
  endfor
  y_pred = y_pred';

  for i = 1:train_idx
    X_train(i,:) = X(i,:);
    y_train(i) = y(i);
  endfor
  y_train = y_train';
  
endfunction
