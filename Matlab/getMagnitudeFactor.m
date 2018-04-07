function [ magnitudeFactor ] = getMagnitudeFactor( filterBand )
%getMagnitudeFactor obtains the mangitude factor of a given filter band as
%is to be used for finding MFCCs of a particular spectrum
%  This function is to be only be used indirectly

    magnitudeFactor = 0.0;
    if filterBand >= 1 && filterBand <= 14
        magnitudeFactor = 0.015;
    elseif filterBand >= 15 && filterBand <= 48
        magnitudeFactor = 2.0 / (getCenterFrequency(filterBand+1) - getCenterFrequency(filterBand-1));
    end

end

