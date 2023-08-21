##### Meta #####

# Authors: Emma Comrie, Andreas Hoehn
# About: user-written functions, using a "." to indicate that we wrote them

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Packages And Relative File Paths 
# ensure all packages are installed and loaded 
.EnsurePackages <- function(packages_vector) {
  new_package <- packages_vector[!(packages_vector %in% 
                                     installed.packages()[, "Package"])]
  if (length(new_package) != 0) {
    install.packages(new_package) }
  sapply(packages_vector, suppressPackageStartupMessages(require),
         character.only = TRUE)
} 
.EnsurePackages(RequiredPackages)

# ensure all relative file paths are relative
# ensure correct file paths 
here <- here::here       

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #

### Table Formatting ###

# Function to create df for table
.TableFn <- function(dfname, varname){
  table_return <- dfname %>% 
    select(Characteristic,{{varname}}) %>% 
    rename(Details = {{varname}}) %>%
    remove_empty(., which = "rows") 
  # explicit return
  return(table_return)
}

# Function to format table for output
.FormatTableFn <- function(dfname2, mycaption){
  table_return <- knitr::kable(dfname2, caption = mycaption) %>%
    kable_styling(., "striped", full_width = F) %>%
    # column_spec(1, width = '2in', bold = TRUE) %>% 
    column_spec(1, width = '2in') %>% 
    column_spec(2, width = '6in')
  # explicit return
  return(table_return)
}

# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
