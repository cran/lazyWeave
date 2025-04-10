% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mantel.test.R
\name{mantel.test}
\alias{mantel.test}
\title{Mantel-Haenszel test for two-way tables}
\usage{
mantel.test(
  x,
  byVar,
  row.scores = c("equal", "midrank"),
  col.scores = c("equal", "midrank")
)
}
\arguments{
\item{x}{Either a vector of data or a two way table. If a vector is given, 
it should be a factor variable}

\item{byVar}{If \code{x} is a vector, then \code{byVar} is a factor variable 
to be tabulated against \code{x}.}

\item{row.scores}{choice of scores for the row variable.  May be "equal", 
"midrank", or user defined.}

\item{col.scores}{Choice of scores for the column variable.  May be "equal", 
"midrank", or user defined.}
}
\value{
Returns an object of type htest.
  \item{statistic}{M^2, a Chi-square statistic with 1 degree of freedom.}
  \item{parameter}{degrees of freedom for M^2}
  \item{p.value}{p-value for the test}
  \item{method}{Type of test performed.}
  \item{correlation}{correlation coefficient of linear trend}
}
\description{
Performs a Mantel-Haenszel test for linear trend in two way tables
}
\details{
Currently, there is no check to ensure that either variables 
submitted are factors.

Data should be ordinal.  Nominal data may not have any practical meaning in 
this test.  Sometimes, when a nominal variable has only two levels, this 
test may still be appropriate, i.e. Yes vs. No.

In 2xJ tables, when arbitrary scores (i.e., 0, 1) are applied to the rows 
and midranks applied to the columns, this test is equivalent to the 
Wilcoxon, or Mann-Whitney test.

In Ix2 tables, when monotone scores are applied to the rows and abitrary 
scores applied to the columns, this test is equivalent to the 
Cochran-Armitage test.  See the reference for further details.
}
\examples{
mantel.test(mtcars$gear,mtcars$cyl)

mantel.test(table(mtcars$gear,mtcars$cyl))

mantel.test(table(mtcars$gear,mtcars$cyl), row.scores="midrank")

mantel.test(table(mtcars$gear,mtcars$cyl), col.scores="midrank")
}
\references{
Alan Agresti, 
    \emph{An Introduction to Categorical Data Analysis}, 1996, pp. 34 - 39.
}
