%%Code for solar model
% By Minerva_007
%For south walls, beta=90, gamma=0
%For north walls, idk
function [G]=Solar_power(n, t, phi, beta, gamma, cloud)
    G=cloud .* 1367.* ( 1 + 0.033 * cosd(360.*n/365) ) .* Solar_angle(n, t, phi, beta, gamma);
end