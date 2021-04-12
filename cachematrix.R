

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(r) {
        x <<- r
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inve <<- inverse
    getinverse <- function() inve
    list(set = set, 
         get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
         inve <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inve)
    }
    matrix1 <- x$get()
    inve <- solve(matrix1)
    x$setinverse(inve)
    inv
}
