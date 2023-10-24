with_mock_dir("api/path/list_apis", {
  test_that("list_apis() returns expected result", {
    test_result <- list_apis()
    expect_s3_class(test_result, "guru_apis")
    expect_colnames(test_result, c("name", "added", "preferred", "versions"))
  })
})
