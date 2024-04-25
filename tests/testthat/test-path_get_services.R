with_mock_dir("api/path/get_services", {
  test_that("get_services() returns expected result", {
    test_result <- get_services("adyen.com")
    expect_s3_class(test_result, "guru_services")
    expect_gte(length(test_result), 25)
    expect_contains(
      test_result,
      c(
        "BalancePlatformConfigurationNotification-v1", "BalancePlatformService",
        "HopService", "MarketPayNotificationService", "PayoutService",
        "TfmAPIService"
      )
    )
  })
})
