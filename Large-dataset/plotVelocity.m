% Function to plot the velocity of the cart and comparing the curves
% of raw GPS data (calculating velocity using position and sample time) 
% with the estimated motion using the data fusion of IMU and GPS sensor.
function plotVelocity(estVelX, estVelY, rawVelX, rawVelY)
    
    % Estimated velocity curve for x and y direction 
    figure
    plot(estVelX, '-k');
    hold on
    plot(estVelY, '-r');
    legend('estVelX', 'estVelY');
    title('Estimated velocity');
    xlabel('Datapoints');
    ylabel('Velocity (m/sec)');
    %axis([0 279 -2.5 2.5]);
    grid minor
    hold off
    
    % Raw velocity curve for x and y direction
    figure
    plot(rawVelX, '-k');
    hold on
    plot(rawVelY, '-r');
    legend('rawVelX', 'rawVelY');
    title('Raw velocity');
    xlabel('Datapoints');
    ylabel('Velocity (m/sec)');
    grid minor
    %axis([0 61 -2.5 2.5]);
    hold off



end