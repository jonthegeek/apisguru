with_mock_dir("api/path/get_provider", {
  test_that("get_provider() returns expected result", {
    expect_snapshot({
      test_result <- get_provider("adyen.com")
      test_result
    })
    expect_s3_class(test_result, "guru_api_versions")
    expect_colnames(
      test_result,
      c(
        "api", "added", "info", "updated", "swaggerUrl", "swaggerYamlUrl",
        "openapiVer", "link", "externalDocs"
      )
    )
  })
})
