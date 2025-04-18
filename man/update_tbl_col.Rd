% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{update_tbl_col}
\alias{update_tbl_col}
\title{Update NocoDB table column}
\usage{
update_tbl_col(
  id_col,
  column_name = NULL,
  title = NULL,
  description = NULL,
  uidt = NULL,
  dt = NULL,
  cdf = NULL,
  origin = funky::config_val("origin"),
  email = funky::config_val("email"),
  password = funky::config_val("password"),
  api_token = funky::config_val("api_token")
)
}
\arguments{
\item{id_col}{\code{\link[base:character]{character(1)}}\cr
NocoDB column identifier as returned by \code{\link[=tbl_col_id]{tbl_col_id()}}.}

\item{column_name}{\code{\link[base:character]{character(1)}}\cr
Column name. Omitted if \code{NULL}.}

\item{title}{\code{\link[base:character]{character(1)}}\cr
NocoDB column title. Omitted if \code{NULL}.}

\item{description}{\code{\link[base:character]{character(1)}}\cr
NocoDB column description displayed as a tooltip in the column header. Omitted if \code{NULL}.}

\item{uidt}{\code{\link[base:character]{character(1)}}\cr
NocoDB \strong{u}ser \strong{i}nterface \strong{d}ata \strong{t}ype. Either \code{NULL} to omit or one of
\itemize{
\item \code{"Attachment"}
\item \code{"AutoNumber"}
\item \code{"Barcode"}
\item \code{"Button"}
\item \code{"Checkbox"}
\item \code{"Collaborator"}
\item \code{"Count"}
\item \code{"CreatedBy"}
\item \code{"CreatedTime"}
\item \code{"Currency"}
\item \code{"Date"}
\item \code{"DateTime"}
\item \code{"Decimal"}
\item \code{"Duration"}
\item \code{"Email"}
\item \code{"ForeignKey"}
\item \code{"Formula"}
\item \code{"GeoData"}
\item \code{"Geometry"}
\item \code{"ID"}
\item \code{"JSON"}
\item \code{"LastModifiedBy"}
\item \code{"LastModifiedTime"}
\item \code{"Links"}
\item \code{"LinkToAnotherRecord"}
\item \code{"LongText"}
\item \code{"Lookup"}
\item \code{"MultiSelect"}
\item \code{"Number"}
\item \code{"Percent"}
\item \code{"PhoneNumber"}
\item \code{"QrCode"}
\item \code{"Rating"}
\item \code{"Rollup"}
\item \code{"SingleLineText"}
\item \code{"SingleSelect"}
\item \code{"SpecificDBType"}
\item \code{"Time"}
\item \code{"URL"}
\item \code{"User"}
\item \code{"Year"} .
}}

\item{dt}{\code{\link[base:character]{character(1)}}\cr
Column data type. Omitted if \code{NULL}.}

\item{cdf}{\code{\link[base:character]{character(1)}}\cr
Column default value. Omitted if \code{NULL}.}

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
A \link[tibble:tbl_df-class]{tibble} with metadata about the NocoDB table to which the updated column belongs, invisibly.
}
\description{
Updates the metadata of the specified table column on a NocoDB server via its
\href{https://meta-apis-v2.nocodb.com/#tag/DB-Table-Column/operation/db-table-column-update}{\code{PATCH /api/v2/meta/columns/{id_col}}} API endpoint.

Beware that this API endpoint alters the schema of the underlying table, which might be undesirable, especially if the table is from an external \href{https://docs.nocodb.com/category/data-sources}{data source}.
}
\seealso{
Other functions to manage NocoDB table columns:
\code{\link{create_tbl_col}()},
\code{\link{delete_tbl_col}()},
\code{\link{set_display_val}()},
\code{\link{set_display_vals}()},
\code{\link{tbl_col}()},
\code{\link{tbl_col_id}()},
\code{\link{tbl_cols}()}
}
\concept{cols}
