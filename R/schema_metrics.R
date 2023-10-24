#' List of basic metrics
#'
#' Apply the Metrics schema a metrics object.
#'
#' @param x A list of metrics, with elements `numSpecs`, `numAPIs`, and
#'   `numEndpoints` (and likely several other elements).
#'
#' @return A validated list of metrics.
#' @export
schema_metrics <- function(x) {
  .tibblify(x, .schema_metrics_spec(), "guru_metrics")
}

.schema_metrics_spec <- function() {
  tibblify::tspec_object(
    tibblify::tib_int("numSpecs"),
    tibblify::tib_int("numAPIs"),
    tibblify::tib_int("numEndpoints"),
    tibblify::tib_int("unreachable", required = FALSE),
    tibblify::tib_int("invalid", required = FALSE),
    tibblify::tib_int("unofficial", required = FALSE),
    tibblify::tib_int("fixes", required = FALSE),
    tibblify::tib_int("fixedPct", required = FALSE),
    tibblify::tib_variant("datasets", required = FALSE),
    tibblify::tib_int("stars", required = FALSE),
    tibblify::tib_int("issues", required = FALSE),
    tibblify::tib_row(
      "thisWeek",
      tibblify::tib_int("added"),
      tibblify::tib_int("updated"),
      .required = FALSE
    ),
    tibblify::tib_int("numDrivers", required = FALSE),
    tibblify::tib_int("numProviders", required = FALSE)
  )
}
