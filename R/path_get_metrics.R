#' Get basic metrics
#'
#' Some basic metrics for the entire directory. Just stunning numbers to put on
#' a front page and are intended purely for WoW effect :)
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
guru_get_metrics <- function() {
  guru_call_api(path = "/metrics.json")
}
