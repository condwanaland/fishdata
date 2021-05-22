#' Base table of adult fish sample sites and dates.
#'
#' A dataset containing base location and time catch information for adult Galaxis maculatus.
#'
#' @format A dataset containing 48 rows and 4 variables
#' \describe{
#' \item{fish_code}{Primary key, uniquely identifies a fish}
#' \item{site}{Site where fish was caught}
#' \item{day}{Day group fish was caught on (H1 = 1st day fishing, H3 = 3rd day fishing). Used for by-day grouping analysis. For actual catch date see `catch_date`}
#' \item{catch_date}{Date that the fish was caught on}
#' }
#' @examples
#' data(adults)

"adults"
