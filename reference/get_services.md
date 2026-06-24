# List all services for a particular provider

List all services in the [apis.guru](https://apis.guru) directory for a
particular provider.

## Usage

``` r
get_services(provider, max_reqs = Inf, max_tries_per_req = 3)

req_get_services(provider)

tidy_policy_get_services()
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

`get_services()`: The API response.

`req_get_services()`: (`httr2_request`) A
[`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object.

`tidy_policy_get_services()`: (`nectar_tidy_policy`) A list like the
ones returned by
[`nectar::tidy_policy_prepare()`](https://nectar.api2r.org/reference/tidy_policy_prepare.html).
