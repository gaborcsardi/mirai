% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mirai.R
\name{stop_mirai}
\alias{stop_mirai}
\title{mirai (Stop)}
\usage{
stop_mirai(x)
}
\arguments{
\item{x}{a \sQuote{mirai} object, or list of \sQuote{mirai} objects.}
}
\value{
Invisible NULL.
}
\description{
Stops a \sQuote{mirai} if still in progress, causing it to resolve
    immediately to an \sQuote{errorValue} 20 (Operation canceled).
}
\details{
Forces the \sQuote{mirai} to resolve immediately. Has no effect if
    the \sQuote{mirai} has already resolved.

    If cancellation was successful, the value at \code{$data} will be an
    \sQuote{errorValue} 20 (Operation canceled). Note that in such a case,
    the \sQuote{mirai} has been aborted and the value not retrieved - but any
    ongoing evaluation in the daemon process will continue to completion and
    is not interrupted.
}
\examples{
if (interactive()) {
# Only run examples in interactive R sessions

m <- mirai(Sys.sleep(n), n = 5)
stop_mirai(m)
m$data

}

}
