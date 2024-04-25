#' Retrieve one version of a particular API with a serviceName.
#'
#' Returns the API entry for one specific version of an API where there is a
#' serviceName.
#'
#' @inheritParams .shared-parameters
#' @param service A string describing the service name of the API. For example,
#'   in "1password.com:events", "events" is the service and "1password.com" is
#'   the provider.
#'
#' @return A list in-between the schemas that should describe it.
#' @export
#'
#' @examplesIf interactive()
#' test_result <- get_service_api("1password.com", "events", "1.0.0")
get_service_api <- function(provider, service, api) {
  provider <- nectar::stabilize_string(provider)
  service <- nectar::stabilize_string(service)
  api <- nectar::stabilize_string(api)
  raw_result <- call_guru_api(
    path = list(
      "/specs/{provider}/{service}/{api}/openapi.json",
      provider = provider,
      service = service,
      api = api
    )
  )
  # Work around a tibblify dev version bug.
  raw_result$paths <- .clean_path_tags(raw_result$paths)
  rapid::as_rapid(raw_result)
}

.clean_path_tags <- function(paths) {
  purrr::map(paths, .clean_path_tag)
}

.clean_path_tag <- function(path) {
  purrr::map(path, .clean_path_method_tag)
}

.clean_path_method_tag <- function(method) {
  method$tags <- unlist(method$tags)
  method
}
