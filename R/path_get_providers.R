#' List all providers
#'
#' List all the providers in the directory
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_providers <- function() {
  call_guru_api(path = "/providers.json")
}
