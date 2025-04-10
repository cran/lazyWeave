% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lazy.toc.R
\name{lazy.toc}
\alias{lazy.toc}
\title{Table of Contents and Other Lists}
\usage{
lazy.toc(
  type = c("contents", "figures", "tables"),
  add = FALSE,
  desc = "",
  withPage = TRUE,
  sec_unit = c("chapter", "section", "subsection", "subsubsection", "part")
)
}
\arguments{
\item{type}{Type of list to be printed or edited}

\item{add}{Determines if the list is printed or if an entry is added to the list}

\item{desc}{Only used when \code{add=TRUE}.  Gives the descriptive text of 
the item being added to the list}

\item{withPage}{Determines if the page number of the entry is printed in the 
table of contents. Only used when \code{add=TRUE}.}

\item{sec_unit}{Specifies the format for the new entry. For instance, will 
the new entry in the table of contents appear as a chapter, section, or 
subsection.  Used only when \code{withPage=TRUE}.}
}
\value{
Returns a string that designating that the table of contents is to 
be written, or an item to be added to a list.  This has no effect for HTML 
documents
}
\description{
Designates the printing of a table of contents, list of 
figures, or list of tables.  Also provides functionality to manually edit
the contents of these lists
}
\details{
The level of detail a table of contents maintains is determined by 
the counter \code{tocdepth}.  In most cases, it is set to 3, giving chapter, 
section, and subsection.  To include subsubsections, it would be necessary to 
include \code{lazy.counter("tocdepth", value=4, fn="set")}.  
Use \code{value=5} to include paragraphs, and so forth.
}
\examples{
lazy.toc()
lazy.toc("figures")
lazy.toc("tables", TRUE, "A brief description of the table")
lazy.toc("contents", TRUE, "Subsection 3", sec_unit="subsection")

}
\author{
Benjamin Nutter
}
