% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setHtmlOptions.R
\name{setHtmlOptions}
\alias{setHtmlOptions}
\title{lazyWeave HTML Report Options}
\usage{
setHtmlOptions(
  table = NULL,
  figure = NULL,
  footnote = NULL,
  chapter = NULL,
  section = NULL,
  subsection = NULL,
  subsubsection = NULL,
  font.family = NULL,
  font = NULL,
  font.size = NULL
)
}
\arguments{
\item{table}{Sets the HTML table counter}

\item{figure}{Sets the HTML figure counter}

\item{footnote}{Sets the HTML footnote counter}

\item{chapter}{Sets the HTML chapter counter}

\item{section}{Sets the HTML section counter}

\item{subsection}{Sets the HTML section counter}

\item{subsubsection}{Sets the HTML subsubsection counter}

\item{font.family}{Sets the HTML font family}

\item{font}{Sets the HTML font}

\item{font.size}{Sets the HTML font size}
}
\description{
Sets or changes options for report counters, font, font size, 
  and footnotes.  The counter options apply to HTML and Markdown documents,
  and the font options only apply to HTML.
}
\details{
For all arguments, a value of \code{NULL} results in no action.

The HTML counters are used to maintain a somewhat consistent appearance 
between HTML and LaTeX reports.  Since HTML doesn't have counters, a series 
of variables is inserted into the Global Environment.  These are hidden 
from view and are incremented automatically by   \code{lazyWeave} function.  
Manipulating these variables directly is strongly discouraged.  They can 
all be managed by \code{lazy.counter}.

\code{setHtmlOptions} is a convenience function that can change all of the 
global variables simultaneously (as opposed to repeated calls to 
\code{lazy.counter}).  However, this is the recommended way to change 
font family, font, and font size.

To change the report format, use the code 
\code{options(lazyReportFormat = "latex")}, 
\code{options(lazyReportFormat = "html")} or,
\code{options(lazyReportFormat = "markdown")}
}
\author{
Benjamin Nutter
}
