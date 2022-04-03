
function [CLTD]=wallCLTD(lat, pos)
    hor=    [92 90 83]/1.8;
    north=  28/1.8;
    south=  [31 47 62]/1.8;
    east=   31/1.8;
    west=   42/1.8;
   if strcmp(pos,'hor')
       CLTD=(-0.0174.*lat.^2+0.875.*lat+81)/1.8;
   elseif strcmp(pos,'north')
       CLTD=north;
   elseif strcmp(pos,'south')
       CLTD=(-0.0035.*lat.^2+1.5417.*lat-4)/1.8;
   elseif strcmp(pos,'east')
       CLTD=east;
   elseif strcmp(pos,'west')
       CLTD=west;
   end
end