function [ normalisationFactor ] = getNormalisationFactor( numFilters, m )
%getNormalizationFactor is used to find the normalisation factor for a given
%filter or a particular MFFC
%   This function is to be only be used indirectly

    if m == 0
        normalisationFactor = sqrt(1.0/numFilters);
    else
        normalisationFactor = sqrt(2.0/numFilters);
    end
end

