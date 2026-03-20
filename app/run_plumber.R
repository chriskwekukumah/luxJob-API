library(plumber)

local({
  pr <- plumber::pr("plumber.R")
  plumber::pr_run(pr, host = "0.0.0.0", port = 8080)
})