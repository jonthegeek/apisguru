# Description of one version of an API

Apply the ApiVersions schema to an API object.

## Usage

``` r
schema_api_version(x)
```

## Arguments

- x:

  An object describing one version of an API.

## Value

A one-row tibble describing the API.

## Examples

``` r
if (FALSE) { # interactive()
x <- call_guru_api("/specs/apis.guru/2.2.0.json")
names(x)
schema_api_version(x)
}
```
