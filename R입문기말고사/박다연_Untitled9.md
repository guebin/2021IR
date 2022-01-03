```R
# 1.
```


```R
e = rnorm(1000)
```


```R
for (i in 1:1000) {
    t=2*i*pi/1000
    }
```


```R
X1=c()
for (i in 1:1000) {
    t[i] = 2*pi*i/1000
    X1[i] = sin(t[i])
    }
```


```R
X2 = c()
for (i in 1:1000) {
    t[i] = 2*pi*i/1000
    X2[i]=cos(4*t[i])
    }
```


```R
y=c()
y[i]=1.5+5*X1[i]+3*X2[i]+e[i]
```


```R
for (i in 1:1000)
    y[i]=1.5+5*X1[i]+3*X2[i]+e[i]
```


```R
plot(x=t,y=y)
```


    
![png](output_7_0.png)
    



```R
X = cbind(1, X1, X2)
head(X)
```


<table class="dataframe">
<caption>A matrix: 6 × 3 of type dbl</caption>
<thead>
	<tr><th scope=col></th><th scope=col>X1</th><th scope=col>X2</th></tr>
</thead>
<tbody>
	<tr><td>1</td><td>0.006283144</td><td>0.9996842</td></tr>
	<tr><td>1</td><td>0.012566040</td><td>0.9987370</td></tr>
	<tr><td>1</td><td>0.018848440</td><td>0.9971589</td></tr>
	<tr><td>1</td><td>0.025130095</td><td>0.9949510</td></tr>
	<tr><td>1</td><td>0.031410759</td><td>0.9921147</td></tr>
	<tr><td>1</td><td>0.037690183</td><td>0.9886517</td></tr>
</tbody>
</table>




```R
B = cbind(c(1.5, 5,3))
B
```


<table class="dataframe">
<caption>A matrix: 3 × 1 of type dbl</caption>
<tbody>
	<tr><td>1.5</td></tr>
	<tr><td>5.0</td></tr>
	<tr><td>3.0</td></tr>
</tbody>
</table>




```R
X %*% B
head(X %*% B)
```


<table class="dataframe">
<caption>A matrix: 1000 × 1 of type dbl</caption>
<tbody>
	<tr><td>4.530468</td></tr>
	<tr><td>4.559041</td></tr>
	<tr><td>4.585719</td></tr>
	<tr><td>4.610504</td></tr>
	<tr><td>4.633398</td></tr>
	<tr><td>4.654406</td></tr>
	<tr><td>4.673534</td></tr>
	<tr><td>4.690787</td></tr>
	<tr><td>4.706173</td></tr>
	<tr><td>4.719702</td></tr>
	<tr><td>4.731383</td></tr>
	<tr><td>4.741228</td></tr>
	<tr><td>4.749248</td></tr>
	<tr><td>4.755458</td></tr>
	<tr><td>4.759871</td></tr>
	<tr><td>4.762504</td></tr>
	<tr><td>4.763374</td></tr>
	<tr><td>4.762498</td></tr>
	<tr><td>4.759895</td></tr>
	<tr><td>4.755586</td></tr>
	<tr><td>4.749592</td></tr>
	<tr><td>4.741935</td></tr>
	<tr><td>4.732638</td></tr>
	<tr><td>4.721726</td></tr>
	<tr><td>4.709223</td></tr>
	<tr><td>4.695157</td></tr>
	<tr><td>4.679554</td></tr>
	<tr><td>4.662443</td></tr>
	<tr><td>4.643852</td></tr>
	<tr><td>4.623812</td></tr>
	<tr><td>⋮</td></tr>
	<tr><td>2.831795</td></tr>
	<tr><td>2.912212</td></tr>
	<tr><td>2.991220</td></tr>
	<tr><td>3.068785</td></tr>
	<tr><td>3.144879</td></tr>
	<tr><td>3.219470</td></tr>
	<tr><td>3.292530</td></tr>
	<tr><td>3.364032</td></tr>
	<tr><td>3.433948</td></tr>
	<tr><td>3.502254</td></tr>
	<tr><td>3.568924</td></tr>
	<tr><td>3.633934</td></tr>
	<tr><td>3.697262</td></tr>
	<tr><td>3.758887</td></tr>
	<tr><td>3.818788</td></tr>
	<tr><td>3.876946</td></tr>
	<tr><td>3.933342</td></tr>
	<tr><td>3.987960</td></tr>
	<tr><td>4.040783</td></tr>
	<tr><td>4.091797</td></tr>
	<tr><td>4.140988</td></tr>
	<tr><td>4.188344</td></tr>
	<tr><td>4.233852</td></tr>
	<tr><td>4.277504</td></tr>
	<tr><td>4.319290</td></tr>
	<tr><td>4.359203</td></tr>
	<tr><td>4.397235</td></tr>
	<tr><td>4.433381</td></tr>
	<tr><td>4.467637</td></tr>
	<tr><td>4.500000</td></tr>
</tbody>
</table>




<table class="dataframe">
<caption>A matrix: 6 × 1 of type dbl</caption>
<tbody>
	<tr><td>4.530468</td></tr>
	<tr><td>4.559041</td></tr>
	<tr><td>4.585719</td></tr>
	<tr><td>4.610504</td></tr>
	<tr><td>4.633398</td></tr>
	<tr><td>4.654406</td></tr>
</tbody>
</table>




```R
head(X %*% B)
plot(x=t,y=y)
lines(x=t, y = X %*% B, col='red', lwd = 3)
```


<table class="dataframe">
<caption>A matrix: 6 × 1 of type dbl</caption>
<tbody>
	<tr><td>4.530468</td></tr>
	<tr><td>4.559041</td></tr>
	<tr><td>4.585719</td></tr>
	<tr><td>4.610504</td></tr>
	<tr><td>4.633398</td></tr>
	<tr><td>4.654406</td></tr>
</tbody>
</table>




    
![png](output_11_1.png)
    



```R
B_= solve(t(X)%*%X) %*% t(X) %*% y
B_
```


<table class="dataframe">
<caption>A matrix: 3 × 1 of type dbl</caption>
<tbody>
	<tr><th scope=row></th><td>1.528109</td></tr>
	<tr><th scope=row>X1</th><td>4.995957</td></tr>
	<tr><th scope=row>X2</th><td>3.030011</td></tr>
</tbody>
</table>




```R
head(X %*% B)
plot(x=t,y=y)
lines(x=t, y = X %*% B, col='red', lwd = 5)
lines(x=t, y= X %*% B_ , col='blue', lwd=3, lty=5)
```


<table class="dataframe">
<caption>A matrix: 6 × 1 of type dbl</caption>
<tbody>
	<tr><td>4.530468</td></tr>
	<tr><td>4.559041</td></tr>
	<tr><td>4.585719</td></tr>
	<tr><td>4.610504</td></tr>
	<tr><td>4.633398</td></tr>
	<tr><td>4.654406</td></tr>
</tbody>
</table>




    
![png](output_13_1.png)
    



```R

```


```R
x=seq(from= -1.96, to=1.96, by=0.01) 
y= 1/sqrt(2*pi)*exp(1)**(-1/2*x^2)
```


```R

```


```R
plot(x,y)
```


    
![png](output_17_0.png)
    



```R
xx = runif(10000, -1.96, 1.96)
```


```R
yy = runif(10000, 0.05, 0.40)
```


```R
plot ( xx, yy, col='gray')
lines(x,y,col='red', lwd=3)
```


    
![png](output_20_0.png)
    



```R
test = function (xx, yy){
    yy< 1/sqrt(2*pi)*exp(1)**(-1/2*xx^2)
    }
```


```R
print(c(xx[1],yy[1]))
print(1/sqrt(2*pi)*exp(1)**(-1/2*xx[1]^2))
test(xx[1],yy[1])
```

    [1] 0.05328862 0.38252807
    [1] 0.3983762
    


TRUE



```R
tst = c()
for (i in 1:10000) tst[i]=test(xx[i], yy[i])
```


```R
plot ( xx, yy, col='gray')
lines(x,y,col='red', lwd=3)
points(xx[tst], yy[tst], col='red')
```


    
![png](output_24_0.png)
    



```R
sum(tst)
```


5489



```R
k = rnorm(1000)
sum(k <1.96 & -1.96<k)
```


956



```R

```


```R
# 8번 참가자가 살아남을 확률: 10, 9번 참가자와 1-7번 참가자 중 전부 먼저 죽을 확률
```


```R
# TYPE A
x= rbinom(1, size=1, 0.5)
y= rbinom(1,size=1, 0.95)
x
```


0



```R
#TYPE A
sum( rbinom(1000, size=10, p= 0.5)== 1)
```


9



```R

```


```R
# TYPE B
sum( rbinom(1000, size=20, p= 0.5)>= 14)
```


63



```R
0.5**7
```


0.0078125



```R
14
```


```R
library(tidyverse)
```

    -- [1mAttaching packages[22m ------------------------------------------------------------------------------- tidyverse 1.3.1 --
    
    [32mv[39m [34mggplot2[39m 3.3.5     [32mv[39m [34mpurrr  [39m 0.3.4
    [32mv[39m [34mtibble [39m 3.1.4     [32mv[39m [34mdplyr  [39m 1.0.7
    [32mv[39m [34mtidyr  [39m 1.1.3     [32mv[39m [34mstringr[39m 1.4.0
    [32mv[39m [34mreadr  [39m 2.0.1     [32mv[39m [34mforcats[39m 0.5.1
    
    -- [1mConflicts[22m ---------------------------------------------------------------------------------- tidyverse_conflicts() --
    [31mx[39m [34mdplyr[39m::[32mfilter()[39m masks [34mstats[39m::filter()
    [31mx[39m [34mdplyr[39m::[32mlag()[39m    masks [34mstats[39m::lag()
    
    


```R
ARR = c('N1','N2','N3','N4','N5','N6','N7','N8','A','N10')
SURV = 10 
PLAYER = ARR[SURV] 
STAGE = 0 
PROB = 0.5
TOSSRSLT = NA
```


```R

```


```R

```


```R
df=read_csv('https://raw.githubusercontent.com/guebin/2021IR/master/_notebooks/covid19.csv')
head(df)
```

    [1m[1mRows: [1m[22m[34m[34m12294[34m[39m [1m[1mColumns: [1m[22m[34m[34m5[34m[39m
    
    [36m--[39m [1m[1mColumn specification[1m[22m [36m------------------------------------------------------------------------------------------------[39m
    [1mDelimiter:[22m ","
    [31mchr[39m (1): prov
    [32mdbl[39m (4): year, month, day, cases
    
    
    [36mi[39m Use [30m[47m[30m[47m`spec()`[47m[30m[49m[39m to retrieve the full column specification for this data.
    [36mi[39m Specify the column types or set [30m[47m[30m[47m`show_col_types = FALSE`[47m[30m[49m[39m to quiet this message.
    
    


<table class="dataframe">
<caption>A tibble: 6 × 5</caption>
<thead>
	<tr><th scope=col>year</th><th scope=col>month</th><th scope=col>day</th><th scope=col>prov</th><th scope=col>cases</th></tr>
	<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>2020</td><td>1</td><td>20</td><td>서울</td><td>0</td></tr>
	<tr><td>2020</td><td>1</td><td>20</td><td>부산</td><td>0</td></tr>
	<tr><td>2020</td><td>1</td><td>20</td><td>대구</td><td>0</td></tr>
	<tr><td>2020</td><td>1</td><td>20</td><td>인천</td><td>1</td></tr>
	<tr><td>2020</td><td>1</td><td>20</td><td>광주</td><td>0</td></tr>
	<tr><td>2020</td><td>1</td><td>20</td><td>대전</td><td>0</td></tr>
</tbody>
</table>




```R
df %>% filter(year==2020) %>% summarise(mean(cases))
df %>% filter(year==2021) %>% summarise(mean(cases))
```


<table class="dataframe">
<caption>A tibble: 1 × 1</caption>
<thead>
	<tr><th scope=col>mean(cases)</th></tr>
	<tr><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>9.722382</td></tr>
</tbody>
</table>




<table class="dataframe">
<caption>A tibble: 1 × 1</caption>
<thead>
	<tr><th scope=col>mean(cases)</th></tr>
	<tr><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>65.62269</td></tr>
</tbody>
</table>




```R
df %>% filter(year==2020 & month==2 & day<=15) %>% group_by(prov) %>% summarise(sum_cases=sum(cases))
```


<table class="dataframe">
<caption>A tibble: 18 × 2</caption>
<thead>
	<tr><th scope=col>prov</th><th scope=col>sum_cases</th></tr>
	<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>강원</td><td>0</td></tr>
	<tr><td>검역</td><td>0</td></tr>
	<tr><td>경기</td><td>9</td></tr>
	<tr><td>경남</td><td>0</td></tr>
	<tr><td>경북</td><td>0</td></tr>
	<tr><td>광주</td><td>2</td></tr>
	<tr><td>대구</td><td>0</td></tr>
	<tr><td>대전</td><td>0</td></tr>
	<tr><td>부산</td><td>0</td></tr>
	<tr><td>서울</td><td>5</td></tr>
	<tr><td>세종</td><td>0</td></tr>
	<tr><td>울산</td><td>0</td></tr>
	<tr><td>인천</td><td>0</td></tr>
	<tr><td>전남</td><td>1</td></tr>
	<tr><td>전북</td><td>0</td></tr>
	<tr><td>제주</td><td>0</td></tr>
	<tr><td>충남</td><td>0</td></tr>
	<tr><td>충북</td><td>0</td></tr>
</tbody>
</table>




```R
# 가장 많은 확진자가 발견된 지역은 경기
```


```R
df %>% filter(year==2020 & month==2 & day>=15 & day <=29) %>% group_by(prov) %>% summarise(sum_cases=sum(cases))
```


<table class="dataframe">
<caption>A tibble: 18 × 2</caption>
<thead>
	<tr><th scope=col>prov</th><th scope=col>sum_cases</th></tr>
	<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>강원</td><td>   7</td></tr>
	<tr><td>검역</td><td>   0</td></tr>
	<tr><td>경기</td><td>  65</td></tr>
	<tr><td>경남</td><td>  59</td></tr>
	<tr><td>경북</td><td> 472</td></tr>
	<tr><td>광주</td><td>   7</td></tr>
	<tr><td>대구</td><td>2055</td></tr>
	<tr><td>대전</td><td>  13</td></tr>
	<tr><td>부산</td><td>  75</td></tr>
	<tr><td>서울</td><td>  62</td></tr>
	<tr><td>세종</td><td>   1</td></tr>
	<tr><td>울산</td><td>  17</td></tr>
	<tr><td>인천</td><td>   5</td></tr>
	<tr><td>전남</td><td>   1</td></tr>
	<tr><td>전북</td><td>   4</td></tr>
	<tr><td>제주</td><td>   2</td></tr>
	<tr><td>충남</td><td>  48</td></tr>
	<tr><td>충북</td><td>  10</td></tr>
</tbody>
</table>




```R
# 가장 많은 확진자가 발생한 지역은 대구
```


```R

```

5


```R
a=c(7:1)
cumprod(a)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>7</li><li>42</li><li>210</li><li>840</li><li>2520</li><li>5040</li><li>5040</li></ol>




```R
for (n in 0:10000) {
    k=c(1:n)
    p= sum(n/cumprod(k))
    }
p/10000
exp(1)
```


1.71828182845905



2.71828182845905



```R
sum(rnorm(1000)>0)
```


482



```R
sum(rbinom(1000, size=1, prob= 0.2)==1)
```


197



```R
y = rnorm(5000, mean=1, sd=1)
hist(y)
```


    
![png](output_51_0.png)
    



```R
x=-1000:1000/1000
Wkrtn = function(a) sum(a)
for (n in 1:1000) Wkrtn(x[2*n])
```


```R
a<- c()
a[1]=5000
for(n in 1:9){
    a[n+1]=a[n]*1.03
    }
a[10]
```


6523.86591914622



```R
x=c()
if (x>0) log(x) else 
    if(x==0) print("음의 무한대") else 
    if (x<0) print("x는 양수이어야 합니다")
```


    Error in if (x > 0) log(x) else if (x == 0) print("음의 무한대") else if (x < : 인자의 길이가 0입니다
    Traceback:
    



```R
df=tibble(X1=rnorm(100),X2=rnorm(100))
head(df)
df %>% mutate(Z=X1^2+X2^2)
```


<table class="dataframe">
<caption>A tibble: 6 × 2</caption>
<thead>
	<tr><th scope=col>X1</th><th scope=col>X2</th></tr>
	<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td> 0.5855362</td><td> 0.4643893</td></tr>
	<tr><td>-1.1362796</td><td> 0.5636885</td></tr>
	<tr><td>-0.8947203</td><td> 1.0233841</td></tr>
	<tr><td> 0.4378388</td><td>-1.4674624</td></tr>
	<tr><td> 0.2174983</td><td> 0.8711040</td></tr>
	<tr><td> 0.1619342</td><td> 0.1847629</td></tr>
</tbody>
</table>




<table class="dataframe">
<caption>A tibble: 100 × 3</caption>
<thead>
	<tr><th scope=col>X1</th><th scope=col>X2</th><th scope=col>Z</th></tr>
	<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><td> 0.58553617</td><td> 0.46438935</td><td> 0.55851007</td></tr>
	<tr><td>-1.13627963</td><td> 0.56368847</td><td> 1.60887608</td></tr>
	<tr><td>-0.89472030</td><td> 1.02338412</td><td> 1.84783946</td></tr>
	<tr><td> 0.43783880</td><td>-1.46746237</td><td> 2.34514861</td></tr>
	<tr><td> 0.21749826</td><td> 0.87110404</td><td> 0.80612774</td></tr>
	<tr><td> 0.16193416</td><td> 0.18476293</td><td> 0.06036001</td></tr>
	<tr><td> 0.90237723</td><td> 0.59874372</td><td> 1.17277870</td></tr>
	<tr><td> 0.83506835</td><td>-0.36318121</td><td> 0.82923975</td></tr>
	<tr><td>-0.54390515</td><td> 0.52155808</td><td> 0.56785565</td></tr>
	<tr><td>-0.33724966</td><td>-1.17947899</td><td> 1.50490802</td></tr>
	<tr><td> 1.13148483</td><td>-2.65559229</td><td> 8.33242836</td></tr>
	<tr><td> 0.27118974</td><td> 0.05488642</td><td> 0.07655640</td></tr>
	<tr><td> 1.52770558</td><td>-0.03307521</td><td> 2.33497832</td></tr>
	<tr><td>-0.11839106</td><td>-1.84350477</td><td> 3.41252626</td></tr>
	<tr><td> 0.54707057</td><td>-0.56344858</td><td> 0.61676051</td></tr>
	<tr><td>-0.24714929</td><td>-0.45525640</td><td> 0.26834116</td></tr>
	<tr><td> 1.26786415</td><td>-0.02087233</td><td> 1.60791515</td></tr>
	<tr><td>-0.75974117</td><td>-1.11319178</td><td> 1.81640258</td></tr>
	<tr><td>-1.07395768</td><td>-1.56856833</td><td> 3.61379169</td></tr>
	<tr><td>-1.09314745</td><td>-1.09694429</td><td> 2.39825812</td></tr>
	<tr><td> 0.08054791</td><td>-1.61582588</td><td> 2.61738125</td></tr>
	<tr><td>-0.93315654</td><td> 0.08017880</td><td> 0.87720978</td></tr>
	<tr><td> 0.02177986</td><td> 0.81097456</td><td> 0.65815410</td></tr>
	<tr><td>-1.91881140</td><td> 0.02586446</td><td> 3.68250616</td></tr>
	<tr><td>-0.69498956</td><td>-0.86653321</td><td> 1.23389030</td></tr>
	<tr><td>-3.19293866</td><td> 2.31802225</td><td>15.56808442</td></tr>
	<tr><td> 0.17520436</td><td>-0.04324482</td><td> 0.03256668</td></tr>
	<tr><td>-1.76128606</td><td>-0.52052293</td><td> 3.37307271</td></tr>
	<tr><td> 1.27226692</td><td> 0.30144433</td><td> 1.70953180</td></tr>
	<tr><td>-0.08813308</td><td>-0.60089318</td><td> 0.36884005</td></tr>
	<tr><td>⋮</td><td>⋮</td><td>⋮</td></tr>
	<tr><td>-0.80570936</td><td>-0.492088944</td><td>0.89131910</td></tr>
	<tr><td> 1.35417182</td><td>-0.067019950</td><td>1.83827299</td></tr>
	<tr><td>-0.57701106</td><td>-1.147366544</td><td>1.64939175</td></tr>
	<tr><td>-1.37171108</td><td> 0.144981165</td><td>1.90261083</td></tr>
	<tr><td> 1.12247219</td><td>-0.003853503</td><td>1.25995868</td></tr>
	<tr><td>-0.90699150</td><td> 1.091918693</td><td>2.01492001</td></tr>
	<tr><td>-0.33994240</td><td>-1.089016960</td><td>1.30151877</td></tr>
	<tr><td>-1.51453342</td><td> 0.408406007</td><td>2.46060695</td></tr>
	<tr><td> 1.60500808</td><td> 0.555964046</td><td>2.88514695</td></tr>
	<tr><td>-1.35013172</td><td>-0.053460430</td><td>1.82571369</td></tr>
	<tr><td>-0.25563039</td><td> 1.217620469</td><td>1.54794651</td></tr>
	<tr><td> 1.84534390</td><td> 0.598708254</td><td>3.76374568</td></tr>
	<tr><td>-0.37072184</td><td>-0.523725031</td><td>0.41172259</td></tr>
	<tr><td> 1.28638672</td><td>-0.335875965</td><td>1.76760345</td></tr>
	<tr><td> 0.57969791</td><td>-0.271464721</td><td>0.40974277</td></tr>
	<tr><td>-0.62244697</td><td>-0.441931133</td><td>0.58274336</td></tr>
	<tr><td> 1.02312230</td><td> 1.118047825</td><td>2.29681017</td></tr>
	<tr><td> 1.76864899</td><td>-0.567833687</td><td>3.45055436</td></tr>
	<tr><td>-1.15804898</td><td> 0.056265739</td><td>1.34424327</td></tr>
	<tr><td> 0.13244376</td><td>-0.779500609</td><td>0.62516255</td></tr>
	<tr><td> 0.46245631</td><td>-0.581797424</td><td>0.55235408</td></tr>
	<tr><td> 0.27008901</td><td>-2.082291252</td><td>4.40888493</td></tr>
	<tr><td> 1.22119611</td><td>-1.130539767</td><td>2.76944010</td></tr>
	<tr><td>-1.45783203</td><td> 0.212185778</td><td>2.17029702</td></tr>
	<tr><td>-1.19573323</td><td> 0.490040895</td><td>1.66991804</td></tr>
	<tr><td>-0.57831416</td><td> 1.162151659</td><td>1.68504375</td></tr>
	<tr><td>-1.95687339</td><td> 1.505711618</td><td>6.09652095</td></tr>
	<tr><td>-1.22614515</td><td>-0.465534898</td><td>1.72015468</td></tr>
	<tr><td>-0.14516046</td><td>-1.505233013</td><td>2.28679798</td></tr>
	<tr><td> 0.01232493</td><td> 0.201106511</td><td>0.04059573</td></tr>
</tbody>
</table>




```R
set.seed(1221)
mat = rbinom(n=100,size=5,prob=0.5)
dim(mat)=c(10,10)
print(mat)
```

          [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
     [1,]    2    3    3    2    2    3    1    3    3     3
     [2,]    1    3    3    4    2    2    4    2    2     1
     [3,]    2    2    2    2    4    4    2    3    3     3
     [4,]    3    2    4    5    2    5    1    4    2     2
     [5,]    2    2    2    2    1    4    2    2    3     4
     [6,]    5    1    3    1    1    3    4    2    4     3
     [7,]    4    3    4    3    2    3    2    3    0     1
     [8,]    4    4    2    3    2    3    3    0    4     2
     [9,]    5    5    4    3    2    4    4    4    1     4
    [10,]    2    4    4    3    1    3    3    2    1     2
    


```R
apply(mat,1,sum)
apply(mat, 2, sum)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>25</li><li>24</li><li>27</li><li>30</li><li>24</li><li>27</li><li>25</li><li>27</li><li>36</li><li>25</li></ol>




<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>30</li><li>29</li><li>31</li><li>28</li><li>19</li><li>34</li><li>26</li><li>25</li><li>23</li><li>25</li></ol>




```R
x= rep(FALSE, 100)
f<- function(x) !x
x %>% f
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li></ol>




```R
x[(1:100) %% 2 == 0 ] <- x[(1:100) %% 2 == 0 ] %>% f 
x
g=function(x,a){
    n=length(x) 
    x[(1:n) %% a == 0 ] <- x[(1:n) %% a == 0 ] %>% f ## 연산 
    x 
}
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li></ol>




```R
x=rep(FALSE, 10) 
x%>% f %>% g(2) %>% g(3)

```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>TRUE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>FALSE</li><li>FALSE</li><li>FALSE</li></ol>




```R
x=rep(FALSE, 50) 
x=f(x) 
for (i in 2:50){ 
    x=g(x,i)
}
```


```R
sum(x)
```


7



```R
conda install nconvert
```


    Error in parse(text = x, srcfile = src): <text>:1:7: 예상하지 못한 기호(symbol)입니다.
    1: conda install
              ^
    Traceback:
    



```R

```
