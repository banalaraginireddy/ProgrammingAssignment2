## install matlib library to use inv like functions
## this function has four functions like setinv getinv to retrieve inverse functions
## whereas get and set to retrieve the matrix

makeCacheMatrix <- function(x = matrix()) {
  minv<- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() minv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
 }
## here it checks whether it is already cached or not if it is not chached we get the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inv(data, ...)
  x$setinv(m)
  m
  }
