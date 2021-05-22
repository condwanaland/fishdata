#' Growth data of adult fish
#'
#' A dataset containing daily age and growth data for adult Galaxis maculatus.
#'
#' @format A dataset containing 16795 rows and 4 variables
#' \describe{
#' \item{fish_code}{Foreign key, matches to `adults`. Identifies the fish being measured. }
#' \item{period}{a count of each otolith increment. Counts a day in
#' the fishes life}
#' \item{position}{the distance of the increment from the centre of the
#' otolith}
#' \item{distance}{the distance of the increment from the previous
#' increment}
#' }
#' @examples
#' data(adult_growth)
#'

"adult_growth"
