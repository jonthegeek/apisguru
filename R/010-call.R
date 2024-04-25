# Set up the basic call once at package build.
req_guru_base <- nectar::req_setup(
  "https://api.apis.guru/v2",
  user_agent = "apisguru (https://jonthegeek.github.io/apisguru/)"
)

#' Call the APIs.guru API
#'
#' Generate a request to an APIs.guru endpoint.
#'
#' @inheritParams nectar::req_modify
#'
#' @return The response from the endpoint.
#' @export
call_guru_api <- function(path) {
  req <- nectar::req_modify(req_guru_base, path = path)
  resp <- httr2::req_perform(req)
  return(httr2::resp_body_json(resp))
}
