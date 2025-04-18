% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{plugin_id}
\alias{plugin_id}
\title{Get NocoDB plugin ID}
\usage{
plugin_id(
  title,
  origin = funky::config_val("origin"),
  email = funky::config_val("email"),
  password = funky::config_val("password"),
  api_token = funky::config_val("api_token")
)
}
\arguments{
\item{title}{\code{\link[base:character]{character(1)}}\cr
NocoDB plugin title.}

\item{origin}{\code{\link[base:character]{character(1)}}\cr
NocoDB server \href{https://developer.mozilla.org/docs/Glossary/Origin}{origin}.}

\item{email}{\code{\link[base:character]{character(1)}}\cr
E-mail address of the NocoDB user to authenticate with.}

\item{password}{\code{\link[base:character]{character(1)}}\cr
Password of the NocoDB user to authenticate with.}

\item{api_token}{\code{\link[base:character]{character(1)}}\cr
NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if provided.}
}
\value{
Plugin identifier as a character scalar.
}
\description{
Returns the identifier of the plugin with the specified title on a NocoDB server.
}
\seealso{
Other functions to manage NocoDB plugins:
\code{\link{is_plugin_active}()},
\code{\link{plugin}()},
\code{\link{plugin_category}()},
\code{\link{plugins}()},
\code{\link{test_plugin}()},
\code{\link{update_plugin}()}
}
\concept{plugins}
