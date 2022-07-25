test_that("is tibble", {

  italy_df <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy_df))

  expect_named(
    italy_df
    , c("tier", "season", "date", "home", "visitor", "goals_home", "goals_visitor", "country")
  )

  expect_identical(
    italy_df$country |> unique()
    , "Italy"
  )

  expect_s3_class(italy_df$tier, "factor")

})
