function [ filterParameter ] = getFilterParameter( samplingRate, binSize, frequencyBand, filterBand )
%getFilterParameter obtains filter parameters for calculating MFCCs
%   This function is to be only be used indirectly

    filterParameter = 0.0;
    
    boundary = (frequencyBand*samplingRate)/binSize;
    prevCenterFrequency = getCenterFrequency(filterBand-1);
    thisCenterFrequency = getCenterFrequency(filterBand);
    nextCenterFrequency = getCenterFrequency(filterBand+1);
    
    if boundary >= 0 && boundary < prevCenterFrequency
        filterParameter = 0.0;
    elseif boundary >= prevCenterFrequency && boundary < thisCenterFrequency
        filterParameter = (boundary - prevCenterFrequency) / (thisCenterFrequency - prevCenterFrequency);
		filterParameter = filterParameter * getMagnitudeFactor(filterBand);
    elseif boundary >= thisCenterFrequency && boundary < nextCenterFrequency
    	filterParameter = (boundary - nextCenterFrequency) / (thisCenterFrequency - nextCenterFrequency);
		filterParameter = filterParameter * getMagnitudeFactor(filterBand);    
    elseif boundary >= nextCenterFrequency && boundary < samplingRate
        filterParameter = 0.0;
    end
end

