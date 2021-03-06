% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charts.PerformanceSummary.R
\name{charts.PerformanceSummary}
\alias{charts.PerformanceSummary}
\title{Create combined wealth index, period performance, and drawdown chart}
\usage{
charts.PerformanceSummary(R, Rf = 0, main = NULL, geometric = TRUE,
  methods = "none", width = 0, event.labels = NULL, ylog = FALSE,
  wealth.index = FALSE, gap = 12, begin = c("first", "axis"),
  legend.loc = "topleft", p = 0.95, ...)
}
\arguments{
\item{R}{an xts, vector, matrix, data frame, timeSeries or zoo object of
asset returns}

\item{Rf}{risk free rate, in same period as your returns}

\item{main}{set the chart title, as in \code{plot}}

\item{geometric}{utilize geometric chaining (TRUE) or simple/arithmetic chaining (FALSE) to aggregate returns,
default TRUE}

\item{methods}{Used to select the risk parameter of trailing \code{width}
returns to use in the \code{\link{chart.BarVaR}} panel: May be any of:
\itemize{ \item None - does not add a line, \item ModifiedVaR - uses
Cornish-Fisher modified VaR, \item GaussianVaR - uses traditional Value at
Risk, \item HistoricalVaR - calculates historical Value at Risk, \item
ModifiedES - uses Cornish-Fisher modified Expected Shortfall, \item
GaussianES - uses traditional Expected Shortfall, \item HistoricalES -
calculates historical Expected Shortfall, \item StdDev - per-period standard
deviation }}

\item{width}{number of periods to apply rolling function window over}

\item{event.labels}{TRUE/FALSE whether or not to display lines and labels
for historical market shock events}

\item{ylog}{TRUE/FALSE set the y-axis to logarithmic scale, similar to
\code{\link{plot}}, default FALSE}

\item{wealth.index}{if \code{wealth.index} is \code{TRUE}, shows the "value
of $1", starting the cumulation of returns at 1 rather than zero}

\item{gap}{numeric number of periods from start of series to use to train
risk calculation}

\item{begin}{Align shorter series to: \itemize{ \item first - prior value of
the first column given for the reference or longer series or, \item axis -
the initial value (1 or zero) of the axis.  } passthru to
\code{\link{chart.CumReturns}}}

\item{legend.loc}{sets the legend location in the top chart.  Can be set to
NULL or nine locations on the chart: bottomright, bottom, bottomleft, left,
topleft, top, topright, right, or center.}

\item{p}{confidence level for calculation, default p=.95}

\item{\dots}{any other passthru parameters}
}
\description{
For a set of returns, create a wealth index chart, bars for per-period
performance, and underwater chart for drawdown.
}
\note{
Most inputs are the same as "\code{\link{plot}}" and are principally
included so that some sensible defaults could be set.
}
\examples{

data(edhec)
charts.PerformanceSummary(edhec[,c(1,13)])

}
\author{
Peter Carl
}
\seealso{
\code{\link{chart.CumReturns}} \cr \code{\link{chart.BarVaR}} \cr
\code{\link{chart.Drawdown}}
}

