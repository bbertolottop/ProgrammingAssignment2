

## Funcion que retorna una lista de funciones para administrar el cache de la Inversa de una matriz

makeCacheMatrix <- function(x = matrix()) {


	set<-function(y){
		x<<-y
		minv<<-NULL
	}

	get<-function(){
		 x
	}
	setsolve <-function(solve){
		 minv<<-solve
	}
	getsolve<- function(){
		 minv
	}
	list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


## Funcion que recupera la inversa de una matriz de cache o si no existe la calcula y la almacena en cache


cacheSolve <- function(m, ...) {

	mi<-m$getsolve()
	if(!is.null(mi)) {
		message("Recuperando matriz Inversa de Cache")
		return(mi)
	}
	message("Calculando Matriz Inversa")

	data<-m$get()
	mi<-solve(data)
	m$setsolve(mi)
	mi
	
}


