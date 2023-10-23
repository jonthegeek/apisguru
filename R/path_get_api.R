#' Retrieve one version of a particular API
#'
#' Returns the API entry for one specific version of an API where there is no serviceName.
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_api <- function(parms = stop("Get these from the spec")) {
  call_guru_api(path = "/specs/{provider}/{api}.json")
}
