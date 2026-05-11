# Description of all version of an API

Apply the ApiVersions schema to multiple versions of an API object.

## Usage

``` r
schema_api_versions(x)
```

## Arguments

- x:

  A named list of API versions.

## Value

A tibble describing the API versions.

## Examples

``` r
if (FALSE) { # interactive()
x <- call_guru_api(path = "/apache.org.json")$apis
names(x)
schema_api_version(x)
}
```
