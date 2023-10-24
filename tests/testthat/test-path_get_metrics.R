with_mock_dir("api/path/get_metrics", {
  test_that("get_metrics() returns expected result", {
    test_result <- get_metrics()
    expect_s3_class(test_result, "guru_metrics")
    expect_named(
      test_result,
      c(
        "numSpecs", "numAPIs", "numEndpoints", "unreachable", "invalid",
        "unofficial", "fixes", "fixedPct", "datasets", "stars", "issues",
        "thisWeek", "numDrivers", "numProviders"
      )
    )
  })
})
