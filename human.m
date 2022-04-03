%%Human load
%By Minerva_007
%Category is a list of indices from 1 to 8

function [load]=human(category, number, CLF)
    loads=[70 100 150 305 150 175 185 450];
    sens=[75 60  50  35  55  50  50  35 ]/100;
    sensible=loads(category).*sens(category).*number.*CLF;
    latent=loads(category).*(1-sens(category)).*number;
    load=sensible+latent;
end

