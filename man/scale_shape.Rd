\name{scale_shape}
\alias{scale_shape}
\alias{scale_shape_continuous}
\alias{scale_shape_discrete}
\title{Scale for shapes, aka glyphs.}
\usage{
  scale_shape(..., solid = TRUE)

  scale_shape_discrete(..., solid = TRUE)

  scale_shape_continuous(...)
}
\arguments{
  \item{solid}{Are the shapes solid, \code{TRUE}, or hollow
  \code{FALSE}?}

  \item{...}{common discrete scale parameters: \code{name},
  \code{breaks}, \code{labels}, \code{na.value},
  \code{limits} and \code{guide}.  See
  \code{\link{discrete_scale}} for more details}
}
\description{
  A continuous variable can not be mapped to shape.
}
\examples{
dsmall <- diamonds[sample(nrow(diamonds), 100), ]

(d <- qplot(carat, price, data=dsmall, shape=cut))
d + scale_shape(solid = TRUE) # the default
d + scale_shape(solid = FALSE)
d + scale_shape(name="Cut of diamond")
d + scale_shape(name="Cut of\\ndiamond")

# To change order of levels, change order of
# underlying factor
levels(dsmall$cut) <- c("Fair", "Good", "Very Good", "Premium", "Ideal")

# Need to recreate plot to pick up new data
qplot(price, carat, data=dsmall, shape=cut)

# Or for short:
d \%+\% dsmall
}

