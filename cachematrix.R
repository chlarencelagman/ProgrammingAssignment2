
#To cache the inverse of matrixbts
makeCacheMatrix <- function(x = matrices()) {
    in <- NULL
    set <- function(r) {
        x <<- r
        in <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) in <<- inverse
    getinverse <- function() inve
    list(set = set, 
         get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}

#To perform the inverse of the matrix1

cacheSolve <- function(x, ...) {
         in <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(in)
    }
    matrices <- x$get()
    inve <- solve(matrices)
    x$setinverse(inve)
    in
}
