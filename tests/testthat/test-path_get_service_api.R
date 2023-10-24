# TODO: Update tests after rapid is finished.

with_mock_dir("api/path/get_service_api", {
  test_that("get_service_api() returns expected result", {
    expect_warning(
      expect_warning(
        expect_warning(
          {
            test_result <- get_service_api("1password.com", "events", "1.0.0")
          },
          class = "rapid_warning_extra_names"
        ),
        class = "rapid_warning_extra_names"
      ),
      class = "rapid_warning_extra_names"
    )
    expect_s3_class(test_result, c("rapid::rapid", "S7_object"), exact = TRUE)
  })
})
