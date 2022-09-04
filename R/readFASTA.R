#' import FASTA files
#'
#' This function allows you to import FASTA files into R as a dataframe
#' @param file the name of, and/or path to, your FASTA
#' @return a dataframe of seq headers and associated seq
#' @export

readFASTA<-
  function(file) {
    fasta<-readLines(file)
    ind<-grep(">", fasta)
    s<-data.frame(ind=ind, from=ind+1, to=c((ind-1)[-1], length(fasta)))
    seqs<-rep(NA, length(ind))
    for(i in 1:length(ind)) {
      seqs[i]<-paste(fasta[s$from[i]:s$to[i]], collapse="")
    }
    DF<-data.frame(name=gsub(">", "", fasta[ind]), sequence=seqs)
    return(DF)
  }
