##Function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {

  d <- NULL
  set <- function(z){
          ##set the value of the vector
  m <<-z
  d <<- NULL
  }
  get <- function()m
        ##get the value of the vector
  setInv <- function(solve) d <<- solve
        ##set inverse
  getInv <- function() d
        ##get inverse
  list(set = set, get = get, 
  setInv = setInv, 
  getInv = getInv)
}

##this function calculates inverse matrix and if it's been already calculated and hasn't changed, 
##it takes the inverse from cache

cacheSolve <- function(m, ...) {
        ## Return a matrix that is the inverse of 'm'
          d <- m$getInv()
  if(!is.null(d){
  message("getting cached inverse matrix")
  return(d)
  }
  mat <- m$get()
  d <- solve(mat,...)
  m$setInv(d)
  d
}
