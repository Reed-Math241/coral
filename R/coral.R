#' Coral trait counts 
#'
#' 
#' Global estimates for coral species from the Coral Trait Database
#' 
#' @docType data
#' @name coral
#' @usage data(coral)
#' @format  A data frame with 32585 observations on the following 11 variables.
#' \itemize{
#' \item{\code{observation_id}}{  unique integer grouping one set of measurements into a single observation }
#' \item{\code{access}}{ indicates whether or not the observation is publically available (1 is public, 0 is private) }
#' \item{\code{specie_name}}{ Coral genus and species for given oberservation }
#' \item{\code{location_name}}{ Location name for a given observation }
#' \item{\code{trait_name}}{ Unique ID for a specific trait measured in the observation}
#' \item{\code{trait_class}}{ Grouping unique traits into larger classes for faceted analysis, groups including physiological traits, ecological traits, geographical traits. etc. }
#' \item{\code{resource_id}}{ Unique ID corresponding to the paper where data for given observation is found, if left blank, data is unpublished  }
#' \item{\code{standard_id}}{ Unique ID for the units in a given observation }
#' \item{\code{standard_unit}}{ The actual units in a given observation  }
#' \item{\code{value}}{The raw value of a given observation }
#' \item{\code{value_type}}{The type of raw value (i.e. raw, mean, expert opinion, etc.) }
#'
#' }
#' @source 
#' Data collected by Joshua Madin for the Coral Traits database 
#' See also 
#' <https://figshare.com/articles/dataset/Coral_Trait_Database_1_1_1/2067414>
NA

