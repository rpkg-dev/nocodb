% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nocodb.gen.R
\name{api_tokens}
\alias{api_tokens}
\title{List NocoDB API tokens}
\usage{
api_tokens(
  origin = funky::config_val("origin"),
  email = funky::config_val("email", require = TRUE),
  password = funky::config_val("password", require = TRUE)
)
}
\arguments{
\item{origin}{\code{\link[base:character]{character(1)}}\cr
NocoDB server \href{https://developer.mozilla.org/docs/Glossary/Origin}{origin}.}

\item{email}{\code{\link[base:character]{character(1)}}\cr
E-mail address of the NocoDB user to authenticate with.}

\item{password}{\code{\link[base:character]{character(1)}}\cr
Password of the NocoDB user to authenticate with.}
}
\value{
A \link[tibble:tbl_df-class]{tibble}.
}
\description{
Returns a \link[tibble:tbl_df-class]{tibble} with metadata about all API tokens the authenticating user has access to on a NocoDB server from its
\href{https://docs.nocodb.com/0.109.7/developer-resources/rest-apis/#meta-apis}{\code{GET /api/v1/tokens}} API endpoint.
}
\details{
This API endpoint does not support authentication via \href{https://docs.nocodb.com/account-settings/api-tokens/}{API tokens}.
}
\seealso{
Other functions to manage NocoDB API tokens:
\code{\link{create_api_token}()},
\code{\link{delete_api_token}()}

Other functions to manage NocoDB authentication:
\code{\link{assert_super_admin}()},
\code{\link{create_api_token}()},
\code{\link{delete_api_token}()},
\code{\link{is_signed_in}()},
\code{\link{is_super_admin}()},
\code{\link{refresh_sign_in}()},
\code{\link{req_auth}()},
\code{\link{sign_in}()},
\code{\link{sign_out}()},
\code{\link{sign_up_user}()}
}
\concept{api_tokens}
\concept{auth}
