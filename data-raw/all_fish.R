## code to prepare `DATASET` dataset goes here
library(dplyr)
library(anytime)
library(tidyr)

## Load data
juv_growth <- readRDS("data-raw/juvenile_growth.Rda")
juv_metrics <- readRDS("data-raw/juvenile_metrics.Rda")
adult_grwh <- readRDS("data-raw/adult_growth.Rda")
adult_mets <- readRDS("data-raw/adult_metrics.Rda")

## Juveniles
juveniles <- select(juv_metrics,
                    fish_code = Code,
                    fish = Fish,
                    otolith_code = Otolith.code,
                    site = Site,
                    day = Day,
                    month = Month,
                    catch_date = Catch.date
                    ) %>%
  mutate(across(everything(), as.character)) %>%
  separate(catch_date, c("day2", "month2", "year"), sep = "\\.") %>%
  mutate(year = "2015") %>%
  unite(catch_date, year, month2, day2, sep = "-") %>%
  mutate(catch_date = anydate(catch_date))


## Juvenile metrics
juvenile_metrics <- juv_metrics %>%
  select(
    fish_code = Code,
    standard_length = Standard.length,
    body_depth = Body.depth,
    age = Age,
    birthdate = Birthdate,
    growth_rate = Growth.rate,
    early_growth = early.growth,
    late_growth = late.growth
  ) %>%
  separate(birthdate, c("day2", "month2", "year"), sep = "\\.") %>%
  mutate(year = "2015") %>%
  unite(birthdate, year, month2, day2, sep = "-") %>%
  mutate(birthdate = anydate(birthdate))


## Juvenile Growth
juvenile_growth <- juv_growth %>%
  select(
    fish_code = Fish,
    otolith_code = Otolith.code,
    period = Period,
    position = Position,
    distance = Distance
  )
rm(juv_growth)
rm(juv_metrics)

## Adults
adults <- adult_mets %>%
  select(
    fish_code = ID,
    site = Site,
    day = Day,
    catch_date = Sample.date
  ) %>%
  mutate(catch_date = as.Date(catch_date, "%d/%m/%y"))

## Adult Metrics
adult_metrics <- adult_mets %>%
  select(
    fish_code = ID,
    standard_length = Standard.length,
    body_depth = Max.body.depth,
    age = Age,
    birthdate = Birthdate,
    growth_rate = Growth.rate
  ) %>%
  mutate(birthdate = as.Date(birthdate, "%d.%m.%y"))

## Adult growth
adult_growth <- adult_grwh %>%
  select(
    fish_code = Code,
    period = Period,
    position = Position,
    distance = Distance
  )

rm(adult_grwh)
rm(adult_mets)


usethis::use_data(adult_growth, overwrite = TRUE)
usethis::use_data(adult_metrics, overwrite = TRUE)
usethis::use_data(adults, overwrite = TRUE)
usethis::use_data(juvenile_growth, overwrite = TRUE)
usethis::use_data(juvenile_metrics, overwrite = TRUE)
usethis::use_data(juveniles, overwrite = TRUE)
