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
  provider <- .validate_provider(provider)
  api <- .validate_api(api)
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
