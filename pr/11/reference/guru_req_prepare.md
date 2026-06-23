# Generate a request for the APIs.guru API

Prepare a request for the APIs.guru API, using the opinionated framework
defined in
[`nectar::req_init()`](https://nectar.api2r.org/reference/req_init.html),
[`nectar::req_modify()`](https://nectar.api2r.org/reference/req_modify.html),
[`nectar::req_tidy_policy()`](https://nectar.api2r.org/reference/req_tidy_policy.html),
and
[`nectar::req_pagination_policy()`](https://nectar.api2r.org/reference/req_pagination_policy.html).

## Usage

``` r
guru_req_prepare(
  path,
  query = list(),
  body = NULL,
  header = list(),
  cookie = list(),
  method = NULL,
  tidy_policy = nectar::tidy_policy_unknown(),
  call = rlang::caller_env()
)
```

## Arguments

- path:

  (`character` or `list`) The route to an API endpoint. Optionally, a
  list or character vector with the path as one or more unnamed
  arguments (which will be concatenated with "/") plus named arguments
  to [`glue::glue()`](https://glue.tidyverse.org/reference/glue.html)
  into the path.

- query:

  (`character` or `list`) An optional list or character vector of
  parameters to pass in the query portion of the request. Can also
  include a `.multi` argument to pass to
  [`httr2::req_url_query()`](https://httr2.r-lib.org/reference/req_url.html)
  to control how elements containing multiple values are handled.

- body:

  (multiple types) An object to use as the body of the request. If any
  component of the body is a path, pass it through
  [`fs::path()`](https://fs.r-lib.org/reference/path.html) or otherwise
  give it the class "fs_path" to indicate that it is a path.

- header:

  (`list` or `NULL`) An optional list of headers to add to the request
  using
  [`httr2::req_headers()`](https://httr2.r-lib.org/reference/req_headers.html).
  A `NULL` value for an individual header will explicitly remove that
  header if it was previously set.

- cookie:

  (`list` or `NULL`) An optional list of cookies to set on the request
  using
  [`httr2::req_cookies_set()`](https://httr2.r-lib.org/reference/req_cookie_preserve.html).
  `NULL` elements are removed.

- method:

  (`length-1 character`, optional) If the method is something other than
  `GET` or `POST`, supply it. Case is ignored.

- tidy_policy:

  (`nectar_tidy_policy` or `NULL`) A tidying policy prepared with
  [`tidy_policy_prepare()`](https://nectar.api2r.org/reference/tidy_policy_prepare.html).
  By default,
  [`tidy_policy_body_auto()`](https://nectar.api2r.org/reference/tidy_policy_body_auto.html)
  is used to automatically apply
  [`resp_body_auto()`](https://nectar.api2r.org/reference/resp_body_auto.html)
  to responses.

- call:

  (`environment`) The environment from which a function was called, e.g.
  [`rlang::caller_env()`](https://rlang.r-lib.org/reference/stack.html)
  (the default). The environment will be mentioned in error messages as
  the source of the error. This argument is particularly useful for
  functions that are intended to be called as utilities inside other
  functions.

## Value

A [`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object with additional class `nectar_request`.

## Details

You may wish to export this function (if the API changes often or you do
not fully implement the API, for example).
