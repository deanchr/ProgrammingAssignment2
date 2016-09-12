## Put comments here that give an overall description of what your
## functions do
## Step 1 - Set the value of the matrix
## Step 2 - Get the value of the matrix
## Step 3 - Set the value of the inverse
## Step 4 - Get the value of the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set = function(y) { 
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, 
             setinverse = setinverse,
             getinverse = getinverse)
}
        


## Step 1 - check to see if inverse has been calculated
## Step 2 - if it has get it from the cache
## Step 3 - if not, calculate it and set it in cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
