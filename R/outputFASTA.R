#' Append Local Contexts Unique ID to FASTA headers
#'
#' This function writes a FASTA file with Local Contexts Hub Unique ID appended to sequence headers
#'
#' @param seqs sequences of interest
#' @param seqid  original sequence headers
#' @param uqID Local Contexts Hub Unique ID
#' @param filename desired FASTA file name (no .fasta needed)
#' @return A FASTA file with HUB unique ID appended to headers
#' @export

outputFASTA<-function(seqs,seqid, uqID, filename){
  seqinr::write.fasta(sequences=as.list(seqs),
                      names=paste(seqid,"_LocalContexts.HUB.ID:",paste(uqID),sep=""),
                      file.out=paste(filename, ".fasta", sep=""),
                      open = "w",
                      nbchar = 50, #max(unlist(lapply(paste(seqid,"_LocalContexts.HUB.ID:",uqID,sep=""), nchar))),
                      as.string = TRUE)
}
