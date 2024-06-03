% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{data_src}
\alias{data_src}
\title{Get NocoDB data source metadata}
\usage{
data_src(
  id_source,
  id_base = base_id(),
  hostname = pal::pkg_config_val(key = "hostname", pkg = this_pkg),
  email = pal::pkg_config_val(key = "email", pkg = this_pkg, required = FALSE),
  password = pal::pkg_config_val(key = "password", pkg = this_pkg, required = FALSE),
  api_token = pal::pkg_config_val(key = "api_token", pkg = this_pkg, required = FALSE)
)
}
\arguments{
\item{id_source}{NocoDB data source identifier as returned by \code{\link[=data_src_id]{data_src_id()}}. A character scalar.}

\item{id_base}{NocoDB base identifier as returned by \code{\link[=base_id]{base_id()}}. A character scalar.}

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
Returns a \link[tibble:tbl_df-class]{tibble} with metadata about the specified data source in the specified base on a NocoDB server from its
\href{https://meta-apis-v2.nocodb.com/#tag/Source/operation/source-read}{\code{GET /api/v2/meta/bases/{id_base}/sources/{id_source}}} API endpoint.
}
\seealso{
Other functions to manage NocoDB base data sources:
\code{\link{create_data_src}()},
\code{\link{data_src_id}()},
\code{\link{data_srcs}()},
\code{\link{delete_data_src}()}
}
\concept{data_src}