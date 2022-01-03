#1번
##(1)
i<-1:1000
t<-2*pi*i/1000
head(t)
e<-rnorm(t)

##(2)
x1<-c()
x2<-c()
for(i in 1:1000){
  x1[i]<-sin(2*pi*i/1000)
}
for(i in 1:1000){
  x2[i]<-cos(8*pi*i/1000)
}
head(x1)
head(x2)

##(3)
y<-c()
for(i in 1:1000){
  y[i]<-1.5+5*x1[i]+3*x2[i]+e[i]
}
head(y)
plot(t,y,col='gray60')

##(4)
X<-rep(0,1000*3)
dim(X)<-c(1000,3)
x3<-rep(1,1000)
cbind(x3[1],x1[1],x2[1])
for(i in 1:1000){
  X[i,]<-cbind(x3[i],x1[i],x2[i])
}
head(X)

##(5)
b<-rbind(1.5,5,3)
b

Xb<-X %*% b

head(Xb)
tail(Xb)

head(t)
head(y)

ty<-rep(0,1000*2)
dim(ty)<-c(1000,2)
for(i in 1:1000){
  ty[i,]<-c(t[i],y[i])
}

head(ty)
plot(ty,col='gray60')
plot(t,y,col='gray60')
lines(t,Xb,col='red',lwd=3)

##(6)
os<- t(X)
bb<-solve(os %*% X) %*% os %*% y
bb
b
### 아주 조금 다르다(거의 비슷)


##(7)
Xbb<-X %*% bb
plot(Xbb)

plot(t,y,col='gray60')
lines(t,Xb,col='red',lwd=3)
lines(t,Xbb,col='blue',lty=2,lwd=3)

#2번
##(1)
x<-seq(-1.96,1.96,0.01)
y<-(1/sqrt(2*pi))*exp((-1/2)*x^2)

plot(x,y,type='l')
xx<-runif(10000)*1.96
yy<-runif(10000)*0.3989423

plot(xx,yy)

lines(x,y,col='red',lwd=3)

test<-function(xx,yy){
  yy< (1/sqrt(2*pi))*exp((-1/2)*xx^2)
}

plot(xx,yy,col='gray')
lines(x,y,col='red',lwd=3)
points(xx[1],yy[1],col='blue')
points(xx[1],(1/sqrt(2*pi))*exp((-1/2)*xx[1]^2),col='red')

tst<-c()

for(i in 1:10000){
  tst[i]<-test(xx[i],yy[i])
}

head(tst)

plot(xx,yy,col='gray')
lines(x,y,col='red',lwd=3)
points(xx[tst],yy[tst],col='red')
sum(tst)

s<-0.4*1.96*sum(tst)*2/10000
s

##(2)
ra<-rnorm(1000)
min(ra)
max(ra)
big<-sum(ra > 1.96)
small<-sum(ra < -1.96)
1000-big-small

#3번
## TYPE A
### 변수들 모음
apr<-c("n1","n2","n3","n4","n5","n6","n7","n8","n9","10")
apr
surv=10
player=apr[surv]
player
prob=0.5
stage=0
tossrslt=NA

###함수들 모음
library(tidyverse)
toss=function(p){
  rbinom(n=1,size=1,prob=p)
} %>% as.logical


tossrslt=toss(prob)
if(tossrslt==TRUE){
  surv=surv
  stage=stage+1
  player=apr[surv]
}else{
  surv=surv-1
  stage=stage+1
  player=apr[surv]
}


reset=function(){
  tossrslt<<-NA
  surv<<-10
  stage<<-0
  player<<-apr[surv]
}


record=function() list(pre_tossrslt=tossrslt,surv=surv,stage=stage,player=player)

go=function(){
  prob<<-0.5+(player=='n9')*0.45
  tossrslt<<-toss(prob)
  if(tossrslt==FALSE){
    surv<<-surv-1
    stage<<-stage+1
    player<<-apr[surv]
  }
}

gogo = function(){
  for(i in 1:20){
    go()
  }
}

gogo_his=function(){
  rslt_=as_tibble(record())
  for(i in 1:20){
    go()
    rslt_=rbind(rslt_,as_tibble(record()))
  }
  print(rslt_)
}

prob=0.5+(player=='n9')*0.45
tossrslt=toss(prob)
if(tossrslt==FALSE) {surv=surv-1
stage=stage+1
player=apr[surv]
}

###reset()과 record()과정을 10번 반복해주고 사는 확률 알아보기
reset()  
record()
one<-gogo_his()
one_tf<-one $ surv [21] >=8 


reset()  
record()
two<-gogo_his()
two_tf<-two $ surv [21] >=8 

reset()  
record()
thr<-gogo_his()
thr_tf<-thr $ surv [21] >=8


reset()  
record()
four<-gogo_his()
four_tf<-four $ surv [21] >=8


reset()  
record()
five<-gogo_his()
five_tf<-five $ surv [21] >=8

reset()  
record()
six<-gogo_his()
six_tf<-six $ surv[21] >=8


reset()  
record()
seven<-gogo_his()
seven_tf<-seven $ surv[21] >=8

reset()  
record()
eight<-gogo_his()
eight_tf<-eight$surv[21]>=8


reset()  
record()
nine<-gogo_his()
nine_tf<-nine$surv[20]>=8


reset()  
record()
ten<-gogo_his()
ten_tf<-ten$surv[21]>=8

ss<-sum(one_tf,two_tf,thr_tf,four_tf,five_tf,six_tf,seven_tf,eight_tf,nine_tf,ten_tf)
ss/10


#4번
##(1)

install.packages("readr",repos="http://cran.us.r-progect.org")
library(readr)
abc=read_csv('https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/covid19.csv')
head(abc)
subset(abc,select=c(year,cases))

abc2020<-subset(abc,subset=year==2020)
head(abc2020)
nrow(abc2020)
abccase2020<-subset(abc2020,select=cases)
sum(abccase2020)

abc2021<-subset(abc,subset=year==2021)
abc2021
nrow(abc2021)
abccase2021<-subset(abc2021,select=cases)
sum(abccase2021)

### 2020년 확진자 수 : 60726명

### 2021년 확진자 수 : 396886명


#(2)
library(tidyverse)
abc215<-abc2020 %>% subset(month==2 & day <=15) 
tail(abc215)
head(abc$prov)

seoul<-abc215 %>% subset(prov=="서울") 
busan<-abc215 %>% subset(prov=="부산")
daedu<-abc215 %>% subset(prov=="대구")
incheon<-abc215 %>% subset(prov=="인천")
gwanju<-abc215 %>% subset(prov=="광주")
daejeon<-abc215 %>% subset(prov=="대전")
ulsan<-abc215 %>% subset(prov=="울산")
sejong<-abc215 %>% subset(prov=="세종")
gyeonggi<-abc215 %>% subset(prov=="경기")
gangwon<-abc215 %>% subset(prov=="강원")
chungbuk<-abc215 %>% subset(prov=="충북")
cnungnam<-abc215 %>% subset(prov=="충남")
jeonbuk<-abc215 %>% subset(prov=="전북")
jeonnam<-abc215 %>% subset(prov=="전남")
gyeongbuk<-abc215 %>% subset(prov=="경북")
gyeongnam<-abc215 %>% subset(prov=="경남")
jeju<-abc215 %>% subset(prov=="제주")
sum215<-c(sum(seoul $ cases),sum(busan $ cases),sum(daedu $ cases),
          sum(incheon $ cases),sum(gwanju $ cases),sum(daejeon $ cases),
          sum(ulsan $ cases),sum(sejong $ cases),sum(gyeonggi $ cases),
          sum(gangwon $ cases),sum(chungbuk $ cases),sum(cnungnam $ cases),
          sum(jeonbuk $ cases),sum(jeonnam $ cases),sum(gyeongbuk $ cases),
          sum(gyeongnam $ cases),sum(jeju $ cases))
max(sum215)
sum215==9

### 2021/02/01~02/15 동안 가장 많은 확진자가 발견된 지역은 경기이다.


#(3)
library(tidyverse)
abc229<-abc2020 %>% subset(month==2 & day > 15) 
tail(abc229)
head(abc$prov)

seoul<-abc229 %>% subset(prov=="서울") 
busan<-abc229 %>% subset(prov=="부산")
daedu<-abc229 %>% subset(prov=="대구")
incheon<-abc229 %>% subset(prov=="인천")
gwanju<-abc229 %>% subset(prov=="광주")
daejeon<-abc229 %>% subset(prov=="대전")
ulsan<-abc229 %>% subset(prov=="울산")
sejong<-abc229 %>% subset(prov=="세종")
gyeonggi<-abc229 %>% subset(prov=="경기")
gangwon<-abc229 %>% subset(prov=="강원")
chungbuk<-abc229 %>% subset(prov=="충북")
cnungnam<-abc229 %>% subset(prov=="충남")
jeonbuk<-abc229 %>% subset(prov=="전북")
jeonnam<-abc229 %>% subset(prov=="전남")
gyeongbuk<-abc229 %>% subset(prov=="경북")
gyeongnam<-abc229 %>% subset(prov=="경남")
jeju<-abc229 %>% subset(prov=="제주")
sum229<-c(sum(seoul $ cases),sum(busan $ cases),sum(daedu $ cases),
          sum(incheon $ cases),sum(gwanju $ cases),sum(daejeon $ cases),
          sum(ulsan $ cases),sum(sejong $ cases),sum(gyeonggi $ cases),
          sum(gangwon $ cases),sum(chungbuk $ cases),sum(cnungnam $ cases),
          sum(jeonbuk $ cases),sum(jeonnam $ cases),sum(gyeongbuk $ cases),
          sum(gyeongnam $ cases),sum(jeju $ cases))
max(sum229)
sum229==2055

### 2021/02/16~02/29 동안 가장 많은 확진자가 발견된 지역은 대구이다.