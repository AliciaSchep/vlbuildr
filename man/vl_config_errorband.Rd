% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz_autogen_api.R
\name{vl_config_errorband}
\alias{vl_config_errorband}
\title{vl_config_errorband}
\usage{
vl_config_errorband(
  spec,
  .object = NULL,
  band = NULL,
  borders = NULL,
  extent = NULL,
  interpolate = NULL,
  tension = NULL
)
}
\arguments{
\item{spec}{An input vega-lite spec}

\item{.object}{Directly input an object, rather than creating one via the other arguments. Should not be used in conjunction with the other arguments other than 'spec'. Objects can be of type: ErrorBandConfig}

\item{band}{boolean

Or: MarkConfig<ExprOrSignalRef>}

\item{borders}{boolean

Or: MarkConfig<ExprOrSignalRef>}

\item{extent}{The extent of the band. Available options include: - \code{"ci"}: Extend the band
to the confidence interval of the mean. - \code{"stderr"}: The size of band are set
to the value of standard error, extending from the mean. - \code{"stdev"}: The size
of band are set to the value of standard deviation, extending from the mean. -
\code{"iqr"}: Extend the band to the q1 and q3.

\strong{Default value:} \code{"stderr"}.}

\item{interpolate}{The line interpolation method for the error band. One of the following: -
\code{"linear"}: piecewise linear segments, as in a polyline. - \code{"linear-closed"}:
close the linear segments to form a polygon. - \code{"step"}: a piecewise constant
function (a step function) consisting of alternating horizontal and vertical
lines. The y-value changes at the midpoint of each pair of adjacent x-values.
\itemize{
\item \code{"step-before"}: a piecewise constant function (a step function) consisting
of alternating horizontal and vertical lines. The y-value changes before the
x-value. - \code{"step-after"}: a piecewise constant function (a step function)
consisting of alternating horizontal and vertical lines. The y-value changes
after the x-value. - \code{"basis"}: a B-spline, with control point duplication
on the ends. - \code{"basis-open"}: an open B-spline; may not intersect the
start or end. - \code{"basis-closed"}: a closed B-spline, as in a loop. -
\code{"cardinal"}: a Cardinal spline, with control point duplication on the ends.
\item \code{"cardinal-open"}: an open Cardinal spline; may not intersect the start or
end, but will intersect other control points. - \code{"cardinal-closed"}: a closed
Cardinal spline, as in a loop. - \code{"bundle"}: equivalent to basis, except the
tension parameter is used to straighten the spline. - \code{"monotone"}: cubic
interpolation that preserves monotonicity in y.
}}

\item{tension}{The tension parameter for the interpolation type of the error band.}
}
\value{
A modified Vega-Lite Spec
}
\description{
Add errorband config (ErrorBandConfig) to a vega-lite spec.
}
