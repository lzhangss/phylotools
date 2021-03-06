\name{split_dat}
\alias{split_dat}

\title{
grouping the data frame containing sequences and names and generate fasta file
}
\description{
Splite the data frame of sequences based on the reference table of grouping.
}
\usage{
split_dat(dat, ref_table)
}

\arguments{
  \item{dat}{
data frame generated by \code{\link{read.phylip}} or \code{\link{read.fasta}}
}
  \item{ref_table}{
data frame with first column for the name of the sequence, second column for the group the sequence belongs to. 
}
}
\details{
Each group of sequences will be saved to a fasta file. Sequences not included in the ref_table will be saved in "Ungrouped.fasta"
}
\value{
This is a subroutine, there is no return value. 
}
\references{
\url{http://www.genomatix.de/online_help/help/sequence_formats.html}
}
\author{
Jinlong Zhang <jinlongzhang01@gmail.com>
}

\seealso{
\code{\link{rename.fasta}}
}
\examples{

fasta.file <- system.file("/extdata/aligned.fasta", package = "phylotools")
group.file <- system.file("/extdata/sequences.grouping.csv", package = "phylotools")
fasta <- read.fasta(fasta.file)
group <- read.csv(group.file, header = TRUE)
split_dat(fasta, group)

}

\keyword{ fasta }
