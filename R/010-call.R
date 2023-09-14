guru_call_api <- function(path) {
  nectar::call_api(
    "https://api.apis.guru/v2",
    path = path
  )
}
