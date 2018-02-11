#' Growth data of juvenile fish
#'
#' A dataset containing growth data for juveniles of a migratory
#' fish species. It matches with the "juvenile_morphologies" dataset.
#'
#' @format A dataset containing 104376 rows and 8 variables
#' \describe{
#' \item{fish_id}{a unique identifier for each fish}
#' \item{otolith_id}{unique identifier for the fishes otolith}
#' \item{site}{one of two collection sites}
#' \item{month}{month that the fish was collected on}
#' \item{day}{day that the fish was collected on}
#' \item{increment}{a count of each otolith increment. Counts a day in
#' the fishes life}
#' \item{position}{the distance of the increment from the centre of the
#' otolith}
#' \item{distance}{the distance of the increment from the previous
#' increment}
#' }
#' @usage data(juvenile_growths)

"juvenile_growths"
