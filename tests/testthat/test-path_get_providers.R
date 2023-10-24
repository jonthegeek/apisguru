with_mock_dir("api/path/get_providers", {
  test_that("get_providers() returns expected result", {
    test_result <- get_providers()
    expect_s3_class(test_result, "guru_providers")
    expect_gte(length(test_result), 500)
  })
})
