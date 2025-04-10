% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazy.page.break.R
\name{lazy.page.break}
\alias{lazy.page.break}
\title{Start New Page in LaTeX}
\usage{
lazy.page.break()
}
\description{
Insert code to start a new page in a document
}
\details{
For HTML documents, page breaks will not show up in the browser, 
but will show up when printed.
}
\examples{
\dontrun{
lazy.write(
lazy.file.start(),
lazy.text("First we type something on the first page"),
lazy.page.break(),
lazy.text("Then we type something on the second page"),
lazy.file.end(),
OutFile="Example 1.tex")

unlink("Example 1.tex")
}
}
\author{
Benjamin Nutter
}
