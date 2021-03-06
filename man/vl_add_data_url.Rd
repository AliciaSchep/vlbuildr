% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chart.R
\name{vl_add_data_url}
\alias{vl_add_data_url}
\title{vl_add_data_url}
\usage{
vl_add_data_url(spec, url, ...)
}
\arguments{
\item{spec}{An input vega-lite spec}

\item{url}{Data frame with data to add to chart}

\item{...}{Additional arguments to pass to \code{\link[=vl_add_data]{vl_add_data()}}, such as \code{name} or \code{format}}
}
\value{
A modified Vega-Lite Spec
}
\description{
Add data in the form of a url
}
\examples{

vl_chart() \%>\%
  vl_add_data_url("https://vega.github.io/vega-editor/app/data/movies.json") \%>\%
  vl_encode_x(field = "IMDB_Rating", type = "quantitative") \%>\%
  vl_encode_y(type = "quantitative", aggregate = "count") \%>\%
  vl_bin_x(maxbins = 10) \%>\%
  vl_mark_bar()
}
\seealso{
\code{\link[=vl_add_data]{vl_add_data()}}
}
