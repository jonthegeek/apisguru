# Retrieve one version of a particular API with a serviceName.

Returns the API entry for one specific version of an API where there is
a serviceName.

## Usage

``` r
get_service_api(provider, service, api)
```

## Arguments

- provider:

  A string describing the API provider, such as such as "1password.com"
  or "apis.guru".

- service:

  A string describing the service name of the API. For example, in
  "1password.com:events", "events" is the service and "1password.com" is
  the provider.

- api:

  A string giving the version of the API, such as "2.2.0" or "v2".

## Value

A list in-between the schemas that should describe it.

## Examples

``` r
if (FALSE) { # interactive()
test_result <- get_service_api("1password.com", "events", "1.0.0")
}
```
