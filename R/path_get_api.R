#' Retrieve one version of a particular API
#'
#' Returns the API entry for one specific version of an API where there is no
#' serviceName.
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
guru_get_api <- function(parms = stop("Get these from the spec")) {
  guru_call_api(path = "/specs/{provider}/{api}.json")
}
