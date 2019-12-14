% Function to convert the latitude and longitude data from degrees to
% meters. The function takes the initial latitude value in degrees as input
% and return the conversion factors for latitude and longitude in meters.
function [deg2mx, deg2my] = deg2m(latDeg)
    R = 6.371*(10^6);
    deg2mx = (1/360)*(2*3.14*R*cos(latDeg));
    deg2my = (1/180)*3.14*R;
end