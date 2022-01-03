# 5번
library(tidyverse)
##5-1
cumprod(1:7)

## 5-2
for(n in 0:100000) A[n]= n/factorial(n)
sum(A)
exp(1)

## 5-3
x=rnorm(1000)
x
sum(x>0)

## 5-4
x=rbinom(1000,size=1,prob=0.2)
x
sum(x==1)

## 5-5
y=rnorm(5000,mean=1,sd=1)
hist(y)

## 5-6
x=-1000:1000/1000
head(x)
sum(x)
sum(x)/2

## 5-7

## 5-8
  y=ifelse(x>0,log(x),ifelse(X==0,print("음의 무한대"),print("x는 양수이어야 합니다.")))
    

## 5-9
df=tibble(X1=rnorm(100),X2=rnorm(100))
head(df)
df %>% mutate(Z=X1^2+X2^2)

## 5-10
set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat)=c(10,10)
print(mat)
apply(mat,1,sum)
apply(mat,2,sum)

# 6번
##6-1

##6-2
x=rep(FALSE,100)
x

##6-3
library(tidyverse)
pi<-function(n){
  counter<-0
  for(i in 1:n){
    coordinates<-runif(2,min=-1,max=1)
    if(sqrt(coordinates[1]^2+coordinates[2]^2)<1) {
      counter<-counter+1
  }
}
 return(4*counter/n)
}
pi(10000)

##6-4
A=rbind(c(1,2,3,4),c(2,2,1,0),c(0,1,-1,0),c(3,1,-1,3))
A
B=c(1,9,4,7)
dim(B)=c(4,1)
B
solve(A) %*% B

##6-5
df=read.csv("https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/round2.csv")
X=as.matrix(df)
head(X)


