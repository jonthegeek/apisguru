# List all serviceNames for a particular provider

List all serviceNames in the directory for a particular providerName

## Usage

``` r
get_services(provider)
```

## Arguments

- provider:

  A string describing the API provider, such as such as "1password.com"
  or "apis.guru".

## Value

A character vector of service names.

## Examples

``` r
if (FALSE) { # interactive()
get_services("1password.com")
get_services("adyen.com")
}
```
