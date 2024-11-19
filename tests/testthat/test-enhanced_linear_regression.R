test_that("linear regression returns correct outputs", {
  x <- 1:10
  y <- 2 * x + rnorm(10, sd = 0.01)
  model <- enhanced_linear_regression(x, y)

  expect_equal(length(model$coefficients), 2)
  expect_true(model$r_squared > 0.9)
  expect_equal(length(model$fitted_values), length(x))
  expect_equal(length(model$residuals), length(x))
})

test_that("linear regression handles invalid inputs", {
  expect_error(enhanced_linear_regression(1:10, 1:5), "must have the same length")
  expect_error(enhanced_linear_regression(1:10, c(1:9, NA)), "must not contain missing values")
})
