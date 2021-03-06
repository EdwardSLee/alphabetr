% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chain_scores.R
\name{chain_scores}
\alias{chain_scores}
\title{Calculate association scores between alpha and beta chain pairs.}
\usage{
chain_scores(data_a, data_b)
}
\arguments{
\item{data_a}{Matrix recording which alpha chains appear in each well of the
data. See \code{\link{create_clones}}.}

\item{data_b}{Matrix recording which beta chains appear in the each well of the
data. See \code{\link{create_clones}}.}
}
\value{
A list containing the alpha and beta association scores. Accessed
   with \code{list$ascores} and \code{list$bscores} respectively.
}
\description{
\code{chain_scores()} calculates association scores between every pair of
   alpha and beta chains based on the number of concurrent well appearances
   each alpha and beta pair makes, scaled inversely by the number of unique
   chains in that well. See Lee et. al. for more information about this
   procedure.
}
\examples{
 # see the help for create_clones() and create_data()
 clones <- create_clones(numb_beta = 1000,
                         dual_alpha = .3,
                         dual_beta  = .06,
                         alpha_sharing = c(0.80, 0.15, 0.05),
                         beta_sharing  = c(0.75, 0.20, 0.05))
 dat <- create_data(clones$TCR, plate = 5,
                    error_drop = c(.15, .01),
                    error_seq  = c(.05, .001),
                    error_mode = c("lognormal", "lognormal"),
                    skewed = 10,
                    prop_top = 0.6,
                    dist = "linear",
                    numb_cells = matrix(c(50, 480), ncol = 2))

 #this is done internally in bagpipe()
 scores <- chain_scores(data_a = dat$alpha, data_b = dat$beta)
 scores <- scores$ascores + t(scores$bscores)

}

