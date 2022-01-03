#1. 회귀분석
#1-1. rnorm()을 이용하여 잔차를 만들고 이를 벡터로 만들어라.
a= c(rnorm(1000,0,1))
a

#1-2. sin, cos를 각각 생성하고 이를 x1와 x2에 저장하라.
t=c()
for(i in 1:1000){
  t[i] = 2*i*pi/1000
}
head(t)
x1 = c()
x2 = c()
for(i in 1:1000){
  x1[i] = sin(t[i])
  x2[i] = cos(4*t[i])
}
head(x1)
head(x2)
#1-3. yi를 계산하고, (ti,yi)를 scatter plot으로 시각화
y = c()
for(i in 1:1000){
  y[i] = 1.5+5*x1[i] + 3*x2[i] + a[i] 
}
head(y)
plot(t,y, col='gray60')
#1-4. 두 벡터x1,x2와 cbind()를 이용하여 아래와 같은 1000x3 매트릭스 X를 만들어라.
X= cbind(1,x1,x2)
head(X)
#1-5.
Beta=c(1.5,5,3)
dim(Beta)=c(3,1)
head(Beta)
XB = X %*% Beta
lines(t,XB, col='red', lwd=7)
#1-6.
B_hat = solve(t(X)%*%X) %*% t(X) %*% y
head(B_hat)
#1-7.
XB_hat = X %*% B_hat
head(XB_hat)
lines(t,XB_hat, col='blue', lty=3, lwd=7)

#2. 몬테카를로 적분
#2-1. 
x=seq(from=-1.96, to = 1.96, by= 0.01)
y = (1/sqrt(2*pi)) * exp((-1/2)*(x^2))
plot(x,y,type='l')
xx= runif(10000, min=-2, max =2)
yy=runif(10000)*0.4
plot(xx,yy,col='gray')
lines(x,y,col='red',lwd=3)
test = function(xx,yy){
  yy < (1/sqrt(2*pi)) * exp((-1/2)*(xx^2))
}
tst = c()
for(i in 1:10000){
  tst[i] = test(xx[i],yy[i])
}
plot(xx,yy,col='gray')
lines(x,y,col='red',lwd=3)
points(xx[tst],yy[tst],col='red')
sum(tst)
(sum(tst)/10000) * 4*0.4
#2-2. 
x = rnorm(1000,0,1)
a=ifelse(x<=1.96&x>=-1.96,1,0)
head(a)
sum(a)

#3.징검다리
library(tidyverse)
#type A
k=c()
for(i in 1:10000){
  chance=2
  succeess=0
  while(TRUE){
    if(chance!=1 && chance!=0){
      if(runif(1)>0.5){
        succeess=succeess+1
      }
      else{
        chance=chance-1
        succeess=succeess+1
      }
    }
    else if(chance ==1){
      if(runif(1)<0.95){
        succeess=succeess+1
      }
      else{
        chance=chance-1
        succeess=succeess+1
      }    
    }
    else{
      if(runif(1)>0.5){
        succeess=succeess+1
      }
      else {
        chance=chance-1
      }
    }
    if(chance==-1){
      k[i]=0
      break
    }
    if(succeess==20){
      k[i]=1
      break
    }
  }  
}
perc_saveA = sum(k)/10000
perc_saveA
#Tyoe B
t=c()
k=c()
for(s in 1:10000){
  a = 20
  d=c()
  for(i in 1:8){
    b = rbinom(a,size=1,0.5)
    d[i] = sum(cumprod(b))
    a = a-d[i]-1
    if(a<=0) break
  }
  if(a<=0){
    g=1} else{g=0
    }
  k[s]=(g)
}
perc_saveB = sum(k)/10000
perc_saveB
#4. COVID19
df = read_csv('https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/covid19.csv')
head(df)
#4-1. 
df2020 = df[df$year == 2020,]
df2020
sum(df2020$cases)
df2021 = df[df$year == 2021,]
df2021
sum(df2021$cases)
#4-2.
df2020_2 = df2020[df2020$month==2,]
df2.1_2.15=df2020_2[df2020_2$day<=15,]

df2.1_2.15 %>%
  group_by(prov) %>%
  summarise(count = n(),
            case = sum(cases))
#4-3.
df2.15_2.29 = df2020_2[df2020_2$day>15,]
df2.15_2.29 %>%
  group_by(prov) %>%
  summarise(count=n(),
            case = sum(cases))

#5. 
#5-1.
a = 1:7
cumprod(a)
#5-2.

n = 0:Inf
n
expression(sum(n/factorial(n), n==0, Inf))
for(n in 0:Inf){
  n+1=sum(n/factorial(n))
}
#5-3.
v= rnorm(1000)
v1=ifelse(v>0, 1,0)
sum(v1)
#5-4.
library(tidyverse)
rbinom(1000,size=1,prob=0.8) %>% mean
#5-5.
y=rnorm(1000,mean=1,sd=1)
hist(y)
#5-6.
x=-1000:1000/1000
sum=0
for(i in 1:1000){
  sum = sum+x[2*i]
}
sum
#5-7.
sal =c()
sal[1] = 5000
for(i in 2:10){
  sal[i] = sal[i-1] * 1.03
}
sal[10]
#5-8.
x=-3:3
ifelse(x>0,log(x),ifelse(x==0,"음의 무한대","x는 양수이어야 합니다."))
#5-9.
df = tibble(X1=rnorm(100),X2 = rnorm(100))
head(df)
df %>% mutate(Z=X1^2+X2^2)
#5-10.
set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat) = c(10,10)
print(mat)
##각 행의 합
rowSums(mat)
## 각 열의 합
colSums(mat)
#6.
#6-1.

#6-2.
x=1:100
x
b=0
for(k in 2:50){
  a = ifelse(x %% k==0, 1, 0)
  b =  b + a
}
for(i in 1:50){
  b[2*i] = b[2*i]+1
}
b
open = ifelse(b %% 2==0,1,0)
open
sum(open)
#6-3.

#6-4.
A = rbind(c(1,2,3,4),c(2,2,1,0),c(0,-1,1,0),c(3,1,-1,3))
A
b=c(1,9,4,7)
dim(b)=c(4,1)
b
solve(A) %*% b
#6-5.
df=read.csv("https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/round2.csv")
X=as.matrix(df)
X
G = rbind(c(cos(pi/4),-sin(pi/4)),c(sin(pi/4),cos(pi/4)))
G
X_ = X %*% G
X_
plot(X_[,1],X_[,2])
