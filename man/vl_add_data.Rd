% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz_autogen_api.R
\name{vl_add_data}
\alias{vl_add_data}
\title{vl_add_data}
\usage{
vl_add_data(
  spec,
  .object = NULL,
  values = NULL,
  format = NULL,
  name = NULL,
  url = NULL,
  graticule = NULL,
  sequence = NULL,
  sphere = NULL
)
}
\arguments{
\item{spec}{An input vega-lite spec}

\item{.object}{Directly input an object, rather than creating one via the other arguments. Should not be used in conjunction with the other arguments other than 'spec'. Objects can be of type: UrlData, InlineData, NamedData, SequenceGenerator, SphereGenerator or GraticuleGenerator}

\item{values}{The full data set, included inline. This can be an array of objects or primitive
values, an object, or a string. Arrays of primitive values are ingested as
objects with a \code{data} property. Strings are parsed according to the specified
format type.}

\item{format}{An object that specifies the format for parsing the data.}

\item{name}{Provide a placeholder name and bind data at runtime.}

\item{url}{An URL from which to load the data set. Use the \code{format.type} property to ensure
the loaded data is correctly parsed.}

\item{graticule}{Generate graticule GeoJSON data for geographic reference lines.}

\item{sequence}{Generate a sequence of numbers.}

\item{sphere}{Generate sphere GeoJSON data for the full globe.}
}
\value{
A modified Vega-Lite Spec
}
\description{
Add data to a vega-lite spec
}
