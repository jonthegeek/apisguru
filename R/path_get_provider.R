#' List all APIs for a particular provider
#'
#' List all APIs in the directory for a particular providerName. Returns links
#' to the individual API entry for each API.
#'
#' @inheritParams .shared-parameters
#'
#' @return A [schema_api_versions()] tibble.
#' @export
#'
#' @examplesIf interactive()
#' head(get_provider())
get_provider <- function(provider) {
  provider <- nectar::stabilize_string(provider)
  schema_api_versions(
    call_guru_api(path = list("/{provider}.json", provider = provider))$apis
  )
}
