% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/alg_RPP_theoretical.R
\name{alg_RPP_theoretical}
\alias{alg_RPP_theoretical}
\title{Peservation Price Policy for Portfolio Selection (RPP)}
\usage{
alg_RPP_theoretical(returns, PR = "uni")
}
\arguments{
\item{returns}{Matrix of price relatives, i.e. the ratio of the closing
(opening) price today and the day before (use function
\code{get_price_relatives} to calculate from asset prices).}

\item{PR}{preemption rule: possible values are \code{"uni"} and \code{"maxQ"}.}
}
\value{
Object of class OLP containing
        \item{Alg}{Name of the Algorithm}
        \item{Names}{vector of asset names in the portfolio}
        \item{Weights}{calculated portfolio weights as a vector}
        \item{Wealth}{wealth achieved by the portfolio as a vector}
        \item{mu}{exponential growth rate}
        \item{APY}{annual percantage yield (252 trading days)}
        \item{sigma}{standard deviation of exponential growth rate}
        \item{ASTDV}{annualized standard deviation (252 trading days)}
        \item{MDD}{maximum draw down (downside risk)}
        \item{SR}{Sharpe ratio}
        \item{CR}{Calmar ratio}
        see also \code{\link{print.OLP}}, \code{\link{plot.OLP}}
}
\description{
computes the Reservation Price Policy Algorithm by El-Yaniv applied to the
portfolio selection problem
}
\details{
The idea of \code{RPP} is to decide for each asset whether to convert it into another asset at at each time
instant t = 1, ..., T based the Reservation Price algorithm by El-Yaniv. For more details see Gloeckner et al.
}
\note{
The print method for \code{OLP} objects prints only a short summary.
}
\examples{
# load data
data(NYSE)
# select stocks
x = cbind(kinar=NYSE$kinar, iroqu=NYSE$iroqu)

# compute RPP algorithm
RPP = alg_RPP_theoretical(x); RPP
plot(RPP)
}
\references{
El-Yaniv, R.: Competitive Solutions for Online Financial Problems. In: ACM Comput. Surv. 30.1 (Mar. 1998), pp. 28-69.

Gloeckner, N.; Dochow, R.; Schmidt, G.: Reservation Price Policy for the Conversion and
Portfolio Selection Problem, working paper, 2016.
}

