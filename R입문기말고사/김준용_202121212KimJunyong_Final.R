cumprod(c(1,2,3,4,5,6,7)) # 5.1 번

x1<-rnorm(1000) # 5.3번
cnt=0
for(i in 1:1000){
  if(x1[i]>0)cnt=cnt+1
  
}
cnt

x2<-rbinom(1000, 1, 0.2) #5.4번
cnt1=0
for(i in 1:1000){
  if(x2[i]==1)cnt1=cnt1+1
}
cnt1

y<-rnorm(5000,1,1) #5.5번
hist(y)

x=-1000:1000/1000 #5.6번
su=c()
for(i in 1:1000)su[i]=x[2*i]
sum(su)

5000*(1.03)^9 # 5.7번

ifelse(x>0,print(log(x)),ifelse(x==0, print("음의 무한대"),print("x는 양수이어야 합니다.")))
#5.8번

df=tibble(X1=rnorm(100),X2=rnorm(100))
head(df)
mutate(df, Z=X1^2+X2^2) #5.9번

set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat)=c(10,10)
print(mat)
apply(mat,1,sum)
apply(mat,2,sum) #5.10번


#x[1]+x[2]==10==2*5
#x[1]+x[2]+x[3]==18==3*6
#x[1]+x[2]+x[3]+x[4]==28==4*7
#x[1]+x[2]+x[3]+...+x[49]==49*52
#x[1]+x[2]+x[3]+...+x[50]==50*53
#따라서 x[50]=50*53-49*52
#6.1번 답

tibble(
  x=runif(n=100000, min=-1, max=1),
  y=runif(n=100000, min=-1, max=1),
  in_circle=ifelse(x^2+y^2<=1, 1, 0)
) %>%
  filter(in_circle==1) %>%
  summarise(pi=format(4*n()/100000, digits=5)) #6.3번

D1<-matrix(c(1,2,0,3,2,2,1,1,3,1,-1,-1,4,0,0,3), ncol=4)
D1
D2<-matrix(c(1,9,4,7, ncol=1))
D2
D3<-solve(D1)
D3
D3%*%D2 #6.4번

df=read.csv("https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/round2.csv")
X=as.matrix(df)
Xbar<-matrix(c(cos(pi/4),sin(pi/4),-sin(pi/4),cos(pi/4)),ncol=2)
Xbar
