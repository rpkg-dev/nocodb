% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{update_app_settings}
\alias{update_app_settings}
\title{Update NocoDB app settings}
\usage{
update_app_settings(
  invite_only_signup = NULL,
  origin = funky::config_val("origin"),
  email = funky::config_val("email", require = TRUE),
  password = funky::config_val("password", require = TRUE),
  quiet = FALSE
)
}
\arguments{
\item{invite_only_signup}{\code{\link[base:logical]{logical(1)}}\cr
Whether or not to \href{https://docs.nocodb.com/account-settings/oss-specific-details/#enable--disable-signup}{restrict sign-up of new NocoDB users to invitees only}.}

\item{origin}{\code{\link[base:character]{character(1)}}\cr
NocoDB server \href{https://developer.mozilla.org/docs/Glossary/Origin}{origin}.}

\item{email}{\code{\link[base:character]{character(1)}}\cr
E-mail address of the NocoDB user to authenticate with.}

\item{password}{\code{\link[base:character]{character(1)}}\cr
Password of the NocoDB user to authenticate with.}

\item{quiet}{\code{\link[base:logical]{logical(1)}}\cr
Whether or not to suppress printing status output from internal processing.}
}
\value{
\code{NULL}, invisibly.
}
\description{
Updates the application settings of a NocoDB server via its
\href{https://docs.nocodb.com/0.109.7/developer-resources/rest-apis/#meta-apis}{\code{POST /api/v1/app-settings}} API endpoint.
}
\details{
This API endpoint does not support authentication via \href{https://docs.nocodb.com/account-settings/api-tokens/}{API tokens}.

Only the super admin user is allowed to use this API endpoint, i.e. the provided credentials must belong to them.
}
\seealso{
Other functions to manage NocoDB's application settings:
\code{\link{app_settings}()}
}
\concept{app_settings}
