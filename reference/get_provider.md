# List all APIs for a particular provider

List all APIs in the directory for a particular providerName. Returns
links to the individual API entry for each API.

## Usage

``` r
get_provider(provider)
```

## Arguments

- provider:

  A string describing the API provider, such as such as "1password.com"
  or "apis.guru".

## Value

A
[`schema_api_versions()`](https://jonthegeek.github.io/apisguru/reference/schema_api_versions.md)
tibble.

## Examples

``` r
if (FALSE) { # interactive()
head(get_provider())
}
```
