makeCacheMatrix <- function(x = matrix()) {
  ## Initialize the inverse property
  invrs <- NULL
  set <- function(y) {
    x <- y
    invrs <- NULL
  }
  ## Method to get the matrix
  get <- function() 
  x
  setinverse <- function(inverse) invrs <- inverse
  getinverse <- function() invrs
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
  invrs <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  invrs <- solve(mat, ...)
  x$setinverse(invrs)
  invrs
}
