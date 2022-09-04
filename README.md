
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

# Getting started

Install and load `enRich`

``` r
library(enRich)
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

# **Step 1**: Importing Sequences

The function `testFASTA()` allows us to create a dummy FASTA for
testing. You must specify the following arguments:

``` r
testFASTA(
  seqlength = c(75,100), # minimum and maximum sequence length range
  DNA_prob = rep(0.25,4), # relative freq of A, T, G, C
  no_seqs = 10, # how many sequences to simulate
  out.fasta = TRUE, #TRUE if you want to save a .fasta file to your computer
  file_name = "dsi", #only specify if out.fasta=TRUE
  loc = "LocusX" # locus name
)
```

When working with real data you will likely need to import a file from
your computer into R. This can be done easily using `readFASTA()`

For simplicity, we will just read in the dummy FASTA we just created
with `testFASTA()`. But in practice you can read in an FASTA file
downloaded from NCBI, custom created, etc.

``` r
dsi<-readFASTA("dsi.fasta")
```

Running either `testFASTA()` or `readFASTA()` results in a dataframe
with two columns. The first column is the sequence name (header) and the
second column is the sequence itself. For example, the our test FASTA
saved as `dsi.fasta` appears as:

``` r
#               seqid                                                                                               seqstr
# 1   Sample_1_LocusX      GTCTGGCGTATGTCATAGACCGTAAACTCTTCTACCCCCTTCTAGACATATGTTGCGACACCCTACGGCACTGTCTGGATGAGGGCCACGAAAGG
# 2   Sample_2_LocusX          GCACACCGCTGTGCGTGTTCTTTCATCGAATGCTGAGATCCCTCGAAGTTGCCCTGCCAAAGCGTGCCCCACCTACCCCTAGTGTGACAAT
# 3   Sample_3_LocusX   AAAGTCAATTGTTCAGTCTACCCCCTGCTGTTGGTCGTTGAGTTACTTTGATAGTGGAGATGTACGGCAATAAGTGTCATTGTATGATAACGAGCTAG
# 4   Sample_4_LocusX                       AATGCCTGAGCAAGGATCGATGAAGGACCCAATAGACTCGGCAACGACCCGGGATTCTACCCACACATCCTGTGGGTT
# 5   Sample_5_LocusX                 TTCATCTTTCACCCAAGTAAATGGTAAATGTAGCATCTTGCAACTTTATCTTGAGTGGCGAGGTATATGCAGTGTTGTTTTTGC
# 6   Sample_6_LocusX           GTGAGGGTACTATTCGAGGTTCAACAATCGCGAGCCGCTTCAGCCCCAGCAATCCCGTTTGGGAGCGACTCGCGCTCGGGAAGATAGCGA
# 7   Sample_7_LocusX                         AAGCCCGTCTTATTCGCATCAAACCAAGCGAATTTACTGGTTCACGCATCATTCTGGTCATGCGAGTCCTGAACTA
# 8   Sample_8_LocusX     ACTCTTGCGCGGCGAGAATTTCTGGTGCAGTGCGGAGAAGCACAGCCCAACCCGTCCTCCGTAAAATGTACAGTAGGGGTAGTGGTTTCTTCGCTC
# 9   Sample_9_LocusX TAAGGGCAGGCAGATTACACTCCAAAAGAGATGTGTACAGCCTTGCAGCTTCTCCCTCGCCGTAACTACAGATGGAGCCCATGTGCGCCCACTTGATCCT
# 10 Sample_10_LocusX  GATGGCGCGAAAGAGCTGGGAATTCAAACGCGCAAATCACCACTGACTGTCAGTTCAACTGAAAGGCCTAAAAGCGATGACTAATGCGATAGGCTCAAA
```
