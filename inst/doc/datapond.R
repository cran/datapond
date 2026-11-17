## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# install.packages("datapond")

## -----------------------------------------------------------------------------
# library(datapond)
# dp_list()
# dp_databases()[, c("id", "rows", "size_gb", "data_date_range")]
# dp_info("eoir")

## -----------------------------------------------------------------------------
# con <- dp_connect("eoir")
# DBI::dbGetQuery(con, "SELECT * FROM proceedings LIMIT 5")

## -----------------------------------------------------------------------------
# dp_disconnect(con)
# con <- dp_connect("eoir", config = list(
#   memory_limit = "1GB", threads = "2",
#   temp_directory = tempfile("datapond-spill-"),
#   max_temp_directory_size = "2GB"
# ))

## -----------------------------------------------------------------------------
# dp_describe(con)                         # tables
# dp_describe(con, table = "proceedings")  # columns, types, null %, join hints
# dp_describe(con, search = "judge")       # columns by name

## -----------------------------------------------------------------------------
# library(dplyr)
# tbl(con, "proceedings") |>
#   select(DEC_CODE) |>
#   head(10) |>
#   collect()
# dp_disconnect(con)

## -----------------------------------------------------------------------------
# con <- dp_connect(c("cms-medicare", "openpayments"))
# DBI::dbGetQuery(con, 'SELECT * FROM "cms-medicare".physician_summary LIMIT 5')
# tbl(con, I('"openpayments".main.general_payments')) |> head(5) |> collect()
# dp_disconnect(con)

## -----------------------------------------------------------------------------
# dp_download("dol-visas")
# con <- dp_connect("dol-visas", local = TRUE)
# dp_disconnect(con)      # close the local file before replacing it
# dp_update("dol-visas")   # compare with the published remote version

