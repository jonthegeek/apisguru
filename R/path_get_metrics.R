#' Get basic metrics
#'
#' Some basic metrics for the entire directory. Just stunning numbers to put on
#' a front page and are intended purely for WoW effect :)
#'
#' @return A [schema_metrics()] list object.
#' @export
get_metrics <- function() {
  schema_metrics(call_guru_api(path = "/metrics.json"))
}
