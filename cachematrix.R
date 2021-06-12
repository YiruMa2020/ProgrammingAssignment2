## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        #initialize the inverse property
        i <- NULL
        #method to set the matrix
        set <- function(matrix) {
                m <<- matrix
                i <<-NULL
}

## method the get the matrix
        get <- function(){
                ##return the matrix
                m
}
        

##method to set the inverse of the matrix
setInverse <- function(inverse) {
        i <<- inverse
}
        
## method to get the inverse of the matrix
getInverse <- function(){
        ##return the inverse property
        i
}
        
##return a list of the methods
list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        ## just return the inverse if its already set 
        if( !is.null(m)){
                message("getting cached data")
                return(m)
}
        
        ##get the matrix from our object
        data <-x$get()
        
        ##calculate the inverse using matrix multiplication
        m <- solve(data,...)
        
        ## set the inverse to the object
        x$setInverse(m)
        
        ##return the matrix
        x
}
