% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/get_price_relatives.R
\name{get_price_relatives}
\alias{get_price_relatives}
\title{Get price relatives}
\usage{
get_price_relatives(prices)
}
\arguments{
\item{prices}{Matrix of asset prices, where each column represents
              an asset.}
}
\value{
Matrix of price relatives
}
\description{
calculates the price relatives of according asset prices; that is the
closing (opening) price at time t divided by the closing (opening)
price at time t-1.
}
\examples{
# load stock prices, for more information see quantmod-package
library(quantmod)
getSymbols("SPY", src="yahoo")
# closing prices
prices <- Cl(SPY)
# get price relatives
get_price_relatives(prices)
}

