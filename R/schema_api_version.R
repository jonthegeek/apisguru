#' Description of one version of an API
#'
#' Apply the ApiVersions schema to an API object.
#'
#' @param x An object describing one version of an API.
#'
#' @return A one-row tibble describing the API.
#' @export
#'
#' @examplesIf interactive()
#' x <- call_guru_api("/specs/apis.guru/2.2.0.json")
#' names(x)
#' schema_api_version(x)
schema_api_version <- function(x) {
  .tibblify(list(x), .schema_api_version_spec(), "guru_api_version")
}

#' Description of all version of an API
#'
#' Apply the ApiVersions schema to multiple versions of an API object.
#'
#' @param x A named list of API versions.
#'
#' @return A tibble describing the API versions.
#' @export
#'
#' @examplesIf interactive()
#' x <- call_guru_api(path = "/apache.org.json")$apis
#' names(x)
#' schema_api_version(x)
schema_api_versions <- function(x) {
  .tibblify(
    x,
    tibblify::tspec_df(.names_to = "api", .schema_api_version_spec()),
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
