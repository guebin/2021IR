library(tidyverse)
#5.1
facto <- seq(1,7,by=1)
cumprod(facto)
#5.2
exp(1)
a<-c()
a[1] <- 1
for(i in 2:100){
  a[i] <- a[i-1]*i
}
head(a[i])
a
sum_ <-c()
sum_[1] <- 0
for(i in 2:100){
  sum_[i]<-i-1/a[i-1]
}
sum_

#5.3
a <- rnorm(1000)
a[a>0]
a>0
sum(a>0)
#5.4
a <- rbinom(1000,1,p=0.2)
sum(a==1)
#5.5
y<-rnorm(5000,1,1)
hist(y)
#5.6
x<- -1000:1000/1000
x
y<-c()
for(i in 1:1000){
  if(i%%2==0){
    y[i/2] <- x[i]
  }
}
y
sum(y)
#5.7
A<-c()
A[1] <- 5000
for(i in 2:10){
  A[i]<-1.03*A[i-1]
}
A
#A[10]이 2030년 연봉이다.
#5.8
myfun <- function(x){
  if(x>0){
    log(x)
  }else{
    if(x==0){
      print("음의 무한대")
    }else{
      print("x는 양수이어야합니다")
    }
  }
}
#5.9
df=tibble(X1=rnorm(100),X2=rnorm(100))
head(df)
df %>% mutate(Z=X1^2 + X2^2)
#5.10
set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat)=c(10,10)
print(mat)
A<-c()
for(i in 1:10){
  A <- apply(mat,1,sum)
}
B <- c()
for(i in 1:10){
  B <-apply(mat,2,sum)
}
A
B

#6.4
A <- rbind(c(1,2,3,4),c(2,2,1,0),c(0,1,-1,0),c(3,1,-1,3))
solve(A)
B <- cbind(c(1,9,4,7))
solve(A)%*%B

#6.5
df=read.csv("https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/round2.csv")
X=as.matrix(df)
A<-rbind(c(cos(pi/4),-1*sin(pi/4)),c(sin(pi/4),cos(pi/4)))
A    
X_ <- X%*%A
plot(X_[,1],X_[,2])

