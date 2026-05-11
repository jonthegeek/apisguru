# Meta information about APIs

Apply the APIs schema to a list of API details.

## Usage

``` r
schema_apis(x = list())
```

## Arguments

- x:

  A named list of API details. Each element should have elements
  `added`, `preferred`, and `versions`.

## Value

A tibble with one row per API.

## Examples

``` r
schema_apis()
#> # A tibble: 0 × 4
#> # ℹ 4 variables: name <chr>, added <dttm>, preferred <chr>,
#> #   versions <list<tibble[,9]>>
x <- list(
  "api1" = list(
    added = "2016-01-01T12:34:56Z",
    preferred = "v2",
    versions = list(
      v1 = list(
        added = "2016-01-01T12:34:56Z",
        info = list(),
        updated = "2016-01-01T12:34:56Z",
        swaggerUrl = "https://example.com/v1/swagger.json",
        swaggerYamlUrl = "https://example.com/v1/swagger.yml",
        openapiVer = "3.0.0"
      ),
      v2 = list(
        added = "2023-01-01T12:34:56Z",
        info = list(),
        updated = "2023-01-01T12:34:56Z",
        swaggerUrl = "https://example.com/v2/swagger.json",
        swaggerYamlUrl = "https://example.com/v2/swagger.yml",
        openapiVer = "3.1.0"
      )
    )
  ),
  "api2" = list(
    added = "2018-01-01T12:34:56Z",
    preferred = "v1",
    versions = list(
      v1 = list(
        added = "2018-01-01T12:34:56Z",
        info = list(),
        updated = "2018-01-01T12:34:56Z",
        swaggerUrl = "https://url.com/v1/swagger.json",
        swaggerYamlUrl = "https://url.com/v1/swagger.yml",
        openapiVer = "3.0.0"
      )
    )
  )
)
schema_apis(x)
#> # A tibble: 2 × 4
#>   name  added               preferred           versions
#>   <chr> <dttm>              <chr>     <list<tibble[,9]>>
#> 1 api1  2016-01-01 12:34:56 v2                   [2 × 9]
#> 2 api2  2018-01-01 12:34:56 v1                   [1 × 9]
```
