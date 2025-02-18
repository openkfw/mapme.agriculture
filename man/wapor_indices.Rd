% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_indices.R
\name{wapor_indices}
\alias{wapor_indices}
\title{Calculate WaPOR productivity indices}
\usage{
wapor_indices(
  input_files = NULL,
  years,
  mask_values,
  ncores = 1,
  epoch1 = 2010:2011,
  epoch2 = 2012:2014,
  outdir,
  overwrite = TRUE,
  verbose = T
)
}
\arguments{
\item{input_files}{A character vector pointing to the raster files of Land
cover classification (LCC), Total Biomass Productivity (TBP), Net Biomass
Water Productivity (NBWP), Gross Biomass Water Produtivity (GBWP).}

\item{years}{The years for which to calculate the indices.}

\item{mask_values}{A numeric vector indicatiing the class codes for which to
calculate the indices.}

\item{ncores}{The number of cores used for parallel processing of some
index calculations.}

\item{epoch1}{A vector of years representing the first epoch for epoch comparisons.}

\item{epoch2}{A vector of years representing the second epoch for epoch comparisons.}

\item{outdir}{A charachter vector pointing to an output directory.}

\item{overwrite}{Logical wether to overwrite existing raster files.}

\item{verbose}{A logical indicating if informative messages should be printed.}
}
\value{
A character vector pointing to the output files.
}
\description{
This function calculates several productivity indices based on WaPOR inputs.
Users can specify a vector of classes for which to calculate the metrics.
From the land cover classification mask layers are calculated and the
indices are returned seperatly for each class. The function writes raster
files with the calculated indices to the specified output directory.
The calculated indices are:
\itemize{
\item Land Use Median (lcc_median)
\item Land Use Mode (lcc_mode)
\item Land Use Frequency (lcc_freq)
\item Breakpoint year of land use change (lcc_break)
\item Global productivity index (LP1_global)
\item Yearly productivity index (LP2_yearly)
\item Epoch differences (epoch_diff)
\item Linear trends (trend)
\item Number of double seasons (double_season)
}
}
\details{
Where applicable, above mentioned metrics are calculated for Net Biomass
Water Productivity (NBWP), Gross Biomass Water Productivity (GBWP), Total
Biomass Production (TBP) and the productivity indices seperatly. This
will be denoted in the resulting filename that are structured according to:
{int}-{measurment}-{season}-{index}.tif. E.g. the filename for land use class 30 the trend
of NBWP for the first season looks like this: "30-nbwp-s1-raw-trend.tif"
}
