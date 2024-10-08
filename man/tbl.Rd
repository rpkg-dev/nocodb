% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{tbl}
\alias{tbl}
\title{Get NocoDB table}
\usage{
tbl(
  id_tbl,
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{id_tbl}{NocoDB table identifier as returned by \code{\link[=tbl_id]{tbl_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
A \link[tibble:tbl_df-class]{tibble}.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} with metadata about the specified table on a NocoDB server from its
\href{https://meta-apis-v2.nocodb.com/#tag/DB-Table/operation/db-table-read}{\code{GET /api/v2/meta/tables/{id_tbl}}} API endpoint.
}
\seealso{
Other functions to manage NocoDB tables:
\code{\link{create_data_src_tbl}()},
\code{\link{create_tbl}()},
\code{\link{data_src_tbls}()},
\code{\link{delete_tbl}()},
\code{\link{reorder_tbl}()},
\code{\link{set_tbl_metadata}()},
\code{\link{tbl_id}()},
\code{\link{tbls}()},
\code{\link{update_tbl}()}
}
\concept{tbls}
