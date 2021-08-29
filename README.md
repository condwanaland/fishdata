
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fishdata

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/fishdata)](https://CRAN.R-project.org/package=fishdata)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
<!-- badges: end -->

fishdata provides some basic datasets for the study of fish population
dynamics. All data was collected in the Wellington region of New Zealand
between 2015-2016. Study species in question was the amphidromous fish
*Galaxis maculatus*, commonly known as ‘whitebait’. This data was
collected as part of my [Masters
thesis](https://conorneilson.com/thesis/) at Victoria University of
Wellington.

Six datasets are provided by the package (three for juvenile fish, three
for adult fish). The *base* datasets contain one row per fish, and
provide basic data around catch date and location.

``` r
library(fishdata)
data("juveniles")
data("adults")
head(juveniles)
#>   fish_code fish otolith_code        site day   month catch_date
#> 1     W13.1  582           34 Wainuiomata  13 October 2015-10-30
#> 2     W13.2  583           20 Wainuiomata  13 October 2015-10-30
#> 3     W13.3  584          359 Wainuiomata  13 October 2015-10-30
#> 4     W13.4  585          422 Wainuiomata  13 October 2015-10-30
#> 5     W13.5  586           54 Wainuiomata  13 October 2015-10-30
#> 6     W13.6  587          471 Wainuiomata  13 October 2015-10-30
```

``` r
head(adults)
#>   fish_code site day catch_date
#> 1       H.1 Hutt  H1 2016-03-25
#> 2       H.2 Hutt  H2 2016-04-07
#> 3       H.3 Hutt  H2 2016-04-07
#> 4       H.4 Hutt  H2 2016-04-07
#> 5       H.7 Hutt  H3 2016-04-13
#> 6       H.9 Hutt  H3 2016-04-13
```

Building on the base datasets are the ‘metrics’ datasets which provide
info around age, birthdate, and growth rates. These are still in the one
row per fish format.

``` r
data("juvenile_metrics")
head(juvenile_metrics)
#>   fish_code standard_length body_depth age  birthdate growth_rate early_growth
#> 1     W13.1          42.535      3.527 168 2015-05-15    1.723470       3.1096
#> 2     W13.2          46.651      3.923 179 2015-05-04    1.730324       2.7884
#> 3     W13.3          45.466      3.820 189 2015-04-24    1.530831       2.0416
#> 4     W13.4          43.483      3.918 185 2015-04-28    1.636211       3.2546
#> 5     W13.5          44.896      3.572 182 2015-05-01    1.659885       1.9756
#> 6     W13.6          46.581      4.032 174 2015-05-09    1.773362       2.5970
#>   late_growth
#> 1      1.3636
#> 2      1.1018
#> 3      0.9476
#> 4      1.4226
#> 5      1.0654
#> 6      1.3134
```

``` r
data("adult_metrics")
head(adult_metrics)
#>   fish_code standard_length body_depth age  birthdate growth_rate
#> 1       H.1           5.631      0.817 274 2015-06-25      1.6938
#> 2       H.2           5.838      0.768 317 2015-05-26      1.9324
#> 3       H.3           5.876      0.824 298 2015-06-14      1.7972
#> 4       H.4           5.330      0.543 305 2015-06-07      1.8331
#> 5       H.7           6.873      0.827 291 2015-06-27      2.0771
#> 6       H.9           4.752      0.559 296 2015-06-22      1.7332
```

Finally, there are the growth datasets. The growth datasets contain
measures of daily growth per fish (estimated using otolith rings). As
these datasets use a row to represent one day of growth in a fish’s
life, they allow for the complete reconstruction of growth profiles. The
ages of fish can also be calculated by finding the maximum period (or
‘increment’) for each fish.

``` r
data("juvenile_growth")
head(juvenile_growth)
#>   fish_code otolith_code period position distance
#> 1      W4.3          133      1    4.935    4.935
#> 2      W4.3          133      2    7.615    2.680
#> 3      W4.3          133      3    9.096    1.481
#> 4      W4.3          133      4   10.516    1.420
#> 5      W4.3          133      5   12.308    1.792
#> 6      W4.3          133      6   13.628    1.320
```

``` r
data("adult_growth")
head(adult_growth)
#>   fish_code period position distance
#> 1       H.1      1    4.528    4.528
#> 2       H.1      2    6.524    1.996
#> 3       H.1      3    8.518    1.994
#> 4       H.1      4   10.434    1.915
#> 5       H.1      5   12.324    1.891
#> 6       H.1      6   14.274    1.950
```

For information on the column meanings, please see the documentation.
For more information on the underlying data model (i.e., how the tables
link to each other), please check out the ‘Data Model’ vignette.
Finally, for some examples of using this data, please see ‘Examples’
vignette.
