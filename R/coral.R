#' Coral trait counts 
#'
#' 
#' Global estimates for coral species from the Coral Trait Database
#' 
#' @docType data
#' @name coral
#' @usage data(coral)
#' @format  A data frame with 76 observations on the following 5 variables.
#' \describe{
#' \item{species}{ scientific genus and species name of coral }
#' \item{ocean_basin}{ defines the major ocean where the sample was taken (note that Indian ocean samples are grouped under "pacific") }
#' \item{water_clarity_preference}{ water clarity preferred by coral; either clear, turbid, or both }
#' \item{range_size}{ observed geographic range size of the coral in kilometers squared }
#' \item{abundance_world}{ relative abundance of the species; either common, uncommon, or rare }
#' }
#' @source \url{https://coraltraits.org/}
#' Data released by Joshua Madin for the Coral Traits database 
#' See also 
#' <https://figshare.com/articles/dataset/Coral_Trait_Database_1_1_1/2067414>
"coral"

