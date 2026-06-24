# List all APIs

List all APIs in the [apis.guru](https://apis.guru) directory. Returns
links to the OpenAPI definitions for each API in the directory. If API
exist in multiple versions `preferred` one is explicitly marked. Some
basic info from the OpenAPI definition is cached inside each object.
This allows you to generate some simple views without needing to fetch
the OpenAPI definition for each API.

## Usage

``` r
list_apis(max_reqs = Inf, max_tries_per_req = 3)

req_list_apis()

tidy_policy_list_apis()
```

## Arguments

- max_reqs:

  (length-1 `integer`) The maximum number of separate requests to
  perform. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- max_tries_per_req:

  (length-1 `integer`) The maximum number of times to attempt each
  individual request. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

## Value

`list_apis()`: The API response.

`req_list_apis()`: (`httr2_request`) A
[`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object.

`tidy_policy_list_apis()`: (`nectar_tidy_policy`) A list like the ones
returned by
[`nectar::tidy_policy_prepare()`](https://nectar.api2r.org/reference/tidy_policy_prepare.html).
