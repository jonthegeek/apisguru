% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schema_api_version.R
\name{schema_api_versions}
\alias{schema_api_versions}
\title{Description of all version of an API}
\usage{
schema_api_versions(x)
}
\arguments{
\item{x}{A named list of API versions.}
}
\value{
A tibble describing the API versions.
}
\description{
Apply the ApiVersions schema to multiple versions of an API object.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
x <- call_guru_api(path = "/apache.org.json")$apis
names(x)
schema_api_version(x)
\dontshow{\}) # examplesIf}
}
