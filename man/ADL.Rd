% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ADL.r
\name{ADL}
\alias{ADL}
\title{Accumulation Distribution Line}
\usage{
ADL(OHLCV, n)
}
\arguments{
\item{OHLCV}{Object that is coercible to xts or matrix and contains
High-Low-Close prices.}

\item{n}{Number of periods for moving average.}
}
\description{
Accumulation Distribution Line
}
\author{
Chen Chaozong
}
\seealso{
See \code{\link{EMA}}, \code{\link{SMA}}, etc. for moving average
options; and note Warning section.  See \code{\link{ATR}}, which uses true
range.  See \code{\link{chaikinVolatility}} for another volatility measure.
}
\keyword{ts}

