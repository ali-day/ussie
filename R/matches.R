uss_make_matches <- function(data_engsoc, country) {
  result <- data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
      , country = !!country
    )

  return(result)
}
