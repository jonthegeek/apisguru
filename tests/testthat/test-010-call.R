httptest2::with_mock_dir("api/01-call/valid", {
  test_that("Can call an endpoint without errors", {
    expect_no_error(guru_call_api("providers.json"))
  })
})
