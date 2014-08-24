## This is a function for make inverse of a matrix and put it in cache memory for reducing computing time.

## This first function will cache the matrix and inverse it, it will cache the original matrix too.

makeCacheMatrix <- function(x = matrix()) {
invmatrix <- NULL
set <- function(y) {
x <<- y
invmatrix <<- NULL
}
get <- function() x
setinv <- function(solve) invmatrix <<- solve
getinv <- function() invmatrix
list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function checks if the matrix is on the cache and returns the inverse, if it not it will inverse it,  cache it and show it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

invmatrix <- x$getinv()
if (!is.null(invmatrix)) {
	message("getting cached data")
	return(invmatrix)
}
data <- x$get()
invmatrix <- solve(data, ...)
x$setinv(invmatrix)
invmatrix
}
