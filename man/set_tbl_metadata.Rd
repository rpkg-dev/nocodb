% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{set_tbl_metadata}
\alias{set_tbl_metadata}
\title{Set metadata for NocoDB tables}
\usage{
set_tbl_metadata(
  data,
  id_base = base_id(hostname = hostname, email = email, password = password, api_token =
    api_token),
  hostname = pal::pkg_config_val("hostname"),
  email = pal::pkg_config_val("email"),
  password = pal::pkg_config_val("password"),
  api_token = pal::pkg_config_val("api_token"),
  quiet = FALSE
)
}
\arguments{
\item{data}{Data frame with the columns \code{name}, \code{meta.icon} that defines the table-name-and-metadata-value mapping to be applied. Additional columns are
ignored.}

\item{id_base}{NocoDB base identifier as returned by \code{\link[=base_id]{base_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}

\item{quiet}{Whether or not to suppress printing status output from internal processing.}
}
\value{
\code{NULL}, invisibly.
}
\description{
Sets the provided table metadata on a NocoDB server. Currently, this includes:
\itemize{
\item Setting the order of the tables in the base using \code{\link[=reorder_tbl]{reorder_tbl()}} according to the row order of \code{data}.
\item Setting the \href{https://docs.nocodb.com/tables/actions-on-table/#change-table-icon}{table icons} (emojis) using \code{\link[=update_tbl]{update_tbl()}} according to \code{data$meta.icon}.
}
}
\seealso{
Other functions to manage NocoDB tables:
\code{\link{create_data_src_tbl}()},
\code{\link{create_tbl}()},
\code{\link{data_src_tbls}()},
\code{\link{delete_tbl}()},
\code{\link{reorder_tbl}()},
\code{\link{tbl}},
\code{\link{tbl_id}()},
\code{\link{tbls}()},
\code{\link{update_tbl}()}
}
\concept{tbls}
