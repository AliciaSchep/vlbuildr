% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{create_api}
\alias{create_api}
\title{Create API based on Vega-Lite schema}
\usage{
create_api(schema)
}
\arguments{
\item{schema}{A JSON schema read into R as a list, e.g using [jsonlite::read_json()]}
}
\value{
A character vector with function definitions
}
\description{
Will auto-generate function definitions & documentation based on provided schema.
}
\examples{

schema_file <- Sys.glob(
    file.path(system.file("schema/vega-lite", package = "vegawidget"),
             "*.json")
 )
VL_SCHEMA <- jsonlite::read_json(schema_file)
api <- create_api(VL_SCHEMA)
}
