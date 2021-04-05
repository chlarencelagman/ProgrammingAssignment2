## Matrix inversion is normally an expensive computation, so caching the 
## inverse of a matrix rather than computing 
## it continuously might be preferable. The inverse of a matrix is 
## cached using the two functions mentioned below.



makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



# The inverse of the matrix is returned by the following function. 
# It first determines if the reciprocal has already been computed. 
# If this is the case, it obtains the answer and skips the computation. 
# If not, it computes the opposite and stores the result in the cache
# using the setinverse function.

# This function is based on the assumption that the matrix is always invertible.


cacheSolve <- function(x, ...) {
         inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

# data <- matrix(c(1, 1, 4, 0, 3, 1, 4, 4, 0), nrow=3, ncol=3)
