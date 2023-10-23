#' List all serviceNames for a particular provider
#'
#' List all serviceNames in the directory for a particular providerName
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_services <- function(parms = stop("Get these from the spec")) {
  call_guru_api(path = "/{provider}/services.json")
}
