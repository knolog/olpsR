% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/get_asset_prices.R
\name{get_asset_prices}
\alias{get_asset_prices}
\title{Get asset prices from price relatives}
\usage{
get_asset_prices(x)
}
\arguments{
\item{x}{Vector or matrix of price relatives}
}
\value{
Vector or matrix of prices
}
\description{
calculates the asset prices of according price relatives; that is the
cumulative product of the price relatives
}
\examples{
# load return data (price relatives)
data(NYSE)
# get asset prices
get_asset_prices(NYSE$kinar)
}

