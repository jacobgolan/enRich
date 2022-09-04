#' Any rows with duplicated row names will be dropped with the first one being
#' kepted.
#'
#' @param df result df from index.all.projects
#' @param title of project or matching term
#' @param providers_id of project or matching term
#' @param project_privacy of project or matching term
#' @return a subsetted dataframe of index.all.projects which includes a column with relevant project unique_ids that can be passed to, e.g., find.projects
#' @export


find.project.id<-function(df, title, providers_id, project_privacy){
  A<-if(missing(title)){rep(T,nrow(df))}else{grepl(title,df$title)}
  B<-if(missing(providers_id)){rep(T,nrow(df))}else{grepl(providers_id,df$providers_id)}
  C<-if(missing(project_privacy)){rep(T,nrow(df))}else{grepl(project_privacy,df$project_privacy)}
  df[ A&B&C,]
}
