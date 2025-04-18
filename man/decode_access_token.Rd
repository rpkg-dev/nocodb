% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{decode_access_token}
\alias{decode_access_token}
\title{Decode access token (JWT)}
\usage{
decode_access_token(x)
}
\arguments{
\item{x}{\code{\link[base:character]{character(1)}}\cr
Access token to be decoded.}
}
\value{
The decoded access token as a \link[tibble:tbl_df-class]{tibble}.

Column \code{iat} gives the time at which the JWT was issued and column \code{exp} gives the expiration time on or after which the JWT must not be accepted anymore.
They are \href{https://datatracker.ietf.org/doc/html/rfc7519#section-4.1}{registered claim names in the JWT standard}.
}
\description{
Decodes an access token that adheres to the \href{https://de.wikipedia.org/wiki/JSON_Web_Token}{JSON Web Token (JWT)} standard and returns the payload as a
\link[tibble:tbl_df-class]{tibble}. The JWT's cryptographic signature is simply ignored.
}
\examples{
\dontrun{
nocodb:::access_token() |> nocodb:::decode_access_token()}
}
\seealso{
Other access_token: 
\code{\link{access_token}()},
\code{\link{is_access_token_expired}()},
\code{\link{store_access_token}()}
}
\concept{access_token}
\keyword{internal}
