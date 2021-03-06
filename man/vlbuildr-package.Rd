% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vlbuildr-package.R
\docType{package}
\name{vlbuildr-package}
\alias{vlbuildr}
\alias{vlbuildr-package}
\title{vlbuildr: Build vega-lite specs in R}
\description{
Build vegalite specs in R. Inspired by vegalite package as well as 
  vega-lite-api and altair. Dependent on vegawidget for actually rendering specs!
}
\section{Types of functions}{

This package has three types of functions:
\itemize{
\item \code{vl_chart} initializes a new vega-lite specification which can be build upon.
\item Other \code{vl_} functions which add an object to an initial spec either from a pre-made
input object (to the \code{.object}) parameter or created via the other parameters to the function.
See section below for more details on \code{.object} argument.
\item Functions grouped in \code{vl} list and accessabile via \verb{vl$}.
These functions make an object (which can be added to a spec by a \code{vl_} function). Generally one
does not need to use these functions as object can be created directly via the \code{vl_} functions,
but they can be useful for reusing components across charts or when additional flexibility is needed.
}
}

\section{.object argument}{

Most functions to add a component to a vegalite spec in this package have
as the first two arguments (1) the input spec to add onto, and (2) a \code{.object}
parameter. The \code{.object} argument allows directly passing an object (generally a list) that
will be incorporated into the spec.

Additional arguments are avialable to enable creating an object directly from the
function rather than having to pass it directly via \code{.object}. Generally, these arguments
should not be used if the \code{.object} is provided. Thus if \code{.object} is passed as well as
additional arguments, it is assumed that the \code{.object} input should be taken as the first
optional parameter, and an error is given if the first optional parameter is already given.

For example, if a function \code{vl_add_something} has signature
\code{vl_add_something(spec, .object, x = NULL, y = NULL, z = NULL)}
then if it is called with \code{vl_add_something('hello', z = 'world')} then the \code{'hello'} input
is taken as the input to \code{x}. If \code{x} was already specified, e.g. \code{vl_add_something('hello', x = 'world')}
then an error would be raised.
}

\seealso{
Useful links:
\itemize{
  \item \url{https://vegawidget.github.io/vlbuildr/index.html}
}

}
\author{
\strong{Maintainer}: Alicia Schep \email{aschep@gmail.com}

Authors:
\itemize{
  \item Vega-Lite Developers (The Vega-Lite schema is used to directly populate much of the documentation of this package.)
}

}
\keyword{internal}
