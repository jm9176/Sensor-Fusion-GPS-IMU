% Prediction step for the Kalman filter. Using previous state vaector to
% make a new state prediction and using state transition matrix to
% update state prediction covariance
function [xk, P] = predictionStep(A, xkmin, P, Q)
    xk = A*xkmin;
    P = (A*P*A') + Q;
end