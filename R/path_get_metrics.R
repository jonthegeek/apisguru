#' Get basic metrics
#'
#' Some basic metrics for the entire directory. Just stunning numbers to put on a front page and are intended purely for WoW effect :)
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_metrics <- function() {
  call_guru_api(path = "/metrics.json")
}
