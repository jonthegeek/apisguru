# Parameters used in multiple functions

Reused parameter definitions are gathered here for easier editing.

## Arguments

- max_reqs:

  (length-1 `integer`) The maximum number of separate requests to
  perform. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- max_tries_per_req:

  (length-1 `integer`) The maximum number of times to attempt each
  individual request. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- req:

  (`httr2_request`) The request object to modify.

- ...:

  These dots are for future extensions and must be empty.
