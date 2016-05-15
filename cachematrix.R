makeCacheMatrix <- function(x = matrix()) {
  ## Initialize the inverse property
  invrs <- NULL
  set <- function(y) {
    x <- y
    invrs <- NULL
  }
  ## Method to get the matrix
  get <- function() {
  ## Return the matrix
  x
  }
  ## Way to set the inverse of the matrix
  setinverse <- function(inverse) {
  invrs <- inverse
  }
   ## Way to get the inverse of the matrix
  getinverse <- function() {
    ## Back the inverse property
    invrs
  }
  ## Back a list of the methods
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
  ## Compute the inverse of the unique matrix back by "makeCacheMatrix"
  ## Back to a matrix  “invrs”
  invrs <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  ## Compute the inverse via matrix multiplication
  invrs <- solve(mat, ...)
  ## Set the inverse to the object
  x$setinverse(invrs)
  ## Return the matrix
  invrs
}
