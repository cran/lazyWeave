% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazy.file.start.R
\name{lazy.file.start}
\alias{lazy.file.start}
\title{Initiate New LaTeX, HTML, or Markdown Files}
\usage{
lazy.file.start(
  docClass = "article",
  packages = NULL,
  counters = NULL,
  layout = "",
  page = "arabic",
  ligatures = TRUE,
  title = NULL,
  author = NULL,
  date = "",
  initialize = TRUE
)
}
\arguments{
\item{docClass}{a character string giving a valid LaTeX document 
class. For example, \code{article}, \code{slide}, \code{report}, 
\code{book}}

\item{packages}{A character vector of additional LaTeX packages to use}

\item{counters}{A character vector of additional counters to initialize}

\item{layout}{LaTeX code for page layout.  Remember to escape backslashes!}

\item{page}{A character string denoting the page numbering style.  Options
are \code{"arabic", "roman", "Roman", "alph", "Alph"}.}

\item{ligatures}{Determines if ligatures are enabled.  See the references for a link about ligatures}

\item{title}{A title for the document}

\item{author}{Author of the document}

\item{date}{Date to be printed on the title page}

\item{initialize}{For HTML and markdow files and when \code{TRUE}, 
the function \code{lazy.options} is called and 
all of the counters are reset to 1.  Font, family, and size 
defaults are also reset}
}
\description{
Write code to open a new LaTeX document with 
  packages, classes, a title, and page settings
}
\details{
Titles are only made when either \code{title} or \code{author} are 
not \code{NULL}.  

Packages automatically included are "xcolor", "graphicx", "colortbl", "float",
"soul", "hyperref", "placeins", and "Sweave".  Any user 
defined templates made in conjuction with \code{lazyWeave} must include these
packages in order to use figures and underlined text.

With \code{page}, the options produce the following:
\tabular{ll}{
  arabic \tab Arabic numbers\cr
  roman  \tab Lower case roman numerals (i, ii, iii, ...)\cr
  Roman  \tab Upper case roman numerals (I, II, III, ...)\cr
  alph   \tab Lower case alphabetic ordering (a, b, c, ...)\cr
  Alph   \tab Upper case alphabetic ordering (A, B, C, ...)\cr
}
}
\examples{

#* lazy.file.start does not currently work with markdown documents
#* First, we set the lazyReportFormat option to "latex"
orig_option <- getOption("lazyReportFormat")
options(lazyReportFormat="latex")
lazy.file.start(docClass="report", 
  packages=c("pslatex", "palatino", "avant"),
  title="Report Name", author="Your Name")
 
#* Return the original option setting
options(lazyReportFormat=orig_option)
  
}
\references{
Ligatures: \url{https://en.wikibooks.org/wiki/LaTeX/Text_Formatting#Ligatures}
}
\author{
Benjamin Nutter
}
