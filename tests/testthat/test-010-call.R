httptest2::with_mock_dir("api/01-call/valid", {
  test_that("Can call an endpoint without errors", {
    expect_no_error(guru_call_api("providers.json"))
  })
})

# httptest2::with_mock_dir("api/01-call/providers", {
#   test_that("Can call providers.json.", {
#     test_result <- guru_call_api("providers.json")
#     # TODO: In a final version (with a get_providers() function), this result
#     # would be a defined class. Here I'd just test that the returned object has
#     # that class. In THIS test, really I just care that I got a 200.
#     expect_named(test_result, "data")
#     expect_gte(length(test_result$data), 677)
#     expect_snapshot({
#       head(test_result$data)
#     })
#   })
# })
#
# httptest2::with_mock_dir("api/01-call/list", {
#   test_that("Can call list.json.", {
#     test_result <- guru_call_api("list.json")
#     expect_named(test_result)
#     expect_identical(
#       names(test_result[[1]]),
#       c("added", "preferred", "versions")
#     )
#     expect_snapshot({
#       head(names(test_result))
#     })
#   })
# })
