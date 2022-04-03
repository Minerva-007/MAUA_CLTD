%%Code for solar model
% By Minerva_007
%USE ANGLES IN DEGREES!

function [cosine]=Solar_angle(n, t, phi, beta, gamma)
    %phi= latitude
    %n=day, t=time
    %beta= slope
    %gamma= It is the angle between the line due south and the projection of the normal to inclined plane in an H.P.
    omega= 15 .* (t-12);
    delta= 23.5 .* sind ( 360.*(284+n) ./ 365);
    A= sind(phi) .* cosd(beta);
    B= cosd(phi) .* sind(beta) .* cosd(gamma);
    C= sind(beta) .* sind(gamma);
    D= cosd(phi) .* cosd(beta);
    E= sind(phi) .* sind(beta) .* cosd(gamma);
    cosine= (A-B).*sind(delta) + (C.*sind(omega) + (D+E).*cosd(omega)).*cosd(delta);
end