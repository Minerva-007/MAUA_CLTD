%%Function to determine equipment load
%By Minerva_007

function [load]=equipment(wattage, CLF, waste, no, util)
    load=wattage.*CLF.*waste.*no.*util;
end
