% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{sign_up_user}
\alias{sign_up_user}
\title{Sign up NocoDB user}
\usage{
sign_up_user(
  user_email,
  user_password,
  invite_token = NULL,
  subscribe_to_newsletter = FALSE,
  origin = funky::config_val("origin"),
  email = funky::config_val("email"),
  password = funky::config_val("password"),
  api_token = funky::config_val("api_token")
)
}
\arguments{
\item{user_email}{\code{\link[base:character]{character(1)}}\cr
E-mail address of the user to sign up.}

\item{user_password}{\code{\link[base:character]{character(1)}}\cr
Password of the user to sign up.}

\item{invite_token}{\code{\link[base:character]{character(1)}}\cr
Invite token of the user to sign up.}

\item{subscribe_to_newsletter}{\code{\link[base:logical]{logical(1)}}\cr
Whether or not to subscribe the signed up user to the NocoDB newsletter.}

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
The generated access token for the signed up user as a character scalar, invisibly.
}
\description{
Signs up the specified user on a NocoDB server via its \href{https://data-apis-v1.nocodb.com/#tag/Auth/operation/auth-signup}{\code{POST /api/v1/auth/user/signup}} API
endpoint.

If sign-up is \href{https://docs.nocodb.com/account-settings/oss-specific-details/#enable--disable-signup}{restricted to invitees only}, the user must
have been invited before (via \code{\link[=invite_user]{invite_user()}} or \code{\link[=invite_base_user]{invite_base_user()}}) and an \code{invite_token} must be provided. Otherwise, the user is created straightaway
(with the \href{https://docs.nocodb.com/collaboration/oss-specific-details/#organisation-level-permissions}{\code{"org-level-viewer"} role} assigned).
}
\section{API errors}{
\itemize{
\item If you \emph{did} provide an \code{invite_token} and encounter a \strong{\verb{Not allowed to signup}} error, it means the provided \code{user_email} does not match the
\code{invite_token}.
\item If you did \emph{not} provide an \code{invite_token} and encounter a \strong{\verb{Not allowed to signup}} error, it means sign-up of new users is \href{https://docs.nocodb.com/account-settings/oss-specific-details/#enable--disable-signup}{restricted to invitees only}.
\item If you encounter an \strong{\verb{Invalid invite url}} error, it means the provided \code{invite_token} is either invalid or has already been used to sign up.
}
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
\code{\link{update_base_user}()},
\code{\link{update_user}()},
\code{\link{user_id}()},
\code{\link{users}()},
\code{\link{validate_user_email}()},
\code{\link{whoami}()}

Other functions to manage NocoDB authentication:
\code{\link{api_tokens}()},
\code{\link{assert_super_admin}()},
\code{\link{create_api_token}()},
\code{\link{delete_api_token}()},
\code{\link{is_signed_in}()},
\code{\link{is_super_admin}()},
\code{\link{refresh_sign_in}()},
\code{\link{req_auth}()},
\code{\link{sign_in}()},
\code{\link{sign_out}()}
}
\concept{auth}
\concept{users}
