#' List all serviceNames for a particular provider
#'
#' List all serviceNames in the directory for a particular providerName
#'
#' @inheritParams .shared-parameters
#'
#' @return A character vector of service names.
#' @export
#'
#' @examplesIf interactive()
#' get_services("1password.com")
#' get_services("adyen.com")
get_services <- function(provider) {
  provider <- nectar::stabilize_string(provider)
  .add_class(
    unlist(
      call_guru_api(
        path = list("/{provider}/services.json", provider = provider)
      )$data
    ),
    "guru_services"
  )
}
