% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_tree.r
\name{read_tree}
\alias{read_tree}
\title{Read a newick formatted phylogenetic tree.}
\usage{
read_tree(newick, underscores = FALSE)
}
\arguments{
\item{newick}{Input data as either a file path, URL, or Newick string.
Compressed (gzip or bzip2) files are also supported.}

\item{underscores}{If \code{TRUE}, underscores in unquoted names will remain
underscores. If \code{FALSE}, underscores in unquoted named will be
converted to spaces.}
}
\value{
A \code{phylo} class object representing the tree.
}
\description{
A phylogenetic tree is required for computing UniFrac distance matrices.
You can load a tree from a file or by providing the tree string directly.
This tree must be in Newick format, also known as parenthetic format and
New Hampshire format.
}
\examples{
    tree <- read_tree("
        (A:0.99,((B:0.87,C:0.89):0.51,(((D:0.16,(E:0.83,F:0.96)
        :0.94):0.69,(G:0.92,(H:0.62,I:0.85):0.54):0.23):0.74,J:0.1
        2):0.43):0.67);")
    class(tree)

}
