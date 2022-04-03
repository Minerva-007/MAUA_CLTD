%%Function to determine infiltration and ventilation load
%by Minerva_007
%Volume is in liters, q in L/s.

function [load]=infiltration(type, windspeed, vol, delT, delH, ventrate)
    switch type
        case 0%tight
            ach=0.15+0.010.*windspeed+0.007.*delT;
        case 1%average
            ach=0.20+0.015.*windspeed+0.014.*delT;
        case 2%loose
            ach=0.25+0.020.*windspeed+0.022.*delT;
    end
    qv=ventrate;
    qi=ach.*vol/3600*1000;
    
    sensible=1.23.*(qi+qv).*delT;
    latent=3000.*(qi+qv).*delH;
    load=sensible+latent;
end