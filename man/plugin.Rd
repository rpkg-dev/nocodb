% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{plugin}
\alias{plugin}
\title{Get NocoDB plugin}
\usage{
plugin(
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
A \link[tibble:tbl_df-class]{tibble} with metadata about the specified NocoDB plugin.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} with metadata about the specified plugin on a NocoDB server from its
\href{https://docs.nocodb.com/0.109.7/developer-resources/rest-apis/#meta-apis}{\code{GET /api/v1/db/meta/plugins/{id_plugin}}} API endpoint.
}
\seealso{
Other functions to manage NocoDB plugins:
\code{\link{is_plugin_active}()},
\code{\link{plugin_category}()},
\code{\link{plugin_id}()},
\code{\link{plugins}()},
\code{\link{test_plugin}()},
\code{\link{update_plugin}()}
}
\concept{plugins}
