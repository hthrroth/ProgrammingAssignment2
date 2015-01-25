## The following functions allow you to cache and compute the inverse of a matrix

## The Set() function allows you to change the value of the 
## matrix without continuously assigning a variable to that function
## Therefore you create a matrix that can cache its own inverse

## set - sets the value of a matrix
## get - gets function gets the value of a matrix
## setInverse - sets the cahced value (inverse of the matrix)
## getInverse - gets the cahced value (inverse of the matrix)

## the inverse is set to NULL as a default value before anything is cached

makeCacheMatrix <- function(mtx = matrix()) {
        inverse <- NULL
        set <- function(x) {
         x <<- y
        inverse <<- NULL;
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## cacheSolve calls the resulting function from the `makeCacheMatrix` above 
## and receives the inverse of the cache if the matrix has not changed
## If the matrix has changed, it calculates the inverse of the new data 
## and resets the inverse in the cache

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("Getting cached data...")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
