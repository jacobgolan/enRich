#' Load all Hub projects
#'
#' This function loads a dataframe of all projects and their unique ids
#' As the Hub grows and/or internet stability this can take a while to run
#'
#' @return all project in TK Hub
#' @export

# connect to API
# list all hub projects
index.all.projects<-function(){
  #hub.base<-"https://localcontextshub.org/api/v1"
  return(
jsonlite::fromJSON(rawToChar(httr::GET(
  jsonlite::fromJSON(rawToChar(httr::GET("https://localcontextshub.org/api/v1")$content))$`projects list`)$content))$results
)}

