#' List all APIs for a particular provider
#'
#' List all APIs in the directory for a particular providerName Returns links to the individual API entry for each API.
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_provider <- function(parms = stop("Get these from the spec")) {
  call_guru_api(path = "/{provider}.json")
}
