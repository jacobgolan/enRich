#' Generate test FASTAs or sequences
#'
#' If out.fasta is TRUE a dummy fasta file will be written
#' If out.fasta is FALSE a test df of seqs will be created
#'
#' @param file_name name of FASTA file to write if out.fasta is TRUE
#' @param seqlength vector of length 2 specifying the min and max seq length range
#' @param DNA_prob a vector of length 4 specifying the probabilities of nucleotides A, T, G, and C
#' @param no_seqs the number of sequences to simulate
#' @param out.fasta whether to write a FASTA file or output a df of seqs
#' @param loc name of locus
#' @return A matrix of the infile
#' @export
#' @example
#' testFASTA("test",100, 1000, c(0.25,0.25,0.25,0.25), 3, out.fasta = F)
testFASTA<-function(file_name,
                     seqlength,
                     DNA_prob,
                     no_seqs,
                     out.fasta,
                     loc){
  if(out.fasta==T){
    tmp<-data.frame(seqid=rep(NA,no_seqs), seqstr=rep(NA,no_seqs))
    for (i in 1:no_seqs) {
      seq_length = sample(seqlength[1]:seqlength[2], 1)
      tmp$seqid[i] = paste("Sample", i,loc, sep="_")
      tmp$seqstr[i] = paste(sample(c("A","T","G","C"),
                                   seq_length,
                                   replace=TRUE,
                                   prob=DNA_prob),
                            collapse = "")
    }
    seqinr::write.fasta(sequences=as.list(tmp$seqstr),
                        names=as.list(tmp$seqid),
                        file.out=paste(file_name, ".fasta", sep=""),
                        open = "w",
                        nbchar = 50,
                        as.string = TRUE)
  }else{
    tmp<-data.frame(seqid=rep(NA,no_seqs), seqstr=rep(NA,no_seqs))
    for (i in 1:no_seqs) {
      seq_length = sample(seqlength[1]:seqlength[2], 1)
      tmp$seqid[i] = paste("Sample", i,loc, sep="_")
      tmp$seqstr[i] = paste(sample(c("A","T","G","C"),
                                   seq_length,
                                   replace=TRUE,
                                   prob=DNA_prob),
                            collapse = "")
    }
    return(tmp)
  }
}

