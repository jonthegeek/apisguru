# Call the APIs.guru API

Generate a request to an APIs.guru endpoint.

## Usage

``` r
call_guru_api(path)
```

## Arguments

- path:

  (`character` or `list`) The route to an API endpoint. Optionally, a
  list or character vector with the path as one or more unnamed
  arguments (which will be concatenated with "/") plus named arguments
  to [`glue::glue()`](https://glue.tidyverse.org/reference/glue.html)
  into the path.

## Value

The response from the endpoint.
