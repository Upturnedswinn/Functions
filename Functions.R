x<- read.csv("price.csv",TRUE,TRUE,",")
class(x)
add2<-function(x,y){
  x+y
}

vec10<-function(x){
  data<-x>10
  x[data]
}
vec<-function(x,n){
  use<-x>n
  x[use]
}

columnmean<-function(x,n){
  mcol<-x[,n]
  mean(mcol)
}
columnmean1<-function(y,removeNA=TRUE){
  nc<-ncol(y)
  means<-numeric(nc)
  for (i in 1:nc) {
    means[i]<-mean(y[,i],na.rm=removeNA)
  }
  means
}
oddeven<-function(num){
  num = as.integer(readline(prompt="Enter a number: "))
  if((num%%2)==0){
    print("Even")
  }else{
    print("Odd")
  }
}  

## To check laziness of the function
f1<- function(a,d){
  print(a,d)
}
f1n