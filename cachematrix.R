## Assigment 2 by Manuel F. Bertoa.
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getinverse
    if(!is.null(m)) {
        message("Inverse matrix exist")
        return(m)
    }
    data <- x$get
    m <- inverse(data, ...)
    x$setinverse(m)
    
    ## Return a matrix that is the inverse of 'x'
    m
}
