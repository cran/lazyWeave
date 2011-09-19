\name{lazy.write}
\alias{lazy.write}
\title{Output LaTeX Code to a File}
\description{Output text and LaTeX code to a file for building.}
\usage{
lazy.write(..., OutFile, append = FALSE)
}

\arguments{
  \item{\dots}{Strings, expressions, and statements to be written 
    to a .tex file}
  \item{OutFile}{Filename to which the code should be written.}
  \item{append}{logical.  Indicates if the code should be appended to 
    and existing file.}
}
\details{The contents of \code{\dots} will be pasted together.

The Sweave.sty file is copied into the same directory as OutFile.  This 
ensures that the Sweave package is available even when the document is built
in Windows.

  If \code{tex} is given as "file.tex", the working directory will
  need to be pasted to it to create, for example, "C:/..../file.tex".  This
  ensures that the Sweave.sty file is copied to the correct location.  Sadly,
  I haven't figured out a way to automate this decision in a platform 
  independent manner.  For now, the user will need to make this explicit.)}

\author{Benjamin Nutter \email{nutterb@ccf.org}}


\keyword{ methods }

