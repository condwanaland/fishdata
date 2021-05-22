#' Juvenile fish metrics data
#'
#' A dataset containing metrics data for juvenile Galaxis maculatus.
#'
#' @format A dataset containing 496 rows and 8 variables
#' \describe{
#' \item{fish_code}{Foreign key (matches with `juveniles`)}
#' \item{standard_length}{standard length of the fish (distance from
#' posterior to caudal peduncle), cm}
#' \item{body_depth}{body depth of the fish at its maximum point, cm}
#' \item{age}{Age of fish when caught (days)}
#' \item{birthdate}{Day fish hatched}
#' \item{growth_rate}{Average daily growth of fish (mm/day)}
#' \item{growth_rate}{Average daily growth of fish over first 10 days of life (mm/day)}
#' \item{growth_rate}{Average daily growth of fish over last 10 days of life (mm/day)}
#' }
#' @examples
#' data(juvenile_metrics)

"juvenile_metrics"
