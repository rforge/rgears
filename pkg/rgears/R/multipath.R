#' @export

multipath <- function(path,root_dirs,nodenames)
{
	if(missing(root_dirs) || missing(nodenames))
	{
		if(!is.null(getOption("Rgears_multipath")))
		{
			root_dirs <- getOption("Rgears_multipath")$root_dirs
			nodenames <- getOption("Rgears_multipath")$nodenames
		} else
		{
			stop("root_dirs and/or nodenames not assigned.")
		}
	}
	
	local_nodename <- Sys.info()["nodename"]
	nodename_index <- nodenames == local_nodename
	if(!any(nodename_index)) stop("local nodename not found in nodenames")
	
	root_dir <- root_dirs[nodename_index]
	
	localpath <- 
			normalizePath(
					file.path(root_dir,path)
	,mustWork=FALSE)
	
	return(localpath)
	
}