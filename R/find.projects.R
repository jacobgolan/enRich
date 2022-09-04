#' Pull data on specific project(s) by their unique project id
#'
#' This function loads a file as a matrix. It assumes that the first column
#' contains the rownames and the subsequent columns are the sample identifiers.
#' Any rows with duplicated row names will be dropped with the first one being
#' kept.
#'
#' @param proj project id or list of project ids
#' @return A matrix of the infile
#' @export


# find specific project by unique id
find.projects<-function(proj){
  options(error=NULL)
  out<-list()
  #hub.base<-"https://localcontextshub.org/api/v1"
  for(i in 1:length(proj)){
    out[[i]]<-jsonlite::fromJSON(
      rawToChar(httr::GET(
        paste(
          "https://localcontextshub.org/api/v1",
          gsub("<PROJECT_UNIQUE_ID>", proj[i], '/projects/<PROJECT_UNIQUE_ID>/'),
          sep=""
        )
      )$content)
    )
  }
  return(out)
}





