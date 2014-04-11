#' @export

setmultipath <- function(root_dirs,nodenames)
{
#	if(missing(nodenames) && missing(os))
#	{
#		stop("You need to set nodenames or os parameter.")
#	}
	
	if(length(root_dirs)==length(nodenames))
	{
		options(Rgears_multipath=data.frame(root_dirs=root_dirs,nodenames=nodenames))
		return(TRUE)
	} else
	{
		return(FALSE)
	}
	
}