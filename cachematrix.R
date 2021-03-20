## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL  #initializing inverse as NULL
  }
get <- function() {x}
setInverse <- function(inverse) {i <<- inverse}
getInverse <- function() {i}
list(set = set, get,
     setInverse = setInverse,
     getInverse = getInverse) #function obtain inverse of the matrix
}
cacheSolve <- function(x, ...)##gets cache data
  {
  i <- x$getInverse()
  if(!is.null(i)) {                 #checking whether inverse is null
    message("getting cached data")
    return(i)
  }
  mat<- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
}


  {
        ## Return a matrix that is the inverse of 'x'
}
