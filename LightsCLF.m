%For Zone A, 8 hours only
function [clf]=LightsCLF(time, totaltime)
    if(totaltime<8)totaltime=8;
    elseif(totaltime>16)totaltime=16;
    end
    switch totaltime
        case 8
            if(time<8)
                clf=-7e-6.*time.^6-0.0001.*time.^5+4e-5.*time.^4+0.0084.*time.^3+0.0644.*time.^2+0.2073.*time+0.6987;
            else
                clf=0.1132.*time.^-0.975;
            end
        case 10
            
        case 12
            
        case 14
            
        case 16
            
    end
end