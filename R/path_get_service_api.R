#' Retrieve one version of a particular API with a serviceName.
#'
#' Returns the API entry for one specific version of an API where there is a
#' serviceName.
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
guru_get_service_api <- function(parms = stop("Get these from the spec")) {
  guru_call_api(path = "/specs/{provider}/{service}/{api}.json")
}
