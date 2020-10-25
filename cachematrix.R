## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<-y
    inv <<- NULL
  }
  get<-function(){x}
  setInverse <- function(inverse) {inv <<-inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse =setInverse, getInverse = getInverse)
}

##Esta función crea un objeto que es una matriz y a su vez almacena en caché el calculo de su inversa.

## Write a short comment describing this function
## Esta función calcula la inversa de la "matriz" que es devuelta por makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null (inv)){
    message("geting cache data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
