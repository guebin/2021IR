#5번 문제풀이
#(1)
cumprod(c(1:7))
#(2)
sum(n/factorial(n))
exp(1)
#(3)
var_=rnorm(1000)
tst = function(x) x>0
sum(tst(var_))
#(4)
rbinom(1000,size=1,prob=0.2) %>% sum
#(5)
x=rnorm(1000)
hist(x)
y=rnorm(5000,mean=0,sd=1)
hist(y)
#(6)
x=-1000:1000/1000
k=1:1000
sum(x[2*k])
#(7)
sal=c()
sal[1]=5000
for(i in 1:9){
  sal[i+1]=sal[i]+(sal[i]*0.03)
}
sal[9]
#(8)
ifelse(x>0,log(x),ifelse((x=0),print("음의 무한대"),print("x는 양수이어야 합니다")))
#(9)
df=tibble(X1=rnorm(100),X2=rnorm(100))
head(df)
df %>% mutate(Z = X1^2 + X2^2)
#(10)
set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat)=c(10,10)
print(mat)
apply(mat,1,sum)
apply(mat,2,sum)

#6번 풀이
#(1)

#(2)
x=rep(FALSE,100)
f<-function(x) !x

#(3)

#(4)
library(tidyverse)
A=rbind(c(1,2,3,4),c(2,2,1,0),c(0,1,-1,0),c(3,1,-1,3))
b=c(1,9,4,7)
dim(b)=c(4,1)
solve(A) %*% b

#(5)
df=read.csv("https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/round2.csv")
X=as.matrix(df)
X_ = rbind(cos(pi/4),sin(pi/4))

