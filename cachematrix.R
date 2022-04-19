##Function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

  k <- NULL
  set <- function(y){
          ##set the value of the vector
  x <<- y
  k <<- NULL
  }
  get <- function()x
        ##get the value of the vector
  setInverse <- function(inverse) k <<- inverse
        ##set inverse
  getInverse <- function() k
        ##get inverse
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

##this function calculates inverse matrix and if it's been already calculated and hasn't changed, 
##it takes the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          k <- x$getInverse()
  if(!is.null(k)){
  message("getting cached data")
  return(k)
  }
  mat <- x$get()
  k <- solve(mat,...)
  x$setInverse(j)
  k
}
