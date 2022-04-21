##Function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

  k <- NULL
  set <- function(y){
          ##set the value of the vector
  b <<- y
  k <<- NULL
  }
  get <- function()b
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
          k <- b$getInverse()
  if(!is.null(k)){
  message("getting cached data")
  return(k)
  }
  mat <- b$get()
  k <- solve(mat,...)
  b$setInverse(j)
  k
}
