httptest2::with_mock_dir("api/01-call/valid", {
  test_that("Can call an endpoint without errors", {
    expect_no_error(call_guru_api("providers.json"))
  })
})
