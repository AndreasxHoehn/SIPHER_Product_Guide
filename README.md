# SIPHER Product Guide

## Summary
The SIPHER consortium brings together a variety of researchers and partners from policy and practice. SIPHER’s systems science methods, data, and tools offer a powerful framework to explore the relationships and interdependencies that shape public health. To support the documentation and disseminating of our research outputs, we have created this SIPHER Product Guide. 

The latest live version of the SIPHER Product Guide can be found here: https://sipher.ac.uk/product-guide/

SIPHER’s Product Guide uses the R-package “flexdashboard” to transform a collaborative excel spreadsheet into an interactive web application. This repository provides all underlying data and R-code to re-build SIPHER’s Product Guide. This repository is organised in a pipeline setup: data and images are stored in separate folders, the R-code is broken down into modules and flows unidirectional way. This allows for reproducibility with literally one click.

## Pre-Requisites
This R-pipeline was build using R version 4.3.0 (2023-04-21 ucrt) -- "Already Tomorrow" as well as RStudio 2023.03.1+446 "Cherry Blossom". All packages will be installed (if required) and loaded as part of the R-pipeline. You do not need to do this yourself. We have defined all file paths relative rather than absolute. This means that you do not need to define or modify any file paths yourself. 

This pipeline has not been tested with network drives or network drive installations of R. We therefore recommend that R is installed locally and that all files are stored locally. 

## Running the Pipeline
Please read the pre-requisites and ensure that you are working with a current version of R and R-Studio. Please download the entire folder of the pipeline (code -> download zip). Once downloaded, please extract the zipped folder into any local directory of your device. 

To run the pipeline, please open the R-project file “V6_GitHub.Rproj”, which is stored in the overarching directory. This will prompt a new RStudio Session. You can then open the main control file of the program (“1_main.R”), which is stored in the “RCode/” folder. To run the pipeline, please select all code in “1_main.R” and run it (CTRL + A then CTRL + ENTER). The pipeline will run, and an html application will be stored in the folder “ROutput/”. 

## Output
After having run the pipeline successfully, you will receive an output in the folder “ROutput/”.

You can also explore the dashboard without running the pipeline. We have stored the most recent version of the pipeline in “ROutput/”.

## Bug Reports & Feedback
Please direct bug reports directly to andreas.hoehn@glasgow.ac.uk

Please direct questions or feedback marked “Product Guide” to sipher@glasgow.ac.uk

More information about SIPHER can be found here: https://sipher.ac.uk/

## Acknowledgements
This work by the SIPHER Consortium was supported by the UK Prevention Research Partnership (MR/S037578/2), which is funded by the British Heart Foundation, Cancer Research UK, Chief Scientist Office of the Scottish Government Health and Social Care Directorates, Engineering and Physical Sciences Research Council, Economic and Social Research Council, Health and Social Care Research and Development Division (Welsh Government), Medical Research Council, National Institute for Health Research, Natural Environment Research Council, Public Health Agency (Northern Ireland), The Health Foundation and Wellcome.

This research was conducted as part of the Systems Science in Public Health and Health Economics Research - SIPHER Consortium and we thank the whole team for valuable input and discussions that have informed this work.

## About
Authors: Andreas Hoehn and Emma Comrie 

Version: 6.0

Updated: 2023-06-17

![Capture](https://github.com/AndreasxHoehn/SIPHER_Product_Guide/assets/14837995/cb151a2f-a9d1-4ffd-8131-8e0f528564e4)

## SIPHER's Policy Partners 
![CapturePP](https://github.com/AndreasxHoehn/SIPHER_Product_Guide/assets/14837995/345bbbc2-03ca-4ef0-9403-4c7dd519242e)

## SIPHER's Practice Partners 
![CaptureAP](https://github.com/AndreasxHoehn/SIPHER_Product_Guide/assets/14837995/f3d84ad7-cf98-41aa-a1ab-076200c3c832)

