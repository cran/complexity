\name{complexity}
\alias{complexity}
\title{Complexity}
\description{
Calculates the complexity for the hypothesis of interest.}
\usage{
complexity(npar,\dots)
}
\arguments{
\item{npar}{a value indicating the number of parameters}
\item{\dots}{an unlimited amount of pairs of parameter indicators that represent constraints,
where the first parameter indicator is constrained to be lower than the second parameter indicator.}
}
\value{
A print of the following:
\item{true permutations}{ a print of the permutations in line with the constraints }
\item{total number of permutations}{ the total number of permutations }
\item{number true}{ the number of true permutations }
\item{complexity (proportion)}{ the complexity, that is: the proportion of true permutations }
}
\examples{
complexity(4,1,2,2,3,3,4)
}
\keyword{htest}
