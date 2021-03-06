% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecast_tools.R
\name{res_hist}
\alias{res_hist}
\title{Histogram Plot of the Residuals Values}
\usage{
res_hist(forecast.obj)
}
\arguments{
\item{forecast.obj}{A fitted or forecasted object (of the forecast package) with residuals output}
}
\description{
Histogram plot of the residuals values
}
\examples{
\dontrun{
library(forecast)
data(USgas)

# Set the horizon of the forecast
h <- 12

# split to training/testing partition
split_ts <- ts_split(USgas, sample.out  = h)
train <- split_ts$train
test <- split_ts$test

# Create forecast object
fc <- forecast(auto.arima(train, lambda = BoxCox.lambda(train)), h = h)

# Plot the fitted and forecasted vs the actual values
res_hist(forecast.obj = fc)
}
}
