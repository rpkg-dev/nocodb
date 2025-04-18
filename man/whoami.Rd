% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{whoami}
\alias{whoami}
\title{Get NocoDB user info}
\usage{
whoami(
  origin = funky::config_val("origin"),
  email = funky::config_val("email"),
  password = funky::config_val("password"),
  api_token = NULL,
  auth = TRUE
)
}
\arguments{
\item{origin}{\code{\link[base:character]{character(1)}}\cr
NocoDB server \href{https://developer.mozilla.org/docs/Glossary/Origin}{origin}.}

\item{email}{\code{\link[base:character]{character(1)}}\cr
E-mail address of the NocoDB user to authenticate with.}

\item{password}{\code{\link[base:character]{character(1)}}\cr
Password of the NocoDB user to authenticate with.}

\item{api_token}{\code{\link[base:character]{character(1)}}\cr
NocoDB \href{https://docs.nocodb.com/account-settings/api-tokens/}{API token}. Takes precedence over \code{email} and \code{password} if provided.}

\item{auth}{\code{\link[base:logical]{logical(1)}}\cr
Whether or not to include an \link[=req_auth]{authentication header} in the HTTP request.}
}
\value{
A \link[tibble:tbl_df-class]{tibble} with metadata about the specified NocoDB user.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} with metadata about the specified user from a NocoDB server via its
\href{https://data-apis-v1.nocodb.com/#tag/Auth/operation/auth-me}{\code{GET /api/v1/auth/user/me}} API endpoint.
}
\details{
The user is determined based on \code{api_token} or \code{email} and \code{password} (the former takes precedence). The returned columns differ between the two modes of authentication.

The API endpoint does not require authentication. If an invalid \code{api_token} is provided, the request still succeeds and generic data for a \code{guest} user is
returned, same as for \code{auth = FALSE}.
}
\seealso{
Other functions to manage NocoDB users:
\code{\link{add_user}()},
\code{\link{base_users}()},
\code{\link{delete_base_user}()},
\code{\link{delete_user}()},
\code{\link{invite_base_user}()},
\code{\link{invite_user}()},
\code{\link{resend_base_user_invitation}()},
\code{\link{sign_up_user}()},
\code{\link{update_base_user}()},
\code{\link{update_user}()},
\code{\link{user_id}()},
\code{\link{users}()},
\code{\link{validate_user_email}()}
}
\concept{users}
