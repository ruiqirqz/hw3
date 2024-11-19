#' Enhanced Linear Regression Function
#'
#' This function fits a linear regression model with additional outputs.
#' @param x A numeric vector of predictor values.
#' @param y A numeric vector of response values.
#' @return A list containing coefficients, standard errors, t-values, p-values, residuals,
#'   fitted values, and R-squared.
#' @examples
#' x <- 1:10
#' y <- 2 * x + rnorm(10)
#' model <- enhanced_linear_regression(x, y)
#' print(model)
#' @export
enhanced_linear_regression <- function(x, y) {
  # Validate inputs
  if (length(x) != length(y)) stop("x and y must have the same length")
  if (any(is.na(x)) || any(is.na(y))) stop("x and y must not contain missing values")
  if (!is.numeric(x) || !is.numeric(y)) stop("x and y must be numeric vectors")

  # Design matrix and response vector
  n <- length(y)
  X <- cbind(1, x)
  beta <- solve(t(X) %*% X) %*% t(X) %*% y
  y_hat <- X %*% beta
  residuals <- y - y_hat

  # Model fit statistics
  ss_total <- sum((y - mean(y))^2)
  ss_residual <- sum(residuals^2)
  r_squared <- 1 - (ss_residual / ss_total)

  # Standard errors, t-values, and p-values
  sigma2 <- sum(residuals^2) / (n - ncol(X))
  standard_errors <- sqrt(diag(sigma2 * solve(t(X) %*% X)))
  t_values <- beta / standard_errors
  p_values <- 2 * pt(-abs(t_values), df = n - ncol(X))

  list(
    coefficients = as.vector(beta),
    standard_errors = as.vector(standard_errors),
    t_values = as.vector(t_values),
    p_values = as.vector(p_values),
    fitted_values = as.vector(y_hat),
    residuals = as.vector(residuals),
    r_squared = r_squared
  )
}

