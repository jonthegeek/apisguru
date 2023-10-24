#' Retrieve one version of a particular API with a serviceName.
#'
#' Returns the API entry for one specific version of an API where there is a
#' serviceName.
#'
#' @inheritParams .shared-parameters
#' @param service The service name of the API. For example, in
#'   "1password.com:events", "events" is the service and "1password.com" is the
#'   provider.
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_service_api <- function(provider, service, api) {
  provider <- stbl::stabilize_chr_scalar(
    provider,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE
  )
  service <- stbl::stabilize_chr_scalar(
    service,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE
  )
  api <- stbl::stabilize_chr_scalar(
    api,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE
  )
  call_guru_api(
    path = list(
      "/specs/{provider}/{service}/{api}/openapi.json",
      provider = provider,
      service = service,
      api = api
    )
  )
}
