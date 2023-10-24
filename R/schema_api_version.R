#' Description of one version of an API
#'
#' Apply the ApiVersions schema to an API object.
#'
#' @param x An object describing one version of an API.
#'
#' @return A one-row tibble describing the API.
#' @export
schema_api_version <- function(x) {
  .add_class(
    tibblify::tibblify(list(x), spec = .schema_api_version_spec()),
    "guru_api_version"
  )
}

schema_api_versions <- function(x) {
  .add_class(
    tibblify::tibblify(
      x,
      spec = tibblify::tspec_df(.names_to = "api", .schema_api_version_spec())
    ),
    "guru_api_versions"
  )
}

.schema_api_version_spec <- function() {
  tibblify::tspec_df(
    .tib_datetime("added"),
    tibblify::tib_variant("info"),
    .tib_datetime("updated"),
    tibblify::tib_chr("swaggerUrl"),
    tibblify::tib_chr("swaggerYamlUrl"),
    tibblify::tib_chr("openapiVer"),
    tibblify::tib_chr("link", required = FALSE),
    tibblify::tib_variant("externalDocs", required = FALSE)
  )
}

.tib_datetime <- function(key, ..., required = TRUE) {
  tibblify::tib_scalar(
    key = key,
    ptype = vctrs::new_datetime(tzone = "UTC"),
    required = required,
    ptype_inner = character(),
    transform = .quick_datetime,
    ...
  )
}

.quick_datetime <- function(x, tzone = "UTC") {
  as.POSIXct(gsub("T", " ", x), tz = tzone)
}
