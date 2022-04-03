%%Function to determine ventilation rate
%By Minerva_007
%area in sq. m, isSmoker is a bool,
%type: 0 for office, 1 for meeting place, 2 for lobby.
function [ventrate]=ventilation(people, type, isSmoker, filtereff)
    switch type
        case 0 %office
            if(isSmoker==true)
               ventrate=people.*10;
            else
               ventrate=people.*2.5;
             end
        case 1 %meeting place
            if(isSmoker==true)
                 ventrate=people.*17.5;
            else
                 ventrate=people.*3.5;
            end
        case 2 %Lobbies
            if(isSmoker==true)
                 ventrate=people.*7.5;
            else
                 ventrate=people.*2.5;
            end
    end
    Vr=(ventrate-2.5)./filtereff;
    ventrate=2.5+Vr;
end