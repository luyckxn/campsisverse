
#'
#' Renv lock file made on 241201.
#' 
"renv_lock_241201"

#'
#' Renv lock file made on 250209.
#' 
"renv_lock_250209"

#'
#' Renv lock file made on 250314.
#' 
"renv_lock_250314"

#'
#' Renv lock file made on 250329.
#' 
"renv_lock_250329"

#'
#' Renv lock file made on 250404.
#' 
"renv_lock_250404"

#'
#' Renv lock file made on 250711.
#' 
"renv_lock_250711"

#'
#' Renv lock file made on 260105.
#' 
"renv_lock_260105"

#'
#' Get all available versions.
#' 
#' @param as_date return versions as dates, default is FALSE
#' @export
#'  
getAvailableVersions <- function(as_date=FALSE) {
  retValue <- c("241201", "250209", "250329", "250404", "250711", "260105") # Please COMPLETE me
  if (as_date) {
    retValue <- gsub(pattern="(\\d)(\\d)(\\d)(\\d)(\\d)(\\d)", replacement="\\1\\2-\\3\\4-\\5\\6", x=retValue)
  }
  return(retValue)
}
