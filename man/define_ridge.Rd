% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/define_penalty.R
\name{define_ridge}
\alias{define_ridge}
\title{Define ridge regularization object for predictor and external data}
\usage{
define_ridge(
  num_penalty = 20,
  penalty_ratio = NULL,
  user_penalty = NULL,
  custom_multiplier = NULL
)
}
\arguments{
\item{num_penalty}{number of penalty values to fit in grid. Default is 20.}

\item{penalty_ratio}{ratio between minimum and maximum penalty for x.
Default is 1e-04 if \eqn{n > p} and 0.01 if \eqn{n <= p}.}

\item{user_penalty}{user-defined vector of penalty values to use in penalty path.}

\item{custom_multiplier}{variable-specific penalty multipliers to apply to overall penalty.
Default is 1 for all variables. 0 is no penalization.}
}
\value{
A list object with regularization settings that are used to define the regularization
for predictors or external data in \code{\link{xrnet}} and \code{\link{tune_xrnet}}. The list
elements will match those returned by \code{\link{define_penalty}}, but with the penalty_type
automatically set to 0.
}
\description{
Helper function to define a ridge penalty regularization object.
See \code{define_penalty} for more details.
}
