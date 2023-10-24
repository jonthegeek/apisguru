#' List all providers
#'
#' List all the providers in the directory
#'
#' @return A character vector of provider names.
#' @export
#'
#' @examplesIf interactive()
#' head(get_providers())
get_providers <- function() {
  unlist(call_guru_api(path = "/providers.json")$data)
}
