% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{update_base_ui_acl}
\alias{update_base_ui_acl}
\title{Update NocoDB base visibility rules}
\usage{
update_base_ui_acl(
  id_tbl_view,
  guest = viewer,
  viewer = commenter,
  commenter = editor,
  editor = creator,
  creator = owner,
  owner = FALSE,
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
\item{id_tbl_view}{Table view identifier as returned by \code{\link[=tbl_view_id]{tbl_view_id()}}.}

\item{guest}{Whether or not to hide the table view for users with role \code{guest}.}

\item{viewer}{Whether or not to hide the table view for users with role \code{viewer}.}

\item{commenter}{Whether or not to hide the table view for users with role \code{commenter}.}

\item{editor}{Whether or not to hide the table view for users with role \code{editor}.}

\item{creator}{Whether or not to hide the table view for users with role \code{creator}.}

\item{owner}{Whether or not to hide the table view for users with role \code{owner}.}

\item{id_base}{NocoDB base identifier as returned by \code{\link[=base_id]{base_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}

\item{quiet}{Whether or not to suppress printing status output from internal processing.}
}
\value{
\code{id_tbl_view}, invisibly.
}
\description{
Updates the \href{https://docs.nocodb.com/data-sources/actions-on-data-sources#ui-access-control}{visibility rules (UI ACL) for the different views} of the
specified table view on a NocoDB server via its
\href{https://meta-apis-v2.nocodb.com/#tag/Base/operation/base-model-visibility-set}{\code{POST /api/v2/meta/bases/{id_base}/visibility-rules}} API endpoint.
}
\seealso{
Other functions to manage NocoDB base visibility rules (UI ACL):
\code{\link{base_ui_acl}()}

Other functions to manage NocoDB table views:
\code{\link{base_ui_acl}()},
\code{\link{tbl_view_id}()},
\code{\link{tbl_views}()}

Other functions to manage NocoDB bases:
\code{\link{base}()},
\code{\link{base_id}()},
\code{\link{base_ui_acl}()},
\code{\link{base_users}()},
\code{\link{bases}()},
\code{\link{create_base}()},
\code{\link{delete_base}()},
\code{\link{delete_base_user}()},
\code{\link{invite_base_user}()},
\code{\link{resend_base_user_invitation}()},
\code{\link{update_base}()},
\code{\link{update_base_user}()}
}
\concept{bases}
\concept{ui_acl}
\concept{views}
