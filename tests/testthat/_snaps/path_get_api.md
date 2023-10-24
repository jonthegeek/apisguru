# get_api() returns expected result

    Code
      test_result <- get_api("apis.guru", "2.2.0")
      test_result
    Output
      # A tibble: 1 x 8
        added               info         updated             swaggerUrl swaggerYamlUrl
        <dttm>              <list>       <dttm>              <chr>      <chr>         
      1 2015-11-26 17:52:26 <named list> 2023-04-05 13:10:14 specs/api~ specs/apis.gu~
      # i 3 more variables: openapiVer <chr>, link <chr>, externalDocs <list>

