library(plumber)

local({
  pr <- plumber::pr("plumber.R")
  plumber::pr_run(pr, port = 8008)
})

