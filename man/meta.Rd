% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meta.R
\name{meta}
\alias{meta}
\title{Constructor function for metadata nodes}
\usage{
meta(property = character(0), content = character(0), rel = character(0),
  href = character(0), datatype = character(0), id = character(0),
  type = character(0), children = list())
}
\arguments{
\item{property}{specify the ontological definition together with it's namespace, e.g. dc:title}

\item{content}{content of the metadata field}

\item{rel}{Ontological definition of the reference provided in href}

\item{href}{A link to some reference}

\item{datatype}{optional RDFa field}

\item{id}{optional id element (otherwise id will be automatically generated).}

\item{type}{optional xsi:type.  If not given, will use either "LiteralMeta" or "ResourceMeta" as 
determined by the presence of either a property or a href value.}

\item{children}{Optional element containing any valid XML block (XMLInternalElementNode class, see the XML package for details).}
}
\description{
Constructor function for metadata nodes
}
\details{
User must either provide property+content or rel+href.  Mixing these will result in potential garbage. 
The datatype attribute will be detected automatically from the class of the content argument.  Maps from R class
to schema datatypes are as follows: 
character - xs:string, 
Date - xs:date,
integer - xs:integer,
numeric - xs:decimal,
logical - xs:boolean
}
\examples{
meta(content="example", property="dc:title")
}
\seealso{
\code{\link{nexml_write}}
}
