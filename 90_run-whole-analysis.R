# Script to run the whole analysis
# another name for this file (more proper) would be "90_make-all.R"

library(here);library(fs)

if(!dir_exists(here("figs"))) {
  dir_create(here("figs"))
}

source(here("R", "01_write-installed-packages.R"))
source(here("R", "02_wrangle-packages.R"))
source(here("R", "03_barchart-packages-built.R"))
