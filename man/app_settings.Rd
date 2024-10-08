% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{app_settings}
\alias{app_settings}
\title{List NocoDB app settings}
\usage{
app_settings(
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
The application settings of the specified NocoDB server as a \link[tibble:tbl_df-class]{tibble}.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} with (meta)data about the application settings of a NocoDB server via its
\href{https://meta-apis-v2.nocodb.com/#tag/Utils/operation/utils-app-info}{\code{GET /api/v2/meta/nocodb/info}} API endpoint.
}
\seealso{
Other functions to manage NocoDB's application settings:
\code{\link{update_app_settings}()}
}
\concept{app_settings}
