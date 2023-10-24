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
