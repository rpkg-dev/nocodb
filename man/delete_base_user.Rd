% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{delete_base_user}
\alias{delete_base_user}
\title{Delete NocoDB base user}
\usage{
delete_base_user(
  id_user,
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
\item{id_user}{NocoDB user identifier as returned by \code{\link[=user_id]{user_id()}}. A character scalar.}

\item{id_base}{NocoDB base identifier as returned by \code{\link[=base_id]{base_id()}}. A character scalar.}

\item{hostname}{NocoDB server \href{https://en.wikipedia.org/wiki/Hostname}{hostname}. A character scalar.}

\item{email}{E-mail address of the NocoDB user to authenticate with.}

\item{password}{Password of the NocoDB user to authenticate with.}

\item{api_token}{NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if
provided.}

\item{quiet}{Whether or not to suppress printing status output from internal processing.}
}
\value{
\code{id_user}, invisibly.
}
\description{
Revokes all privileges from a user in regard to the specified base on a NocoDB server via its
\href{https://meta-apis-v2.nocodb.com/#tag/Auth/operation/auth-base-user-remove}{\code{DELETE /api/v2/meta/bases/{id_base}/users/{id_user}}} API endpoint.
}
\details{
Despite the endpoint name, the user is not actually deleted but is instead revoked any assigned role in regard to \code{id_base}, which has the same effect as
assigning the \code{"no-access"} role.
}
\seealso{
Other functions to manage NocoDB users:
\code{\link{add_user}()},
\code{\link{base_users}()},
\code{\link{delete_user}()},
\code{\link{invite_base_user}()},
\code{\link{invite_user}()},
\code{\link{resend_base_user_invitation}()},
\code{\link{sign_up_user}()},
\code{\link{update_base_user}()},
\code{\link{update_user}()},
\code{\link{user_id}()},
\code{\link{users}()},
\code{\link{validate_user_email}()},
\code{\link{whoami}()}

Other functions to manage NocoDB bases:
\code{\link{base}()},
\code{\link{base_id}()},
\code{\link{base_ui_acl}()},
\code{\link{base_users}()},
\code{\link{bases}()},
\code{\link{create_base}()},
\code{\link{delete_base}()},
\code{\link{invite_base_user}()},
\code{\link{resend_base_user_invitation}()},
\code{\link{update_base}()},
\code{\link{update_base_ui_acl}()},
\code{\link{update_base_user}()}
}
\concept{bases}
\concept{users}
