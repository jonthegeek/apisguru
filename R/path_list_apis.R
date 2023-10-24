#' List all APIs
#'
#' List all APIs in the directory. Returns links to the OpenAPI definitions for
#' each API in the directory. If API exist in multiple versions `preferred` one
#' is explicitly marked. Some basic info from the OpenAPI definition is cached
#' inside each object. This allows you to generate some simple views without
#' needing to fetch the OpenAPI definition for each API.
#'
#' @return A [schema_apis()] tibble.
#' @export
#'
#' @examplesIf interactive()
#' list_apis()
list_apis <- function() {
  schema_apis(call_guru_api(path = "/list.json"))
}
