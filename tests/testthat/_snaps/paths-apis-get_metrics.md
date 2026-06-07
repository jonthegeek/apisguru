# get_metrics() returns expected result

    Code
      test_result <- get_metrics()
      test_result
    Output
      # A tibble: 1 x 14
        datasets   fixedPct fixes invalid issues numAPIs numDrivers numEndpoints
        <list>        <int> <int>   <int>  <int>   <int>      <int>        <int>
      1 <list [1]>       23 84860     688     35    2529         10       108837
      # i 6 more variables: numProviders <int>, numSpecs <int>, stars <int>,
      #   thisWeek <tibble[,2]>, unofficial <int>, unreachable <int>

