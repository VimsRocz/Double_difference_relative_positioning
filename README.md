# Double_difference_relative_positioning
This repository contains MATLAB code and documentation for an exercise focused on processing Global Navigation Satellite Systems (GNSS) data. The exercise covers topics such as double differences (DD), stochastic modeling, cycle slips detection, and triple differences (TD). The code includes routines for generating DD, detecting and correcting cycle slips, computing DD ambiguities, and plotting DD observations.


## Overview

This repository contains MATLAB code and documentation for an exercise focused on processing Global Navigation Satellite Systems (GNSS) data. The exercise emphasizes double differences (DD) computation, stochastic modeling, cycle slip detection, and triple differences (TD) in GNSS data processing.

## Tasks

1. **Strategies of Differentiation and Stochastic Modelling:**
   - Understand the stochastic model for one epoch of the GPS network when cycling is used for computing DD for four of the five stations with four mutual GPS satellites in view (PRN1, PRN2, PRN3, PRN4).
   - Determine the variance-covariance matrix of the DD observations.

2. **Challenges in Relative Positioning with DD:**
   - Analyze the visibility of satellites common to station HH01 and HH02 over time.
   - Determine the number of ambiguities required during the analysis of the dataset and identify resulting problems for ambiguity resolution.
   - Propose solutions to reduce the number of ambiguities, especially considering signal interruptions.

3. **Computation and Handling of DD and Cycle Slips:**
   - Clean and organize the provided dataset for further processing.
   - Implement MATLAB routines to:
     - Generate OMC double differences between stations.
     - Detect and repair cycle slips in DD observations.
     - Compute DD ambiguities.
     - Plot DD observations against time and satellite elevation.

## Objectives

- Understand the principles of DD computation and stochastic modeling.
- Learn techniques for detecting and correcting cycle slips in GNSS data.
- Gain hands-on experience in processing GNSS data using MATLAB.

## Expected Outcomes

- Improved understanding of GNSS data processing techniques.
- Ability to implement DD computation and cycle slip detection algorithms.
- Enhanced skills in analyzing and interpreting GNSS data for precise positioning applications.

## Usage

1. Clone the repository to your local machine.
2. Load the provided GNSS dataset (`AdvConc2019.mat`) into MATLAB.
3. Run the MATLAB scripts to perform various tasks as outlined in the documentation.
4. Review the results and modify the code as necessary for specific applications.

## Contributors

- [Your Name]

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
