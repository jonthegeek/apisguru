#' Call the APIs.guru API
#'
#' Generate a request to an APIs.guru endpoint.
#'
#' @inheritParams nectar::call_api
#'
#' @return The response from the endpoint.
#' @export
call_guru_api <- function(path) {
  nectar::call_api(
    base_url = "https://api.apis.guru/v2",
    path = path,
    user_agent = "apisguru (https://jonthegeek.github.io/apisguru/)"
  )
}
