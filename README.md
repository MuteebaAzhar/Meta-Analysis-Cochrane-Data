# Meta-Analysis of Steroid Treatments Using Cochrane Data

## Project Overview

This project conducts a comprehensive meta-analysis of steroid treatments using data from the Cochrane database. The aim is to evaluate the effectiveness of steroid treatments by estimating the relative risk (RR) across multiple studies. This analysis serves as a foundational approach to understanding treatment outcomes and the potential impact of steroids in clinical settings.

## Dataset

The dataset utilized in this analysis contains the following variables:
- **name**: Study identifier
- **ev.trt**: Number of events in the treatment group
- **n.trt**: Total number of participants in the treatment group
- **ev.ctrl**: Number of events in the control group
- **n.ctrl**: Total number of participants in the control group

The dataset consists of 7 studies, providing a total of 2011 observations.

## Methodology

The analysis was performed using the `meta` package in R, employing the following steps:

1. **Data Loading**: Load the necessary libraries and dataset.
2. **Meta-Analysis Execution**: Conduct a meta-analysis using the `metabin` function, which calculates the relative risk (RR) and generates a summary of the results.
3. **Heterogeneity Assessment**: Evaluate the heterogeneity of studies using I² statistics and Q-tests.
4. **Publication Bias Evaluation**: Create a funnel plot to visually assess publication bias.
5. **Sensitivity Analysis**: Perform sensitivity analysis by excluding individual studies to observe the impact on overall results.

## Key Findings

- **Common Effect Model RR**: 0.5646 (95% CI: [0.4254; 0.7493])
- **Random Effects Model RR**: 0.5889 (95% CI: [0.4415; 0.7853])
- **Heterogeneity Statistics**: 
  - I² = 15.1%
  - Q-test p-value = 0.3150

## Visualizations

- **Forest Plots**: Visual representation of individual study results and overall estimates.
- **Funnel Plots**: Assessment of publication bias.

## Requirements

To run this project, you need to have R and the following packages installed:

```r
install.packages("rmeta")
install.packages("meta")

