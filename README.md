
<!-- README.md is generated from README.Rmd. Please edit that file -->

# enRich

<!-- badges: start -->
<!-- badges: end -->

enrichR is a simple R package designed to interface with the Local
Contexts Hub API.

## Installation

You can install the development version of enRich from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("jacobgolan/enRich")
```

## Getting started

Install and load `enrichR`

``` r
library(enRich)
## basic example code
```

`enRich` is a simple and easy to use package. Here is an index of its
key functions:

``` r
?index.all.projects() # create a table of all projects in the LC Hub

?find.project.id() #search for a project's unique ID

?find.projects() #find and retrieve projects' metadata, notices and TK/BC labels

?readFASTA() #import a FASTA file into R

?outputFASTA() #export a FASTA file from R

?testFASTA() #create a dummy FASTA for learning
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
