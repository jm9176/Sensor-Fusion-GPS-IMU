% Function to convert the coordinate frame A relative to frame B, using the
% rotation angles, roll-pitch-yaw. The product (or the frame transformation)
% follows the X-Y-Z fixed angles rotation principle, which represents the 
% rotation about Z-axis (psi) followed by rotation about Y-axis (tht) and 
% then X-axis (phi)
function R = frameTrans(phi,tht,psi)
   
    Rpsi = [cos(psi),-sin(psi),0;
            sin(psi),cos(psi),0;
            0,0,1];
    
    Rtht = [cos(tht),0,sin(tht);
            0,1,0;
            -sin(tht),0,cos(tht)];
        
    Rphi = [1,0,0;
            0,cos(phi),-sin(phi);
            0,sin(phi),cos(phi)];
    
    R = (Rpsi)*(Rtht)*(Rphi);
        
end