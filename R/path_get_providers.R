#' List all providers
#'
#' List all the providers in the directory
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
guru_get_providers <- function() {
  guru_call_api(path = "/providers.json")
}
