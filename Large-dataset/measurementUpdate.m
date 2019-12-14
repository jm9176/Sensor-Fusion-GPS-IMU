% Measurement update for the kalman filter. Updating state estimate and
% calculating measurement residual.
function [y, K, P, xkk] = measurementUpdate(z, C, R, P, xk)
    y = z - C*xk;
    K = (P*C')*(pinv((C*P*C')+R)');
    
    % Updating state estimate
    xkk = xk + (K*y);
    P = (eye(6) - (K*C))*P;
    
    % Measurement residual
    y = z - (C*xkk);
end