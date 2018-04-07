function [ result ] = getMFCC( spectralData, samplingRate, numFilters, binSize, m )
%getMFCC Extracts Mel-Frequency Ceptral Coefficients given spectral
%data, the sampling rate, and other related data
%   This function is adapted from the C code in
%   https://github.com/jsawruk/libmfcc which is under MIT license
%
%   This Matlab/Octave code is based on "Musical Instrument Identification
%   using Multiscale Mel-Frequency Cepstral Coefficients"
%   by Bob L. Sturm et al., 2010
   
    result = 0.0;
    outerSum = 0.0;
    
    if m >= numFilters
        return;
    end

    result = getNormalisationFactor(numFilters, m);
    
    for L = 1:numFilters
        innerSum = 0.0;
        for k = 1:binSize-1
            innerSum = innerSum + abs(spectralData(k) * getFilterParameter(samplingRate,binSize,k-1,L));
        end
        
        if innerSum > 0.0
            innerSum = log(innerSum);
        end

        innerSum = innerSum * cos(((m*pi)/numFilters)*(L - 0.5));
        outerSum = outerSum + innerSum;
    end

    result = result * outerSum;
    
end

