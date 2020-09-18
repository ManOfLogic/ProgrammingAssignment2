## These functions help reduce hours of work
## Help with calculating inverses of matrices

## this function makes a special matrix that can cache its inverse(assuming inverse exits) 

makeCacheMatrix <- function(x = matrix()) {
  k <- NULL
  set <- function(y){
    x <<- y
    k <<- NULL
  }
  get <- function()x ;;
  setInverse <- function(inverse) k <<- inverse
  getInverse <- function() k
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



## this function computes inverse of the special matrix given by above function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  k <- x$getInverse()
  if(!is.null(k)){
    message("getting data ")
    return(k)
  }
  mat <- x$get()
  k <- solve(mat,...)
  x$setInverse(k)
  k
}
