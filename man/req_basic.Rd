% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{req_basic}
\alias{req_basic}
\title{Create basic NocoDB API request}
\usage{
req_basic(
  path,
  method = c("GET", "CONNECT", "DELETE", "HEAD", "OPTIONS", "PATCH", "POST", "PUT",
    "TRACE"),
  hostname = pal::pkg_config_val("hostname"),
  max_tries = 3L
)
}
\arguments{
\item{path}{NocoDB API endpoint path. A character scalar.}

\item{method}{\href{https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods}{HTTP request method}. One of
\code{"GET"}, \code{"CONNECT"}, \code{"DELETE"}, \code{"HEAD"}, \code{"OPTIONS"}, \code{"PATCH"}, \code{"POST"}, \code{"PUT"} or \code{"TRACE"}.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{max_tries}{Maximum number of attempts to retry in case of an HTTP error. An integerish scalar.}
}
\value{
A modified HTTP \link[httr2]{request}.
}
\description{
Assembles the HTTP request structure that is common to \emph{all} NocoDB API requests performed by this package.
}
\seealso{
Other common functions:
\code{\link{api}()},
\code{\link{req_auth}()}
}
\concept{common}
\keyword{internal}
