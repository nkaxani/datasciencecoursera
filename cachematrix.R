## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  ## gets the matrix
  get <- function() x
  ## sets the inverse of the matrix
  setInv <- function(solve) inv <<- solve
  ## returns the inverse of the matrix
  getInv <- function() inv
  list(set = set,
       get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## reads the inverse of the matrix into [inv]
  inv <- x$getInv()
  ##if inv is not null the reads it from cache
  if (!is.null(inv)) {
    message("getting cached data ...")
    ## returns inv
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInv(inv)
  inv
}
