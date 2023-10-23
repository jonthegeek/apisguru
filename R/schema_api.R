#' Meta information about API
#'
#' Apply the API schema to the details of a single API.
#'
#' @param x A list with elements `added`, `preferred`, and `versions`.
#'
#' @return A one-row tibble describing the API.
#' @export
#'
#' @examples
#' schema_api()
#' x <- list(
#'   added = "2016-01-01T12:34:56Z",
#'   preferred = "v2",
#'   versions = list(
#'     v1 = list(
#'       added = "2016-01-01T12:34:56Z",
#'       info = list(),
#'       updated = "2016-01-01T12:34:56Z",
#'       swaggerUrl = "https://example.com/v1/swagger.json",
#'       swaggerYamlUrl = "https://example.com/v1/swagger.yml",
#'       openapiVer = "3.0.0"
#'     ),
#'     v2 = list(
#'       added = "2023-01-01T12:34:56Z",
#'       info = list(),
#'       updated = "2023-01-01T12:34:56Z",
#'       swaggerUrl = "https://example.com/v2/swagger.json",
#'       swaggerYamlUrl = "https://example.com/v2/swagger.yml",
#'       openapiVer = "3.1.0"
#'     )
#'   )
#' )
#' schema_api(x)
schema_api <- function(x) {
  tibblify::tibblify(list(x), spec = .schema_api_spec())
}

.schema_api_spec <- function() {
  tibblify::tspec_df(
    .tib_datetime("added"),
    tibblify::tib_chr("preferred"),
    tibblify::tib_df(
      "versions",
      .names_to = "version",
      .schema_api_version_spec()
    )
  )
}
