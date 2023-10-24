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
  provider <- stbl::stabilize_chr_scalar(
    provider,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE
  )
  # TODO: This doesn't conform to this schema. It's actually a collection of
  # versions, but without any other top-level API data.
  schema_api_versions(
    call_guru_api(path = list("/{provider}.json", provider = provider))$apis
  )
}
