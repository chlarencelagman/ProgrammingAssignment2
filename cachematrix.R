
#To cache the inverse of matrix1
makeCacheMatrix <- function(x = matrixbts()) {
    inve <- NULL
    set <- function(r) {
        x <<- r
        inve <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inve <<- inverse
    getinverse <- function() inve
    list(set = set, 
         get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}

#To perform the inverse of the matrix1

cacheSolve <- function(x, ...) {
         inve <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inve)
    }
    matrixbts <- x$get()
    inve <- solve(matrixbts)
    x$setinverse(inve)
    inve
}
