# get_provider() returns expected result

    Code
      test_result <- get_provider("adyen.com")
      test_result
    Output
      # A tibble: 25 x 9
         api           added               info         updated             swaggerUrl
         <chr>         <dttm>              <list>       <dttm>              <chr>     
       1 adyen.com:Ac~ 2023-02-17 11:02:20 <named list> 2023-04-04 23:18:43 specs/ady~
       2 adyen.com:Ba~ 2023-02-17 11:02:20 <named list> 2023-02-24 23:24:00 specs/ady~
       3 adyen.com:Ba~ 2023-03-23 23:19:15 <named list> 2023-04-18 23:18:31 specs/ady~
       4 adyen.com:Ba~ 2023-03-17 23:18:27 <named list> 2023-04-21 23:18:02 specs/ady~
       5 adyen.com:Ba~ 2023-03-23 23:19:15 <named list> 2023-04-05 23:21:49 specs/ady~
       6 adyen.com:Ba~ 2023-02-17 11:02:20 <named list> 2023-04-18 23:18:31 specs/ady~
       7 adyen.com:Ba~ 2023-03-17 23:18:27 <named list> 2023-04-21 23:18:02 specs/ady~
       8 adyen.com:Bi~ 2023-02-17 11:02:20 <named list> 2023-04-19 23:18:47 specs/ady~
       9 adyen.com:Ch~ 2023-02-17 11:02:20 <named list> 2023-04-19 23:18:47 specs/ady~
      10 adyen.com:Ch~ 2021-06-18 13:57:32 <named list> 2021-06-18 13:57:32 specs/ady~
      # i 15 more rows
      # i 4 more variables: swaggerYamlUrl <chr>, openapiVer <chr>, link <chr>,
      #   externalDocs <list>

