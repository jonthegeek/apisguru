# Clean slate.
fs::dir_delete("R")
fs::dir_delete("tests")

apid_url <- "https://api.apis.guru/v2/specs/apis.guru/2.2.0/openapi.yaml"
api_abbr <- "guru"
apid_url |>
  url() |>
  beekeeper::use_beekeeper(
    api_abbr = api_abbr
  )
beekeeper::generate_pkg()

cli::cli_inform(
  "air format ., manually fix roxygen wrapping, then {.run devtools::document()}"
)
