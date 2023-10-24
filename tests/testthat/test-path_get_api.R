with_mock_dir("api/path/get_api", {
  test_that("get_api() returns expected result", {
    expect_snapshot({
      test_result <- get_api("apis.guru", "2.2.0")
      test_result
    })
    expect_s3_class(test_result, "api_version")
    expect_colnames(
      test_result,
      c(
        "added",
        "info",
        "updated",
        "swaggerUrl",
        "swaggerYamlUrl",
        "openapiVer",
        "link",
        "externalDocs"
      )
    )
  })
})
