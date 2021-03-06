## libmfcc

This repo aims to diversity the libMFCC C library for computing Mel-Frequency Cepstral Coefficients (Version 0.1 - 5 October 2010) provided by Jeremy Sawruk at https://github.com/jsawruk/libmfcc. This is done by providing a Matlab/Octave implementation as well as an implementation which is more accessible to microcontrollers. By pre-computing the mel-spaced filterbank and converting double variables to floats, this library has been used to produce MFCCs on 256-point spectrum data using the Arduino Due at a reasonable speed (13 MFCCs in under a second).

Original Implementation based on:
"Musical Instrument Identification using Multiscale Mel-Frequency Cepstral Coefficients" by Bob L. Sturm et al., 2010

Files in this distribution:

	LICENSE                       =>  License to use and redistribute libMFCC (MIT License)
	README                        =>  This file
	TODO                          =>  Things not implemented in the current library

	/C                            =>  Directory containing C implementation
	  libmfcc.c                   =>  libMFCC algorithm implementation
	  libmfcc.h                   =>  libMFCC header file
	  /libmfcc_example            =>  Example code demonstrating use of libMFCC for C

	/Arduino                      =>  Directory containing an Arduino friendly implementation
	  libmfcc.c                   =>  libMFCC algorithm implementation
	  libmfcc.h                   =>  libMFCC header file
	  /libmfcc_example            =>  Example code demonstrating use of libMFCC

	/Matlab                       =>  Directory containing Matlab/Octave implementation
	  getMFCC.m                   =>  Primary function which extracts MFCCs
	  getCenterFrequency.m        =>  Helper function which should not be used directly
	  getFilterParameter.m        =>  Helper function which should not be used directly
	  getMagnitudeFactor.m        =>  Helper function which should not be used directly
	  getNormalisationFactor.m    =>  Helper function which should not be used directly

	Sturm2010b.pdf                =>  Sturm et al. reference document
