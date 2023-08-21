##### Meta #####

# Authors: Emma Comrie, Andreas Hoehn
# About: The Main Control File
# Last Change Date: 2023-08-14
# R version 4.3.0 (2023-04-21 ucrt) -- "Already Tomorrow"

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Preparation ###

# clean workspace
rm(list = ls())  # remove all objects from work space 
gc(full = TRUE)  # deep clean garbage
dir()

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Libraries & File Paths ###

# List of Required Packages: auto install if Required #
RequiredPackages <- c(
  "here",                                                         # Folder Structure
  "tidyverse","readxl","janitor","lubridate",                     # Dialect 
  "flexdashboard", "rmarkdown","kableExtra","flextable","knitr")  # Report 1

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Global Definitions ###

# initialize ...
definitions <- list()

# version number
definitions$version_number <- "V6"

# definitions: sizes 
definitions$fig_size_start <- 13     # fig size for start page picture
definitions$fig_size_XS <-  "400px"   # fig size all other pictures
definitions$fig_size_S  <-  "600px"   # 
definitions$fig_size_M  <-  "900px"   # 
definitions$fig_size_L  <-  "1200x"   # 
definitions$fig_size_XL <-  "1500x"   # 
# 

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Source Functions, Data and Rmarkdown File ###

# Functions
source("RCode/2_functions.R")

# Data
QualProducts <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "QualitativeProducts") %>% 
  filter(Characteristic != "SIPHER Workstream(s)")
QuantProducts <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "QuantitativeModels") %>% 
  filter(Characteristic != "SIPHER Workstream(s)")
DataProducts <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "Data") %>% 
  filter(Characteristic != "SIPHER Workstream(s)")
Glossary <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "Glossary") 
Acronyms <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "Acronyms")
SDDefinitions <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                         sheet = "IE_SDVariables")
IEIndicators <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                          sheet = "IE_Indicators")
HealthIndicators <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                          sheet = "Health_Indicators")
MicroSimPathways <- readxl::read_excel("RData/SIPHER_ModelOverview.xlsx",
                           sheet = "DynamicMicrosimPathways")

# Build the Flexdashboard - markdown requires "here::here()" for file paths #
rmarkdown::render(input = here::here("RCode","3_flexdashboard.Rmd"),
                  output_file = here::here("ROutput",
                                           paste0("SIPHER_Product_Guide_",
                                                  definitions$version_number,".html")),
                  output_format = "flexdashboard::flex_dashboard")

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
