## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function sets the elements of the matrix, retrieves it and the sets the elements of matrix inverse and then retrieves it
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## The function calculates the inverse of the special “matrix” created with the above function
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix_to_invert <- x$get()
  inv <- solve(matrix_to_invert, ...)
  x$setinverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
 
}
