
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/ali-day/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ali-day/ussie/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Ussie works with European soccer data. It is a toy package created
during rstudio::conf 2022’s Building Tidy Tools workshop.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ali-day/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)

spain_df <- uss_make_matches(engsoccerdata::spain, "Spain")

print(spain_df)
#> # A tibble: 23,915 × 8
#>    tier  season date       home               visitor    goals…¹ goals…² country
#>    <fct>  <int> <date>     <chr>              <chr>        <int>   <int> <chr>  
#>  1 1       1928 1929-02-10 Arenas de Getxo    Atletico …       2       3 Spain  
#>  2 1       1928 1929-02-10 Espanyol Barcelona Real Union       3       2 Spain  
#>  3 1       1928 1929-02-10 Real Madrid        CE Europa        5       0 Spain  
#>  4 1       1928 1929-02-10 Real Sociedad      Athletic …       1       1 Spain  
#>  5 1       1928 1929-02-12 Racing Santander   FC Barcel…       0       2 Spain  
#>  6 1       1928 1929-02-17 FC Barcelona       Real Madr…       1       2 Spain  
#>  7 1       1928 1929-02-17 Athletic Bilbao    Espanyol …       9       0 Spain  
#>  8 1       1928 1929-02-17 Atletico Madrid    Real Soci…       0       3 Spain  
#>  9 1       1928 1929-02-17 Real Union         Racing Sa…       3       1 Spain  
#> 10 1       1928 1929-02-17 CE Europa          Arenas de…       5       2 Spain  
#> # … with 23,905 more rows, and abbreviated variable names ¹​goals_home,
#> #   ²​goals_visitor
#> # ℹ Use `print(n = ...)` to see more rows
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
dplyr::glimpse(spain_df)
#> Rows: 23,915
#> Columns: 8
#> $ tier          <fct> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ season        <int> 1928, 1928, 1928, 1928, 1928, 1928, 1928, 1928, 1928, 19…
#> $ date          <date> 1929-02-10, 1929-02-10, 1929-02-10, 1929-02-10, 1929-02…
#> $ home          <chr> "Arenas de Getxo", "Espanyol Barcelona", "Real Madrid", …
#> $ visitor       <chr> "Atletico Madrid", "Real Union", "CE Europa", "Athletic …
#> $ goals_home    <int> 2, 3, 5, 1, 0, 1, 9, 0, 3, 5, 3, 3, 1, 0, 2, 1, 2, 3, 2,…
#> $ goals_visitor <int> 3, 2, 0, 1, 2, 2, 0, 3, 1, 2, 0, 1, 1, 4, 1, 2, 1, 0, 2,…
#> $ country       <chr> "Spain", "Spain", "Spain", "Spain", "Spain", "Spain", "S…
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.
