% Function to plot the acceleration of the cart and comparing the curves
% of raw IMU data (accelerometer) with the estimated accelration using the 
% data fusion of IMU and GPS sensor.
function plotAccel(estAccelX, estAccelY, rawAccelX, rawAccelY) 
    
    % Estimated acceleration curve
    figure
    plot(estAccelX, '-k');
    hold on
    plot(estAccelY, '-r');
    legend('estAccX', 'estAccY');
    title('Estimated acceleration');
    xlabel('Datapoints');
    ylabel('Acc (m/sec2)');
    axis([0 279 -0.8 0.4]);
    grid minor
    hold off

    % Raw acceleration curve
    figure
    plot(rawAccelX, '-k');
    hold on
    plot(rawAccelY, '-r');
    legend('accX', 'accY');
    title('Acceleration');
    xlabel('Datapoints');
    ylabel('Acc (m/sec2)');
    axis([0 279 -0.8 0.4]);
    grid minor
    hold off
    
end