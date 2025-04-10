% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazy.page.number.R
\name{lazy.page.number}
\alias{lazy.page.number}
\title{Change Page Numbering}
\usage{
lazy.page.number(num_style = c("arabic", "roman", "Roman", "alph", "Alph"))
}
\arguments{
\item{num_style}{A character(1) giving the numbering style for the page}
}
\description{
Allows page numbering style to be changed.  For instance, 
from roman numerals in an introduction to arabic numbers in the body of a 
report
}
\details{
Each time the page numbering is changed, the page counter is 
reset to 0 (meaning the next page will be numbered 1).  If the number
needs to be preserved, this can be done using \code{lazy.counter} with
 \code{counter="page"}.
}
\examples{
lazy.page.number("Roman")

}
\author{
Benjamin Nutter
}
