% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{set_display_val}
\alias{set_display_val}
\title{Set display value column for NocoDB table}
\usage{
set_display_val(
  id_col,
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token")
)
}
\arguments{
\item{id_col}{NocoDB column identifier as returned by \code{\link[=tbl_col_id]{tbl_col_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}
}
\value{
\code{TRUE}, invisibly.
}
\description{
Sets the specified column as the corresponding table's \href{https://docs.nocodb.com/fields/display-value/}{display value} on a NocoDB server via its
\href{https://meta-apis-v2.nocodb.com/#tag/DB-Table-Column/operation/db-table-column-primary-column-set}{\code{POST /api/v2/meta/columns/{id_col}/primary}} API
endpoint.
}
\seealso{
Other functions to manage NocoDB table columns:
\code{\link{create_tbl_col}()},
\code{\link{delete_tbl_col}()},
\code{\link{set_display_vals}()},
\code{\link{tbl_col}()},
\code{\link{tbl_col_id}()},
\code{\link{tbl_cols}()},
\code{\link{update_tbl_col}()}
}
\concept{cols}
