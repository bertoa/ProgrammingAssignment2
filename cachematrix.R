## Assigment 2 by Manuel F. Bertoa.
## Put comments here that give an overall description of what your
## functions do
## Matrix inversion, caching the results so no repited inversions 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function(){
        return(x)
    }
    setinverse <- function(solve){
        m <<- solve
    }
    getinverse <- function(){
        return(m)
    }
    list(set = set, get = get,
         setinverse = setinverse, getinverse = getinverse)

}


## Return a inverse matrix of x
## if inverse was cached, return the cached inverse matrix

cacheSolve <- function(x, ...) {
    m <- x$getinverse
    if(!is.null(m)) {
        message("Inverse matrix exist")
        return(m)
    }
    data <- x$get
    m <- solve(data, ...)
    x$setinverse(m)
    
    ## Return a matrix that is the inverse of 'x'
    m
}
