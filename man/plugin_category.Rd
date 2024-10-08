% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{plugin_category}
\alias{plugin_category}
\title{Get NocoDB plugin category}
\usage{
plugin_category(
  id_plugin,
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{id_plugin}{NocoDB plugin identifier as returned by \code{\link[=plugin_id]{plugin_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
Plugin category as a character scalar.
}
\description{
Returns the category of the specified plugin on a NocoDB server.
}
\seealso{
Other functions to manage NocoDB plugins:
\code{\link{is_plugin_active}()},
\code{\link{plugin}()},
\code{\link{plugin_id}()},
\code{\link{plugins}()},
\code{\link{test_plugin}()},
\code{\link{update_plugin}()}
}
\concept{plugins}
