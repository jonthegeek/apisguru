# List all APIs for a particular provider

List all APIs in the [apis.guru](https://apis.guru) directory for a
particular provider. Returns links to the individual API entry for each
API.

## Usage

``` r
get_provider(provider, max_reqs = Inf, max_tries_per_req = 3)

req_get_provider(provider)

tidy_policy_get_provider()
```

## Arguments

- provider:

  (length-1 `character`)

- max_reqs:

  (length-1 `integer`) The maximum number of separate requests to
  perform. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- max_tries_per_req:

  (length-1 `integer`) The maximum number of times to attempt each
  individual request. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

## Value

`get_provider()`: Information about the API entry for each API provided
by the `provider`.

`req_get_provider()`: (`httr2_request`) A
[`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object.

`tidy_policy_get_provider()`: (`nectar_tidy_policy`) A list like the
ones returned by
[`nectar::tidy_policy_prepare()`](https://nectar.api2r.org/reference/tidy_policy_prepare.html).
