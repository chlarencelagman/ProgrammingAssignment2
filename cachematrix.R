
#To cache the inverse of matrix1
makeCacheMatrix <- function(x = matrix()) {
    inve <- NULL
    set <- function(r) {
        x <<- r
        inve <<- NULL
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
         inve <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(in)
    }
    matrices <- x$get()
    inve <- solve(matrices)
    x$setinverse(inve)
    inve
}
