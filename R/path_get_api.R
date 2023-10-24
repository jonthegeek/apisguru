#' Retrieve one version of a particular API
#'
#' Returns the API entry for one specific version of an API where there is no
#' serviceName.
#'
#' @inheritParams .shared-parameters
#'
#' @return A [schema_api_version()] tibble.
#' @export
#'
#' @examplesIf interactive()
#' get_api("apis.guru", "2.2.0")
get_api <- function(provider, api) {
  provider <- stbl::stabilize_chr_scalar(
    provider,
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
  schema_api_version(
    call_guru_api(
      path = list(
        "/specs/{provider}/{api}.json",
        provider = provider,
        api = api
      )
    )
  )
}