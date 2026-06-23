# Retrieve one version of a particular API with a serviceName.

Returns the API entry for one specific version of an API where there is
a serviceName.

## Usage

``` r
get_service_api(
  provider,
  service,
  version,
  max_reqs = Inf,
  max_tries_per_req = 3
)

req_get_service_api(provider, service, version)

tidy_policy_get_service_api()
```

## Arguments

- provider:

  (length-1 `character`)

- service:

  (length-1 `character`)

- version:

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

`get_service_api()`: The API response.

`req_get_service_api()`: (`httr2_request`) A
[`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object.

`tidy_policy_get_service_api()`: (`nectar_tidy_policy`) A list like the
ones returned by
[`nectar::tidy_policy_prepare()`](https://nectar.api2r.org/reference/tidy_policy_prepare.html).
