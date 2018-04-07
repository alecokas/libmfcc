function [ centerFrequency ] = getCenterFrequency( filterBand )
%getCenterFrequency obtains the center frequency of a particular filterband
%for the purposes of calculating MFCCs
%   This function is to be only be used indirectly

    if filterBand == 0
        centerFrequency = 0;
    elseif filterBand >= 1 && filterBand <= 14
        centerFrequency = (200*filterBand)/3;
    else
        exponent = filterBand - 14.0;
        centerFrequency = power(1.0711703, exponent);
        centerFrequency = centerFrequency * 1073.4;
    end

end

