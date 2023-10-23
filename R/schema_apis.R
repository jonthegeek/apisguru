#' Meta information about APIs
#'
#' Apply the APIs schema to a list of API details.
#'
#' @param x A named list of API details. Each element should have elements
#'   `added`, `preferred`, and `versions`.
#'
#' @return A tibble with one row per API.
#' @export
#'
#' @examples
#' schema_apis()
#' x <- list(
#'   "api1" = list(
#'     added = "2016-01-01T12:34:56Z",
#'     preferred = "v2",
#'     versions = list(
#'       v1 = list(
#'         added = "2016-01-01T12:34:56Z",
#'         info = list(),
#'         updated = "2016-01-01T12:34:56Z",
#'         swaggerUrl = "https://example.com/v1/swagger.json",
#'         swaggerYamlUrl = "https://example.com/v1/swagger.yml",
#'         openapiVer = "3.0.0"
#'       ),
#'       v2 = list(
#'         added = "2023-01-01T12:34:56Z",
#'         info = list(),
#'         updated = "2023-01-01T12:34:56Z",
#'         swaggerUrl = "https://example.com/v2/swagger.json",
#'         swaggerYamlUrl = "https://example.com/v2/swagger.yml",
#'         openapiVer = "3.1.0"
#'       )
#'     )
#'   ),
#'   "api2" = list(
#'     added = "2018-01-01T12:34:56Z",
#'     preferred = "v1",
#'     versions = list(
#'       v1 = list(
#'         added = "2018-01-01T12:34:56Z",
#'         info = list(),
#'         updated = "2018-01-01T12:34:56Z",
#'         swaggerUrl = "https://url.com/v1/swagger.json",
#'         swaggerYamlUrl = "https://url.com/v1/swagger.yml",
#'         openapiVer = "3.0.0"
#'       )
#'     )
#'   )
#' )
#' schema_apis(x)
schema_apis <- function(x = list()) {
  tibblify::tibblify(
    x,
    spec = tibblify::tspec_df(.names_to = "name", .schema_api_spec())
  )
}
