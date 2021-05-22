#' Growth data of juvenile fish
#'
#' A dataset containing daily growth data for juvenile Galaxis maculatus.
#'
#' @format A dataset containing 87581 rows and 5 variables
#' \describe{
#' \item{fish_code}{Foreign key, links with `juveniles`}
#' \item{otolith_code}{Alternate key}
#' \item{period}{a count of each otolith increment. Counts a day in
#' the fishes life}
#' \item{position}{the distance of the increment from the centre of the
#' otolith}
#' \item{distance}{the distance of the increment from the previous
#' increment}
#' }
#' @examples
#' data(juvenile_growth)

"juvenile_growth"
