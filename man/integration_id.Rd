% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{integration_id}
\alias{integration_id}
\title{Get NocoDB integration ID}
\usage{
integration_id(
  title = NULL,
  type = "database",
  sub_type = c("mysql2", "pg", "sqlite3"),
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{title}{\code{pkgsnip::type("chr")}
NocoDB integration title. \code{NULL} means any title.}

\item{type}{\code{pkgsnip::type("chr")}
NocoDB integration type. One of \code{"database"}, or \code{NULL} for any type.}

\item{sub_type}{\code{pkgsnip::type("chr")}
NocoDB integration subtype. One of \code{"mysql2"}, \code{"pg"} or \code{"sqlite3"}, or \code{NULL} for any subtype.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
A character scalar.
}
\description{
Returns the identifier of the integration with the specified \code{type}, \code{sub_type} and/or \code{title} on a NocoDB server.
}
\details{
Note that NocoDB allows to create multiple integrations with the same \code{title}, \code{type} and \code{sub_type}, so \code{integration_id()} cannot discern such cases and
just returns the identifier of the \emph{first} integration listed in the API response (with a suitable warning).
}
\seealso{
Other functions to manage NocoDB integrations:
\code{\link{create_integration}()},
\code{\link{delete_integration}()},
\code{\link{integration}()},
\code{\link{integrations}()},
\code{\link{update_integration}()}
}
\concept{integrations}
