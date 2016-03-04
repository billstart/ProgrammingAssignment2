## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# sample use case
# sample starting matrix 
# > mymatrix <- matrix(rnorm(16),4,4)
# > makeCacheMatrix(mymatrix)  #this puts the matrix in the variable 'cache' 
#                               and the isInverted flag, both in the parent environment
# > cacheSolve(cache)  #inverts the matrix, if called again it returns the inverted matrix
#                       and sets the isInverted flag to TRUE

makeCacheMatrix <- function(x = matrix()) {
  inputClass <- class(x)
  if(inputClass[1] != 'matrix')  {
    stop('input must be a matrix, your input was a ', inputClass)
  }
  cache <<- x
  isInverted <<- FALSE
  print("matrix stored in parent environment variable 'cache'")
}


## Write a short comment describing this function
# uses the isInverted flag to determine if the inverse has already been performed

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

