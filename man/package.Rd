\name{BSgenome.Cporcellus.UCSC.cavPor3}
\docType{package}

\alias{BSgenome.Cporcellus.UCSC.cavPor3-package}
\alias{BSgenome.Cporcellus.UCSC.cavPor3}
\alias{Cporcellus}

\title{Full genome sequences for Cavia porcellus (UCSC version cavPor3)}

\description{
  Full genome sequences for Cavia porcellus (Guinea pig) as provided by UCSC (cavPor3)
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
cavPor3.2bit from https://hgdownload.soe.ucsc.edu/goldenPath/cavPor3/bigZips/
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{Sarah McClymont}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Cporcellus.UCSC.cavPor3
genome <- BSgenome.Cporcellus.UCSC.cavPor3
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
