/*
 * libmfcc.h - Code forked from https://github.com/jsawruk/libmfcc
 *
 * This code is released under the MIT License. 
 * For conditions of distribution and use, see the license in LICENSE
 */


#define PI 3.1415926535897932384626433832795

// Returns the specified (mth) MFCC
float getMFCC(const float* spectralData, float* filterParams, unsigned int samplingRate, unsigned int numFilters, unsigned int binSize, unsigned int coefficient);

// Compute the normalization factor (For internal computation only - not to be called directly)
float getNormalizationFactor(int numFilters, int m);

// Compute the filter parameter for the specified frequency and filter bands (For internal computation only - not the be called directly)
float getFilterParameter(unsigned int samplingRate, unsigned int binSize, unsigned int frequencyBand, unsigned int filterBand);

// Compute the band-dependent magnitude factor for the given filter band (For internal computation only - not the be called directly)
float getMagnitudeFactor(unsigned int filterBand);

// Compute the center frequency (fc) of the specified filter band (l) (For internal computation only - not the be called directly)
float getCenterFrequency(unsigned int filterBand);

// Pre-compute the mel-spaced filter bank parameters (Called once in setup)
void populateMFCCFilterParams(float* filterParams, unsigned int samplingRate, unsigned int binSize, unsigned int numFilters);