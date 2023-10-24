#' List all serviceNames for a particular provider
#'
#' List all serviceNames in the directory for a particular providerName
#'
#' @inheritParams .shared-parameters
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
get_services <- function(provider) {
  provider <- stbl::stabilize_chr_scalar(
    provider,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE
  )
  unlist(
    call_guru_api(
      path = list("/{provider}/services.json", provider = provider)
    )$data
  )
}
