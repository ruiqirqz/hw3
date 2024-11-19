
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hw3lm

<!-- badges: start -->
<!-- badges: end -->

# HW3LM: A Linear Regression Package in R

**HW3LM** is an R package that implements a simple but enhanced version of linear regression. It provides additional outputs like standard errors, t-values, p-values, and \( R^2 \) values, which are crucial for interpreting the model's results.

This package is designed for educational purposes and demonstrates the core functionality of a linear regression model using matrix algebra. It is an alternative to R's built-in `lm()` function, offering a hands-on perspective.

---

## Features

- Fits a linear regression model using matrix algebra.
- Provides:
  - Coefficients of the regression.
  - Standard errors, t-values, and p-values for hypothesis testing.
  - Fitted values and residuals for model evaluation.
  - \( R^2 \) (coefficient of determination) to assess model fit.
- Handles basic input validation to ensure robust functionality.

---

## Installation

To install the **HW3LM** package from GitHub, use the following command in R:

```R
# Install devtools if not already installed
install.packages("devtools")

# Install EnhancedLM from GitHub
devtools::install_github("yourusername/enhancedlm")

---

## Usage
Here’s an example of how to use the enhanced_linear_regression function from the package:

R
Copy code
# Load the package
library(hw3lm)

# Example data
x <- 1:10
y <- 2 * x + rnorm(10)

# Fit the model
model <- enhanced_linear_regression(x, y)

# Print the model output
print(model)

---

## Vignette
For a comprehensive tutorial and additional examples, refer to the vignette included in the package:
vignette("enhanced_linear_regression", package = "hw3lm")

---

## Requirements
R version 4.0 or higher.
Required packages:
devtools for installation.
testthat for testing (optional).
