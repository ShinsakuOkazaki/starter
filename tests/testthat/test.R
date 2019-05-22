context("Add number")
library(starter)

test_that("add returns sum of two numbers", {
  expect_equal(add(1, 2), 3)
  expect_equal(add(1.5, 1.5), 3.0)
  expect_equal(add(c(3,5), c(3,1)), c(6,6))
})


test_that("add returns error when not numbers are given", {
  expect_error(add('a', 'b'))
  expect_error(add('5', '63'))
  expect_error(add('ad','fae'))
})
