#' List all APIs
#'
#' List all APIs in the directory. Returns links to the OpenAPI definitions for
#' each API in the directory. If API exist in multiple versions `preferred` one
#' is explicitly marked. Some basic info from the OpenAPI definition is cached
#' inside each object. This allows you to generate some simple views without
#' needing to fetch the OpenAPI definition for each API.
#'
#' @return A [guru_schema_apis()] object.
#' @export
guru_list_apis <- function() {
  as_guru_schema_apis(guru_call_api(path = "/list.json"))
}
