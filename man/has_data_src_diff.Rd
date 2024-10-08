% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{has_data_src_diff}
\alias{has_data_src_diff}
\title{Test if NocoDB data source has schema changes pending}
\usage{
has_data_src_diff(
  id_data_src,
  id_base = base_id(hostname = hostname, email = email, password = password, api_token =
    api_token),
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{id_data_src}{NocoDB data source identifier as returned by \code{\link[=data_src_id]{data_src_id()}}. A character scalar.}

\item{id_base}{NocoDB base identifier as returned by \code{\link[=base_id]{base_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
A logical scalar.
}
\description{
Tests whether \code{\link[=data_src_diff]{data_src_diff()}} detects any pending schema changes.
}
\seealso{
Other functions to manage NocoDB base data sources:
\code{\link{create_data_src}()},
\code{\link{create_data_src_tbl}()},
\code{\link{data_src}()},
\code{\link{data_src_diff}()},
\code{\link{data_src_id}()},
\code{\link{data_src_tbls}()},
\code{\link{data_srcs}()},
\code{\link{delete_data_src}()},
\code{\link{sync_data_src}()},
\code{\link{test_data_src}()},
\code{\link{update_data_src}()}
}
\concept{data_src}
