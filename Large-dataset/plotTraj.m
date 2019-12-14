% Function to plot the trajectory of the cart and comparing the trajectory
% of raw GPS data with the estimated motion using the data fusion of IMU
% and GPS sensor.
function plotTraj(estX, estY, gpsX, gpsY)

    % Trajectory comparison curve
    figure
    plot(estX, estY, '-r')
    hold on
    plot(gpsX, gpsY, '-k');
    legend('estData', 'rawData');
    %axis([-10 40 -25 40]);
    title('Raw trajectory vs Estimated trajectory');
    xlabel('x-axis (m)');
    ylabel('y-axis (m)');
    grid minor
    hold off

end