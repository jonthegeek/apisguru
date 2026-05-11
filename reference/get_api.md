# Retrieve one version of a particular API

Returns the API entry for one specific version of an API where there is
no serviceName.

## Usage

``` r
get_api(provider, api)
```

## Arguments

- provider:

  A string describing the API provider, such as such as "1password.com"
  or "apis.guru".

- api:

  A string giving the version of the API, such as "2.2.0" or "v2".

## Value

A
[`schema_api_version()`](https://jonthegeek.github.io/apisguru/reference/schema_api_version.md)
tibble.

## Examples

``` r
if (FALSE) { # interactive()
get_api("apis.guru", "2.2.0")
}
```
