%For zone A, 8 hours only
%Also applies to unhooded equipment
function [clf]=HumanCLF(time, totaltime)
if(time<=8)&(time>0)
    clf=0.7845.*time.^0.1227;
elseif(time>8)&(time<20)
    clf=0.2634.*time.^-1.402;
else
    clf=0;
end
end