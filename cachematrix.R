## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# sample starting matrix 
# > mymatrix <- matrix(rnorm(1:16),4,4)

makeCacheMatrix <- function(x = matrix()) {
  inputClass <- class(x)
  if(inputClass[1] != 'matrix')  {
    stop('input must be a matrix, your input was a ', inputClass)
  }
#   m <- NULL
#   set <- function(y) {
#     x <<- y
#     m <<- NULL
#   }
#   get <- function() x
#   setmean <- function(solve) m <<- solve
#   getmean <- function() m
#   list(set = set, get = get,
#        setmean = setmean,
#        getmean = getmean)
  cache <<- x
  isInverted <<- FALSE
  print("matrix stored in parent environment variable 'cache'")
  #cache
  #invisible()
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(isInverted == TRUE){
    print('was already inverted')
    return(invertedCache)
    
  }
  isInverted <<- TRUE
  print('inverted for the first time')
  invertedCache <<- solve(cache)
  invertedCache
}

