1+1
1+2+3
7-5
8+9-6
4*3*2
4/2
4/3

PEMDAS
4*6+5
4*(6+5)

x <- 2
y=5
y
z <- 3
z
a <- b <- 7
a
b
assign("j",4)
j
rm(j)
j
theVarialble <- 17
theVarialble
THEVARIABLE
theVarialble

x <- 2
class(x)
is.numeric(x)
i <- 5L
i
class(i)
is.integer(i)
is.numeric(i)
class(4L)
4L*2.8
5L/2L
class(5L/2L)

x<- "data"
class(x)


y <- factor("data")
y
class(y)

nchar(x)
nchar("hello")
nchar(3)
nchar(452)
nchar(y)


date1 <- as.Date("2012-06-28")
date1
class(date1)
as.numeric(date1)

date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)
date2
as.numeric(date2)

k<- TRUE
class(k)
is.logical(k)
class(T)

2 == 3
2 != 3

2 < 3
2 <= 3

"data" == "stats"

"data" < "stats"

x <- c(1,2,3,4,5,6,7,8,9,10)
class(x)
x


x * 3
x + 2 
x - 3
x / 4
x^2
sqrt(x)

# define vectors like in matlab
1:10
10:1
-2:3
5:-7

x <- 1:10
y <- -5:4

x+y
x-y
x/y

x^y
2^(-4)
length(x)
length(x+y)
# the smallest vector will expand to the greatest ones
x+c(1,2)
x+c(1,2,3)

x<=5
x > y
y > x
x < y
y <- -4:5
x
y
x<y
any(x<y)
all(x<y)


ttes_character = "test"
class(ttes_character)
nchar(ttes_character)
q <- c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse",
       "Basketball","Tennis","Cricket","Soccer")
q
class(q)
nchar(q)
f <- 7
x
x[1]
x[1:2]
x[c(1,4)]

bibi=c(One="a", Two="y", Last="r")
class(bibi)

w <- 1:3
w
class(w)

names(w) <- c("a","b","c")
w
w["a"]
w["b"]
w["c"]


q2 <- c(q, "Hockey","Lacrosse","Hockey", "Water Polo","Hockey","Lacrosse", "Hockey","Lacrosse","Hockey", "Water Polo","Hockey","Lacrosse", "Hockey","Lacrosse","Hockey", "Water Polo","Hockey","Lacrosse")
q
q[1]
q[2]
q[3]

q2

q2Factor <- factor(q2)
# categorical type, enumerated type
q2Factor
as.numeric(q2Factor)

z <- c(1, 2, NA, 8, 3, NA, 3)
z
is.na(z)

zChar <- c("Hockey", NA, "Lacrosse")
is.na(zChar)

d<- NULL
d
is.null(d)


z <- c(1,NULL,3)
z


x <- 1:10
mean(x)
sum(x)
nchar(x)

mean(x=x,trim=.1)
mean(x,na.rm=TRUE)

x[c(2,6)]<-NA
x
mean(x)
mean(x,na.rm=TRUE)

x <- 1:10
y <- -4:5
q <- c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse",
       "Basketball","Tennis","Cricket","Soccer")
theDF <- data.frame(x,y,q)
theDF
theDF <- data.frame(First= x,Second=y,Sport=q)
theDF
class(theDF$Sport)

theDF <- data.frame(First= x,Second=y,Sport=q, stringsAsFactors=FALSE)
theDF
class(theDF$Sport)

nrow(theDF)
ncol(theDF)
dim(theDF)
NROW(theDF)
nrow(x)
length(x)
NROW(x)

names(theDF)
names(theDF)[3]
rownames(theDF)
rownames(theDF)<-c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
rownames(theDF)
rownames(theDF) <- NULL
rownames(theDF)
head(theDF,n=7)
tail(theDF)
tail(theDF,n=7)
class(theDF)


theDF$Sport
theDF
theDF[3,2]
theDF[3,2:3]
theDF[c(3,5),2]
theDF[c(3,5),2:3]
theDF [,3]
class(theDF [,3])

theDF [,2:3]
class(theDF [,2:3])
theDF [,3, drop=FALSE]


class(theDF [,3, drop=FALSE])
theDF[2,]
class(theDF[2,])

theDF[2:4,]


theDF[,c("First","Sport")]
theDF[,c("Sport","First")]
theDF[,"Sport"]
class(theDF[,"Sport"])
theDF[,"Sport",drop=FALSE]
class(theDF[,"Sport",drop=FALSE])

theDF["Sport"]
theDF[["Sport"]]
theDF[c("First","Sport")]

list1 <- list(1,2,3)
list1

list2 <- list(c(1,2,3))
list2


list3 <- list(c(1,2,3),3:7)
list3

theDF <- data.frame(First = 1:5, Second=5:1, 
                    Sport=c("Hockey","Lacrosse","Football","Curling","Tennis"),
                    stringsAsFactors = FALSE)

theDF
list4<- list(theDF,1:10)
list4

list5<-list(theDF, 1:10,list3)
list5

names(list5)

names(list5) <- c("data.frame","vector","list")
list5


list6 <-list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
list6
names(list6)

emptyList <- vector(mode="list",length=4)
emptyList
emptyList[[1]]<-5
emptyList
list5[[1]]
names(list5)
list5[["data.frame"]]
list5[[1]]$Sport
list5[[1]][,"Second"]
list5[[1]][,"Second",drop=FALSE]

length(list5)
NROW(list5)

list5[[4]]<- 2
list5
list5[["NewElement"]]<-3:6
names(list5)
list5

A <- matrix(1:10, nrow=5)
A

B <- matrix(21:30, nrow=5)
B
C <- matrix(21:40, nrow=2)
C
nrow(A)
ncol(A)
dim(A)
A
B
A+B
A*B
A == B

ncol(A)
nrow(B)
t(B)
A  %*% t(B)
A  %*% C
colnames(A)
rownames(A)
colnames(A)<- c("Left","Right")
rownames(A)<- c("1st","2nd","3rd","4th","5th")
colnames(B)<- c("Left","Right")
rownames(B)<- c("One","Two","Three","Four","Five")

LETTERS
letters


colnames(C)<-LETTERS[1:10]
rownames(C)<-c("Top","Bottom")
C
A %*% C


theArray <- array(1:12,dim=c(2,3,2))
theArray
theArray[1,,]
theArray[1,,,]
theArray[1, , 1]
theArray[,,1]


url_path <- "http://www.jaredlander.com/data/Tomato%20First.csv"

tomato <- read.table(file=url_path,header=TRUE, sep=",")
class(tomato)
head(tomato)
class(tomato$Tomato)


tomato <- read.table(file=url_path,header=TRUE, sep=",",stringsAsFactors = FALSE)
class(tomato)
head(tomato)
class(tomato$Tomato)
sep="\t"
sep=";"

install.packages("RODBC")
require(RODBC)
db <- odbcConnect("QV Training")
ordersTable <- sqlQuery(db, "select * from Orders",stringsAsFactors=FALSE)
head(ordersTable)


require(quantmod)
att <- getSymbols("T",auto.assign=FALSE)
att
require(xts)
head(att)
plot(att)
chartSeries(att)
addBBands()
addMACD(32,50,12)

attClose <- att$T.Close
class(attClose)

require(rugarch)

attSpec <- ugarchspec(variance.model = list(model="sGARCH", garchOrder = c(1,1)),
                      mean.model=list(armaOrder=c(1,1)),
                      distribution.model="std")
attGarch <- ugarchfit(spec = attSpec, data= attClose)

plot(attGarch@fit$residuals,type="l")
plot(attGarch, which=10)

attPred <- ugarchboot(attGarch, n.ahead=50, method=c("Partial","Full")[1])
attLog <- diff(log(attClose))[-1]

attLogSpec <- ugarchspec(variance.model = list(model="sGARCH", garchOrder = c(1,1)),
                         mean.model=list(armaOrder=c(1,1)),
                         distribution.model="std")

attLogGarch <- ugarchfit(spec=attLogSpec, data=attLog)
infocriteria(attGarch)
infocriteria(attLogGarch)

url_path <- "http://www.jaredlander.com/data/Tomato%20First.csv"

tomato <- read.table(file=url_path,header=TRUE, sep=",")
class(tomato)
head(tomato)
class(tomato$Tomato)

save(tomato, file="C://Users//Stefan.Duprey//Documents//R//tutorial//tomato.rdata")


rm(tomato)
tomato
load("C://Users//Stefan.Duprey//Documents//R//tutorial//tomato.rdata")
head(tomato)

n <- 20
r <- 1:10
w <- data.frame(n,r)
w
save(n, r, w, file="C://Users//Stefan.Duprey//Documents//R//tutorial//multiple.rdata")
rm(n,r,w)
n
r
w
load(file="C://Users//Stefan.Duprey//Documents//R//tutorial//multiple.rdata")


require(ggplot2)
data(diamonds)
head(diamonds)
data("tips", package="reshape2")
head(tips)


data()

require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"

bowlGame <- readHTMLTable(theURL, which=1, header=FALSE, stringsAsFactors=FALSE)


require(ggplot2)
data(diamonds)
head(diamonds)

class(diamonds)

hist(diamonds$carat)
hist(diamonds$carat, main="Title")



plot(diamonds$carat, diamonds$price)

plot(price ~ carat, data=diamonds)
plot(price ~ carat, data=diamonds, main="Price vs Carat")

boxplot(diamonds$carat)

require(ggplot2)

#ggplot(data)
#geom_point
#geom_histogram
#aes(x,y)

ggplot(data=diamonds) + geom_histogram(aes(x=carat))
ggplot(data=diamonds) + geom_histogram(aes(x=carat),binwidth=.5)
ggplot(data=diamonds) + geom_histogram(aes(x=carat),binwidth=.1)

ggplot(data=diamonds) + geom_density(aes(x=carat), fill="grey50")

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

g <- ggplot(diamonds, aes(x=carat, y=price))
g
g  + geom_point()
g + geom_point(aes(color = color))


g + geom_point(aes(color = color, shape=clarity))

g + geom_point(aes(color = color, shape=cut))


ggplot(diamonds, aes(y=carat, x=1)) + geom_boxplot()
ggplot(diamonds, aes(y=carat, x=cut))+ geom_boxplot()

ggplot(diamonds, aes(y=carat, x=cut))+ geom_violin()

g <- ggplot(diamonds, aes(y=carat, x=cut))
g+geom_point()+geom_violin()
g+geom_violin()+geom_point()

g + geom_jitter() + geom_violin()



head(economics)
ggplot(economics, aes(x=date, y=pop))+geom_line()

require(lubridate)

economics$year <- year(economics$date)
economics$month <- month(economics$date)

head(economics)

econ2000 <- economics[which(economics$year >= 2000),]
nrow(economics)
nrow(econ2000)

head(econ2000)

econ2000$month <- month(econ2000$date, label=TRUE)
head(econ2000)

require(scales)

g <- ggplot(econ2000, aes(x=month, y=pop))
g <- g + geom_line(aes(color=factor(year),group=year))
g
g <- g + scale_color_discrete(name="Year")
g <- g + scale_y_continuous(labels=comma)
g <- g + labs(title = "Population Growth", x="Month", y="Population")
g
g <- g + theme(axis.text.x = element_text(angle=90, hjust=1))
g

head(diamonds)

g <- ggplot(diamonds, aes(x=carat, y=price))
g <- g+geom_point(aes(color=color)) + facet_wrap(~color)
g
g <- g+geom_point(aes(color=color)) + facet_grid(cut~clarity)
g

g <- ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)
g
head(diamonds)
ggplot(diamonds, aes(x=carat, y=price, color=color, shape = cut, size = depth))+geom_point()


require(ggthemes)

g <- ggplot(diamonds, aes(x=carat, y=price, color=color))+geom_point()
g
g  + theme_wsj()
g + theme_economist()
g + theme_economist() + scale_colour_economist()
g + theme_tufte()
g + theme_excel() + scale_colour_excel()


say.hello <- function()
{
  print("Hello, World!")
}


say.hello
say.hello()

sprintf("hello %s", "Stefan")
sprintf("hello %s, today is  %s", "Stefan", "Sunday")
sprintf("hello %s, today is  %s", "Stefan", "Saturday")

hello.person <- function(name)
{
  
  print(sprintf("Hello %s", name))
  
}



hello.person("Stefan")


hello.person <- function(first, last)
{
  
  print(sprintf("Hello %s %s", first, last))
  
}


hello.person("Stefan","Duprey")

hello.person(last="Duprey", first="Stefan")

hello.person(last="Duprey", "Stefan")


hello.person <- function(first, last="Duprey")
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Stefan", "my last name")

hello.person("Stefan")

hello.person(first="Stefan")

hello.person("Stefan", extra="Goodbye")
hello.person("Stefan", "Duprey",extra="Goodbye")

hello.person <- function(first, last="Duprey", ...)
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Stefan", "Duprey",extra="Goodbye")


hello.person("Stefan",extra="Goodbye")



double.num <- function(x){
   2*x
}


double.num(3)

double.num <- function(x){
  return (2*x)
}

double.num(3)



double.num <- function(x){
  return (2*x)
  print("Hello")
  return(17)
}


double.num(5)


hello.person <- function(first, last = "Duprey", ...)
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Stefan","Duprey")

do.call("hello.person", args=list(first="Stefan",last="Duprey"))
do.call(hello.person, args=list(first="Stefan",last="Duprey"))


run.this <- function(x, func=mean){
  do.call(func, args=list(x))
}

run.this(1:10)

run.this(1:10,mean)

run.this(1:10,sum)

run.this(1:10,sd)

1 == 1

1 <= 1

1 > 1

toCheck <- 1
if (toCheck == 1){
  print("Hello")
}

toCheck <- 0
if (toCheck == 1){
  print("Hello")
}

# the else keyword always after the {}
check.bool <- function(x){
  if (x==1) {
    print("Hello")
  } else {
    print("Goodbye")
  }
}

check.bool(1)
check.bool(0)
check.bool("k")
check.bool(TRUE)


check.bool <- function(x){
  if (x==1) {
    # comment ignored by computers
    print("Hello")
  } else {
    print("Goodbye")
  }
}



check.bool <- function(x)
{
  if (x==1) 
  {
    # comment ignored by computers
    print("Hello")
  } else if (x==0)
  {
    print("Goodbye")
  } else 
  {
    print("Confused")
  }
}


check.bool(1)

check.bool(0)

check.bool(2)

check.bool("k")

use.switch <- function(x)
{
  switch(x,
         "a"="first",
         "b"="second",
         "z"="last",
         "c"="third",
         "other"
         )
}


use.switch("a")
use.switch("b")
use.switch("c")
use.switch("d")
use.switch(1)
use.switch(2)
use.switch(3)
use.switch(5)
use.switch(7)
is.null(use.switch(7))


ifelse(1 ==1, "Yes", "No")

ifelse(1 == 0, "Yes", "No")

toTest <- c(1,1,0,1,0,1)

ifelse(toTest == 1, "Yes", "No")

ifelse(toTest == 1, toTest*3, toTest)

ifelse(toTest == 1, toTest*3, "Zero")

toTest[2] <- NA

toTest
# even if NA is different from 1 it returns NA et not TRUE
# it is the best way to deal with missing values
ifelse(toTest == 1, toTest*3, "Zero")

a <- c(1,1,0,1)
b <- c(2,1,0,1)
ifelse(a==1 & b==1,"Yes","No")
# don't use ifelse with double ampersand
ifelse(a==1 && b==1,"Yes","No")

# & and
# | or

x<- 1 
y<- 2
if (x == 0 & y ==3)
{
  print("hello")
}
# && does not check the second assertion

if (x == 0 && y ==3)
{
  print("hello")
}

# || does not check the second assertion
if (x == 1 || y ==3)
{
  print("hello")
}

ifelse(b == 1,  "Hi", ifelse(b==0, "Hello","Goodbye"))


rnorm(10)
rnorm(10, mean=100, sd=20)
randNorm10 <- rnorm(10)
dnorm(randNorm10)
dnorm(c(-1,0,1))

require(ggplot2)
randNorm <- rnorm(30000)
randDensity <- dnorm(randNorm)
ggplot(data.frame(x=randNorm, y=randDensity)) + aes(x=x,y=y)+
  geom_point()+labs(x="Random Variables", y="Density")

pnorm(randNorm10)
pnorm(c(-3,0,3))
pnorm(1) - pnorm(0)

randNorm10
pnorm(randNorm10)
qnorm(pnorm(randNorm10))

# not identical due to rounding issues
identical(randNorm10, qnorm(pnorm(randNorm10)))

rbinom(n=1, size=10, prob=0.4)
rbinom(n=5, size=10, prob=0.4)
rbinom(n=10, size=10, prob=0.4)
rbinom(n=1, size=1, prob=0.4)

rbinom(n=10, size=1, prob=0.4)

binomData <- data.frame(Success = rbinom(n=10000, size=10, prob=0.3))
ggplot(binomData, aes(x=Success))+geom_histogram(binwidth=1)


binom5 <- data.frame(Success = rbinom(n=10000, size=5, prob=0.3),Size=5)

binom10 <- data.frame(Success = rbinom(n=10000, size=10, prob=0.3),Size=10)

binom100 <- data.frame(Success = rbinom(n=10000, size=100, prob=0.3),Size=100)

binom1000 <- data.frame(Success = rbinom(n=10000, size=1000, prob=0.3),Size=1000)

binomAll <- rbind(binom5, binom10, binom100, binom1000)

head(binomAll,10)
tail(binomAll,10)
ggplot(binomAll, aes(x=Success))+geom_histogram() + facet_wrap(~Size,scales="free")

dbinom(x=3, size=10, prob=0.3)
pbinom(q=3, size=10, prob=0.3)
qbinom(p=0.3, size=10, prob=0.3)
qbinom(p=c(.3,.35,.4,.5,.6), size=10, prob=0.3)


pois1 <- rpois(n=10000, lambda=1)
pois2 <- rpois(n=10000, lambda=2)
pois5 <- rpois(n=10000, lambda=5)
pois10 <- rpois(n=10000, lambda=10)
pois20 <- rpois(n=10000, lambda=20)

pois <- data.frame(lambda.1=pois1,lambda.2=pois2,lambda.5=pois5,lambda.10=pois10,lambda.20=pois20)

head(pois)

require(reshape2)

pois <- melt(data=pois, variable.name="Lambda",value.name="x")
head(pois)
tail(pois)

require(stringr)
pois$Lambda <- str_extract(string=pois$Lambda, pattern="\\d+")

head(pois)
class(pois)
class(pois$Lambda)
pois$Lambda <- as.factor(as.numeric(pois$Lambda))
tail(pois)

ggplot(pois, aes(x=x)) + 
  geom_density(aes(group=Lambda, color=Lambda, fill=Lambda),adjust=4,alpha=1/2)
+ scale_color_discrete() + scale_fill_discrete() + ggtitle("Probability mass function")

?sample

x <- sample(1:100, size=100, replace=FALSE)
x
mean(x)
mean(1:100)


x <- sample(1:100, size=100, replace=TRUE)
x
mean(x)
mean(1:100)


y <- x
y[sample(1:100, size=20, replace=FALSE)] <- NA
y

mean(y)
mean(y, na.rm=TRUE)

grades <- c(95, 72, 87, 66)
weights <- c(1/2, 1/4, 1/8, 1/8)
mean(grades)

weighted.mean(x=grades, w=weights)


var(x)
mean(x)

sum((x-mean(x))^2)/(length(x)-1)
sqrt(var(x))
sd(x)
sd(y)
sd(y, na.rm=TRUE)

sum(x)
min(x)
max(x)
summary(x)
summary(y)

quantile(x, probs=c(0.25,0.75))
quantile(x, probs=c(.1,0.25,0.75,.9))

require(ggplot2)
head(economics)

cor(economics$pce,economics$psavert)
cor(economics[,c(2,4:6)])

econCor <- cor(economics[,c(2,4:6)])
econCor
require(reshape2)
econMelt <- melt(econCor, varnames=c("x","y"),value.name="Correlation")
econMelt
econMelt <- econMelt[order(econMelt$Correlation),]
econMelt

require(scales)

ggplot(econMelt, aes(x=x,y=y)) + 
  geom_tile(aes(fill=Correlation)) +
  scale_fill_gradient2(low=muted("red"), mid="white", high="steelblue",guide=guide_colorbar(ticks=FALSE, barheight=10), limits=c(-1,1))+
  theme_minimal() + labs(x=NULL,NULL)

m <- c(9 , 9,NA,3,NA,5 ,8,1 ,10,4 )
n <- c(2 ,NA,1 ,6,6 ,4 ,1,1 ,6 ,7 )
p <- c(8 , 4,3 ,9,10,NA,3,NA,9 ,9 )
q <- c(10,10,7 ,8,4 ,2 ,8,5 ,5 ,2 )
r <- c(1 , 9,7 ,6,5 ,6 ,2,7 ,9 ,10)

theMat <- cbind(m,n,p,q,r)

cor(theMat)

cor(theMat, use="everything")
cor(theMat, use="all.obs")
# use only raws with no NA elements
cor(theMat, use="complete.obs")
# use only raws with no NA elements or return na
cor(theMat, use="na.or.complete")
cor(theMat[c(1,4,7,9,10),])
# the most permissive but computationnaly intensive
cor(theMat, use="pairwise.complete.obs")

?cor

data("tips", package="reshape2")

head(tips)
class(tips)
class(tips$tip)
class(tips$sex)
class(tips$day)
unique(tips$sex)
unique(tips$day)

t.test(tips$tip, alternative="two.sided",mu=2.5)

require(ggplot2)
randT <- rt(30000, df=NROW(tips)-1)
tipTTest <- t.test(tips$tip, alternative="two.sided",mu=2.5)
tipTTest
tipTTest$statistic

ggplot(data.frame(x=randT))+
geom_density(aes(x=x),fill="grey", color="grey")+
geom_vline(xintercept=tipTTest$statistic) +
geom_vline(xintercept=mean(randT)+c(-2,2)*sd(randT),linetype=2)
  
t.test(tips$tip, alternative="greater",mu=2.5)

aggregate(tip~sex, data=tips, mean)
aggregate(tip~sex, data=tips, var)

shapiro.test(tips$tip[tips$sex == "Female"])
shapiro.test(tips$tip[tips$sex == "Male"])

ggplot(tips, aes(x=tip, fill=sex))+geom_histogram(binwidth=.5, alpha=1/2)

ansari.test(tip ~ sex, tips)
t.test(tip~sex, data = tips, var.equal = TRUE)

require(plyr)
require(ggplot2)
tipSummary <- ddply(tips, "sex", summarize, 
                    tip.mean=mean(tip),tip.sd=sd(tip),
                    Lower = tip.mean -2*tip.sd/sqrt(NROW(tip)),
                    Upper = tip.mean +2*tip.sd/sqrt(NROW(tip))
                    )

tipSummary

ggplot(tipSummary, aes(x=tip.mean, y=sex))+geom_point() +
  geom_errorbarh(aes(xmin=Lower, xmax=Upper), height=.2)


tipAnova <- aov(tip~day -1, tips)
tipAnova <- aov(tip~day, tips)
tipAnova$coefficients
summary(tipAnova)


tipsByDay <- ddply(tips, "day", summarize,
                   tip.mean=mean(tip), tip.sd=sd(tip),
                   Length=NROW(tip),
                   tfrac=qt(p=.9,df=Length-1),
                   Lower=tip.mean -tfrac*tip.sd/sqrt(Length),
                   Upper=tip.mean +tfrac*tip.sd/sqrt(Length))

ggplot(tipsByDay, aes(x=tip.mean, y=day))+geom_point()+geom_errorbarh(aes(xmin=Lower,xmax=Upper),height=.3)

# data munging
theMatrix <- matrix(1:9,nrow=3)
theMatrix
# apply waits for a matrix as entry
# MARGIN = 2 =====> columns
apply(theMatrix, MARGIN=2,sum)
apply(theMatrix, MARGIN=1,sum)


colSums(theMatrix)
rowSums(theMatrix)

theMatrix[2,1] <- NA
theMatrix
apply(theMatrix, MARGIN=1,sum)

apply(theMatrix, MARGIN=1,sum,na.rm=TRUE)
rowSums(theMatrix)
rowSums(theMatrix,na.rm=TRUE)


theList <- list(A=matrix(1:9,nrow=3), B=1:5, C=matrix(1:4,2),D=2)
theList

#lapply waits for a list
lapply(theList, sum)

#sapply waits for a list
sapply(theList, sum)

# vectors are list
theNames <-c("Stefan","Duprey", "Paul")
sapply(theNames, nchar)


firstList <- list(A=matrix(1:16,4),B=matrix(1:16,2),C=1:5)
secondList <- list(A=matrix(1:16,4),B=matrix(1:16,8),C=15:1)

firstList
secondList

# mapping two lists
mapply(identical, firstList, secondList)


simplefunc <- function(x,y)
{
  NROW(x)+NROW(y)
}

mapply(simplefunc, firstList, secondList)


require(ggplot2)
data(diamonds)
head(diamonds)

mean(diamonds$price)
aggregate(price~cut, diamonds, mean)

aggregate(price~cut, diamonds, mean, na.rm=TRUE)

aggregate(price~cut +color, diamonds, mean)

aggregate(cbind(price, carat)~cut, diamonds, mean)

aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)


require(plyr)
head(baseball,20)
class(baseball)
class(baseball$year)
class(baseball$year <1954)
baseball$sf[baseball$year <1954] <- 0
baseball$sf[baseball$year <1954]
any(is.na(baseball$sf))

baseball$hbp[is.na(baseball$hbp)] <- 0
any(is.na(baseball$hbp))

baseball<- baseball[baseball$ab>50,]

baseball$OBP <- with(baseball,  (h+bb+hbp)/(ab+bb+hbp+sf))
tail(baseball)

obp <- function(data)
{
  c(OBP <- with(data, sum(h+bb+hbp)/sum(ab+bb+hbp+sf)))
}

obp <- function(data)
{
  c(OBP=with(data, sum(h+bb+hbp)/sum(ab+bb+hbp+sf)))
}


# ddply waits for a dataset
careerOBP <- ddply(baseball, .variables="id", obp)
head(careerOBP)

careerOBP <- careerOBP[order(careerOBP$OBP, decreasing=TRUE),]

head(careerOBP)

theList <- list(A=matrix(1:9,3),B=1:5, C=matrix(1:4,2), D=2)
theList
lapply(theList, sum)
llply(theList, sum)

identical(lapply(theList, sum),llply(theList, sum))


sapply(theList,sum)
laply(theList, sum)

head(diamonds)
aggregate(price~cut, diamonds, each(mean, median))

numcolwise(sum, na.rm=TRUE, diamonds)
sapply(diamonds[,sapply(diamonds, is.numeric)],sum)


## end of plyr

sport <- c("Hockey","Baseball","Football")
league <- c("NHL", "MLB", "NFL")
trophy <- c("Stanley Cup", "Commissioner's Trophy", "Vince Lombardi Trophy")
class(sport)

sports1 <- cbind(sport, league, trophy)
class(sports1)
sports1

sports2 <- data.frame(sport=c("Basketball","Golf"),
                      league=c("NBA","PGA"),
                      trophy=c("Larry O'Biren Championship Trophy", "Wanamaker Trophy"))

sports2

sports <- rbind(sports1, sports2)
class(sports)

country_code_path = "http://www.jaredlander.com/data/countryCodes.csv"

codes <- read.table(country_code_path, header=TRUE, sep=",", stringsAsFactors=FALSE)
codes
country_path = "http://www.jaredlander.com/data/GovType.csv"

countries <- read.table(country_code_path, header=TRUE, sep=",", stringsAsFactors=FALSE)
head(codes)
head(countries)
View(countries)

countryMerged <- merge(x=codes, y=countries, by.x = "Country.name", by.y="Country.name")
View(countryMerged)
head(countryMerged)


require(plyr)

codes <- rename(codes, c(Country.name="Country"))
countries <- rename(countries, c(Country.name="Country"))

head(codes)
countryJoined <- join(x=codes, y=countries, by="Country")
View(countryJoined)


require(reshape2)
head(airquality)
class(airquality)

airMelt <- melt(airquality, id = c("Month","Day"),
                value.name="Value",variable.name="metric")

head(airMelt, 100)
dim(airquality)
dim(airMelt)

airCast <- dcast(airMelt, Month + Day ~ metric, value.var="Value")
head(airCast)
airCast <- airCast[,c("Ozone", "Solar.R", "Wind","Temp","Month","Day")]
airCast
head(airCast)


paste("hello","stefan","and others")
paste("hello","stefan","and others",sep="/")
paste(c("hello","Hi","Howdy"), c("Stefan", "Paul", "Lucien"))
paste("hello",c("Stefan", "Paul", "Lucien"))
paste("hello",c("Stefan", "Paul", "Lucien"),c("goodbye","seeya"))

vectorOfText <- c("Hello", "everyone", "out there",".")
paste(vectorOfText)
paste(vectorOfText, collapse=" ")

person <- "Stefan"
partySize <- 8
waitTime <- 25

paste("Hello ",person, ", your party of ", partySize, " will be seated in ", waitTime, " minutes.",sep="")

sprintf("Hello %s, your party of %s will be seated in %s minutes",person, partySize, waitTime)

# extracting text
require(XML)

theURL <- "http://www.loc.gov/rr/print/list/057_chron.html"
presidents <- readHTMLTable(theURL,which = 3, as.data.frame = TRUE, skip.rows=1, header=TRUE, stringsAsFactors=FALSE)
class(presidents)
head(presidents)

require(stringr)

presidents <- presidents[1:64,]
yearList <- str_split(string=presidents$YEAR, pattern="-")


yearMatrix <- data.frame(Reduce(rbind, yearList))
names(yearMatrix) <- c("start","stop")

presidents <- cbind(presidents, yearMatrix)


str_sub(string=presidents$PRESIDENT, start=1, end=3)
str_sub(string=presidents$PRESIDENT, start=4, end=8)


presidents[str_sub(string=president$Start, start=4, end=4) == 1, c("YEAR","PRESIDENT","Start","Stop")]


head(yearMatrix)


# fitting linear models
require(UsingR)
head(father.son)
require(ggplot2)

ggplot(father.son, aes(x=fheight, y=sheight))+geom_point() +
  geom_smooth(method="lm")+
  labs(x="Fathers",y="Sons")


heightsLM <- lm(sheight~fheight, data=father.son)

heightsLM
summary(heightsLM)


data(tips, package="reshape2")
head(tips)

tipsAnova <- aov(tip~day-1, data=tips)
tipsAnova
# -1 : do not use an intercept
tipsLM <- lm(tip~day -1, data=tips)
summary(tipsLM)

# time series
require(WDI)

countries <- c("US","CA","GB","CN","JP","SG","IL")
indicators <- c("NY.GDP.PCAP.CD", "NY.GDP.MKTP.CD")

gdp <- WDI(country=countries, indicator=indicators, start=1960, end=2011)

class(gdp)
names(gdp)<- c("isoc", "Country", "Year", "PerCapGDP", "GDP")
head(gdp)

require(scales)
ggplot(gdp, aes(Year,PerCapGDP, color=Country, linetype=Country ))+
  geom_line() + scale_y_continuous(label=dollar)

us <- gdp$PerCapGDP[gdp$Country == "United States"]
class(us)
head(us)

us <- ts(us, start=min(gdp$Year), end=max(gdp$Year))
class(us)
plot(us, ylab="Per Capita GDP", xlab="Year")

acf(us)
pacf(us)

# ARIMA modeling
require(forecast)
usBest <- auto.arima(x=us)
acf(usBest$residuals)
pacf(usBest$residuals)

coef(usBest)
predict(usBest, n.ahead=5, se.fit=TRUE)

theForecast <- forecast(object=usBest, h=5)

plot(theForecast)


# VAR modeling
head(gdp)
require(reshape2)
gdpCast <- dcast(Year ~ Country, data=gdp[,c("Country","Year","PerCapGDP")],value.var="PerCapGDP")
head(gdpCast)

gdpTS <- ts(data=gdpCast[,-1],start=min(gdpCast$Year),end=max(gdpCast$Year))
class(gdpTS)
plot(gdpTS, plot.type="single",col=1:8)
legend("topleft", legend=colnames(gdpTS),ncol=2,lty=1,col=1:8,cex=.9)


numDiffs <- ndiffs(gdpTS)
gdpDiffed <- diff(gdpTS, differences=numDiffs)
plot(gdpDiffed,plot.type="single",col=1:7 )

require(vars)

gdpVar <- VAR(gdpDiffed, lag.max=12)
gdpVar$p
names(gdpVar$varresult)
class(gdpVar$varresult$Canada)
head(coef(gdpVar$varresult$Canada))
require(coefplot)
coefplot(gdpVar$varresult$Canada)
coefplot(gdpVar$varresult$Japan)

predict(gdpVar, n.ahead=5)

# GARCH modeling

require(quantmod)
att <- getSymbols("T",auto.assign=FALSE)
att
require(xts)
head(att)
plot(att)
chartSeries(att)
addBBands()
addMACD(32,50,12)

attClose <- att$T.Close
class(attClose)

require(rugarch)

attSpec <- ugarchspec(variance.model = list(model="sGARCH", garchOrder = c(1,1)),
                      mean.model=list(armaOrder=c(1,1)),
                      distribution.model="std")
attGarch <- ugarchfit(spec = attSpec, data= attClose)

plot(attGarch@fit$residuals,type="l")
plot(attGarch, which=10)

attPred <- ugarchboot(attGarch, n.ahead=50, method=c("Partial","Full")[1])
attLog <- diff(log(attClose))[-1]

attLogSpec <- ugarchspec(variance.model = list(model="sGARCH", garchOrder = c(1,1)),
                         mean.model=list(armaOrder=c(1,1)),
                         distribution.model="std")

attLogGarch <- ugarchfit(spec=attLogSpec, data=attLog)
infocriteria(attGarch)
infocriteria(attLogGarch)




require(UsingR)
require(ggplot2)

# multiple regression




housing_market = "http://www.jaredlander.com/data/housing.csv"
housing <- read.table(housing_market, sep=",",header=TRUE, stringsAsFactors=FALSE)
head(housing)

names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt",
                    "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt",
                    "NetIncome", "Value", "ValuePerSqFt", "Boro")

head(housing)
class(housing)


require(ggplot2)

ggplot(housing, aes(x=ValuePerSqFt)) + geom_histogram(binwidth=10) +labs(x="Value per square fit")


ggplot(housing, aes(x=SqFt)) + geom_histogram()
ggplot(housing, aes(x=ValuePerSqFt, fill=Boro)) + geom_histogram() +labs(x="Value per square fit") +facet_wrap(~Boro)



ggplot(housing, aes(x=SqFt)) + geom_histogram()
ggplot(housing, aes(x=SqFt, y=ValuePerSqFt)) + geom_point()

ggplot(housing[housing$Units<1000,], aes(x=SqFt)) + geom_histogram()
ggplot(housing[housing$Units<1000,], aes(x=SqFt, y=ValuePerSqFt)) + geom_point()


sum(housing$Units >= 1000)
housing <- housing[housing$Units<1000,]

head(housing)

house1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro, data=housing)
summary(house1)

head(model.matrix(ValuePerSqFt ~Boro, data=housing))
house1$coefficients
coef(house1)
summary(house1)

require(coefplot)
coefplot(house1)

house2 <- lm(ValuePerSqFt ~ Units*SqFt +Boro, data=housing)
coefplot(house2)

head(model.matrix(ValuePerSqFt ~ Units*SqFt, data=housing))

head(model.matrix(ValuePerSqFt ~ Units:SqFt, data=housing))

house3 <- lm(ValuePerSqFt ~ Units:SqFt +Boro, data=housing)
coefplot(house3)


house4 <- lm(ValuePerSqFt ~ Units*SqFt*Income, data=housing)
coefplot(house4)


house5 <- lm(ValuePerSqFt ~ Class*Boro, data=housing)
house5$coefficients

house6 <- lm(ValuePerSqFt ~ I(SqFt/Units), data=housing)
house6$coefficients

house7 <- lm(ValuePerSqFt ~ (Units + SqFt)^2, data=housing)
house7$coefficients

house8 <- lm(ValuePerSqFt ~ Units*SqFt, data=housing)
house8$coefficients

house9 <- lm(ValuePerSqFt ~ I(Units + SqFt)^2, data=housing)
house9$coefficients


multiplot(house1, house2, house3)


housingNew_market = "http://www.jaredlander.com/data/housingNew.csv"
housingNew <- read.table(housingNew_market, sep=",",header=TRUE, stringsAsFactors=FALSE)
head(housingNew)
housePredict <- predict(house1, newdata=housingNew, se.fit=TRUE, interval="prediction", level=.95)
head(housePredict$fit)

# fit logistic regression
# american community survey acs ~ census
acs_path = "http://www.jaredlander.com/data/acs_ny.csv"
acs <- read.table(acs_path, sep=",",header=TRUE, stringsAsFactors=FALSE)
head(acs)
acs$Income <- with(acs, FamilyIncome >= 150000)
acs$Income

require(ggplot2)
require(useful)

ggplot(acs, aes(x=FamilyIncome))+
  geom_density(fill="grey",color="grey")+
  geom_vline(xintercept=150000)+
  scale_x_continuous(label = multiple.dollar, limits=c(0,1000000))

income1 <- glm(Income ~ HouseCosts + NumWorkers + OwnRent + NumBedrooms + FamilyType, data=acs, family = binomial(link="logit"))
summary(income1)
# acs[,-1] drops the first element
# acs[,-2] drops the second element
names(acs)[length(acs)] <- "Income"


summary(income1)
require(coefplot)
coefplot(income1)
income1$coefficients
invlogit <- function(x)
{
  1/(1+exp(-x))
}

invlogit(income1$coefficients)

## fitting a Poisson regression
acs_path = "http://www.jaredlander.com/data/acs_ny.csv"
acs <- read.table(acs_path, sep=",",header=TRUE, stringsAsFactors=FALSE)
head(acs)
class(acs)

acs$NumChildren

require(ggplot2)
ggplot(acs, aes(x=NumChildren)) + geom_histogram(binwidth=1)


children1 <- glm(NumChildren ~ FamilyIncome + FamilyType + OwnRent, data=acs, family=poisson(link="log"))
summary(children1)

require(coefplot)
coefplot(children1)

# check for over description factor

z <- (acs$NumChildren - children1$fitted.values)/
   sqrt(children1$fitted.values)
sum(z^2)/ children1$df.residual


pchisq(sum(z^2), df=children1$df.residual)

children2 <- glm(NumChildren ~ FamilyIncome + FamilyType + OwnRent, data=acs, family=quasipoisson(link="log"))

summary(children2)

multiplot(children1, children2)


## analyse survival data : time to an event time to a heart attack
require(survival)
head(bladder)
?bladder

bladder[100:105,]

survObject <- with(bladder[100:105,], Surv(stop, event))
survObject
survObject[,1:2]

cox1 <- coxph(Surv(stop, event) ~ rx+number+size+enum, data=bladder)
coefplot(cox1)
plot(survfit(cox1),xlab="Days", ylab="Survival Rate", conf.int=TRUE )

cox2 <- coxph(Surv(stop, event) ~ strata(rx)+number+size+enum, data=bladder)
summary(cox2)
plot(survfit(cox2),xlab="Days", ylab="Survival Rate", conf.int=TRUE, col=1:2 )
legend("bottomleft", legend=c(1,2), lty=1, col=1:2, text.col=1:2, title="rx")

cox.zph(cox1)
cox.zph(cox2)


head(bladder)
head(bladder2)

ag1 <- coxph(Surv(start, stop, event) ~ rx + number + size + enum + cluster(id), data=bladder2)
plot(survfit(ag1), conf.int=TRUE)

ag2 <- coxph(Surv(start, stop, event) ~ strata(rx)+number+size+enum+cluster(id), data=bladder2)
plot(survfit(ag2), conf.int=TRUE, col=1:2)
legend("topright", legend=c(1,2), lty=1, col=1:2, text.col=1:2, title="rx")

# assess quality through the residuals

housing_market = "http://www.jaredlander.com/data/housing.csv"
housing <- read.table(housing_market, sep=",",header=TRUE, stringsAsFactors=FALSE)
names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt",
                    "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt",
                    "NetIncome", "Value", "ValuePerSqFt", "Boro")

head(housing)


house1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro, data=housing)
summary(house1)
coefplot(house1)

head(fortify(house1))

h1 <- ggplot(aes(x=.fitted, y=.resid), data=house1) +
  geom_point() + geom_hline(yintercept=0) + 
  geom_smooth(se=FALSE)

h1 + geom_point(aes(color=Boro))

plot(house1, which=2)
ggplot(house1, aes(sample=.stdresid))+stat_qq() + geom_abline()

ggplot(house1, aes(x=.resid))+geom_histogram()


## comparing models
house1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro, data=housing)
house2 <- lm(ValuePerSqFt ~ Units * SqFt + Boro, data=housing)
house3 <- lm(ValuePerSqFt ~ Units + SqFt * Boro + Class, data=housing)
house4 <- lm(ValuePerSqFt ~ Units + SqFt * Boro + SqFt*Class, data=housing)
house5 <- lm(ValuePerSqFt ~ Boro + Class, data=housing)

multiplot(house1, house2, house3, house4, house5, pointSize=2 )

anova(house1, house2, house3, house4, house5)

AIC(house1, house2, house3, house4, house5)

BIC(house1, house2, house3, house4, house5)

housing$HighValue <- housing$ValuePerSqFt>=150

high1 <- glm(HighValue ~ Units + SqFt + Boro, data=housing, family=binomial(link="logit"))
high2 <- glm(HighValue ~ Units * SqFt + Boro, data=housing, family=binomial(link="logit"))
high3 <- glm(HighValue ~ Units + SqFt * Boro + Class, data=housing, family=binomial(link="logit"))
high4 <- glm(HighValue ~ Units + SqFt * Boro + SqFt*Class, data=housing, family=binomial(link="logit"))
high5 <- glm(HighValue ~ Boro + Class, data=housing, family=binomial(link="logit"))


anova(high1, high2, high3, high4, high5)
AIC(high1, high2, high3, high4, high5)
BIC(high1, high2, high3, high4, high5)

# cross validation
require(boot)
houseG1 <- glm(ValuePerSqFt ~ Units + SqFt + Boro, data=housing, family=gaussian(link="identity"))
# K is the number of folds of your cross validation
houseCV1 <- cv.glm(housing, houseG1, K=5)
houseCV1$delta

houseG2 <- glm(ValuePerSqFt ~  Units*SqFt + Boro , data=housing, family=gaussian(link="identity"))
houseG3 <- glm(ValuePerSqFt ~ Units * SqFt + Boro, data=housing)
houseG4 <- glm(ValuePerSqFt ~ Units + SqFt * Boro + Class, data=housing)
houseG5 <- glm(ValuePerSqFt ~ Units + SqFt * Boro + SqFt*Class, data=housing)

houseCV2 <- cv.glm(housing, houseG2, K=5)
houseCV3 <- cv.glm(housing, houseG3, K=5)
houseCV4 <- cv.glm(housing, houseG4, K=5)
houseCV5 <- cv.glm(housing, houseG5, K=5)


cvResults <- as.data.frame(rbind(houseCV1$delta,houseCV2$delta,houseCV3$delta,houseCV4$delta,houseCV5$delta))

names(cvResults) <- c("Error", "Adjusted.Error")
cvResults$Model <- sprintf("houseG%s", 1:5)
cvResults

cvAnova <- anova(houseG1,houseG2,houseG3,houseG4,houseG5 )

cvAic <- AIC(houseG1,houseG2,houseG3,houseG4,houseG5 )

cvResults$ANOVA <- cvAnova$'Resid. Dev'
cvResults$AIC <- cvAic$AIC
cvResults



## boobstrapping
require(plyr)
class(baseball)
class(baseball$year)
head(baseball)
baseball <- baseball[baseball$year >= 1990, ]
head(baseball)


bat.avg <- function(data, indices=1:NROW(data), hits="h", at.bats="ab")
{
  sum(data[indices, hits], na.rm = TRUE) /
    sum(data[indices, at.bats], na.rm = TRUE)
}

bat.avg(baseball)

require(boot)
avgBoot <- boot(data=baseball, statistic = bat.avg, R=1200, stype="i")
avgBoot
avgBoot$t
class(avgBoot)

boot.ci(avgBoot, conf=.95, type="norm")
require(ggplot2)
ggplot()+geom_histogram(aes(x=avgBoot$t), fill="grey", color="grey") + 
  geom_vline(xintercept=avgBoot$t0 + c(-1,1)*2*sqrt(var(avgBoot$t)), linetype=2)

## choosing variables using stepwise regression

housing_market = "http://www.jaredlander.com/data/housing.csv"
housing <- read.table(housing_market, sep=",",header=TRUE, stringsAsFactors=FALSE)
names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt",
                    "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt",
                    "NetIncome", "Value", "ValuePerSqFt", "Boro")

head(housing)

nullModel <- lm(ValuePerSqFt ~ 1, data=housing)
fullModel <- lm(ValuePerSqFt ~ Units + SqFt*Boro + Boro*Class, data=housing)

houseStep <- step(nullModel, scope=list(lower=nullModel, upper=fullModel), direction="both")

houseStep

# elastic net
acs_path = "http://www.jaredlander.com/data/acs_ny.csv"
acs <- read.table(acs_path, sep=",",header=TRUE, stringsAsFactors=FALSE)
acs$Income <- with(acs, FamilyIncome >= 150000)
acs$Income

head(acs)
require(glmnet)
require(useful)

# build.x will build the dummy variables from categoricat features for you
acsX <- build.x(Income ~ NumBedrooms + NumChildren + NumPeople + NumRooms +
                  NumUnits + NumVehicles + NumWorkers + OwnRent + YearBuilt +
                  ElectricBill + FoodStamp + HeatingFuel + Insurance + Language -1,
                data=acs, contrast=FALSE)

class(acsX)
dim(acsX)
topleft(acsX, c=6)
topright(acsX, c=6)

# build.y will build the output
acsY <- build.y(Income ~ NumBedrooms + NumChildren + NumPeople + NumRooms +
                  NumUnits + NumVehicles + NumWorkers + OwnRent + YearBuilt +
                  ElectricBill + FoodStamp + HeatingFuel + Insurance + Language -1,
                data=acs)
head(acsY)
tail(acsY)

set.seed(1863561)
ascCV1 <- cv.glmnet(x=acsX, y=acsY, family="binomial", nfold = 5 )
ascCV1$lambda.min
ascCV1$lambda.lse

plot(ascCV1)

coef(ascCV1, s="lambda.1se")

plot(ascCV1$glmnet.fit, xvar="lambda")

abline(v=log(c(ascCV1$lambda.min,ascCV1$lambda.1se)), lty=2)

ascCV2 <- cv.glmnet(x=acsX, y=acsY, family="binomial", nfold = 5, alpha=0 )

plot(ascCV2$glmnet.fit, xvar="lambda")

abline(v=log(c(ascCV2$lambda.min,ascCV2$lambda.1se)), lty=2)

# weakly informative prior
# used for bayesian shrinkage

ideo_http_path = "http://www.jaredlander.com/data/ideo.rdata"
ideo_downloaded_path = "C:\\Users\\Stefan.Duprey\\Downloads\\ideo.rdata"
load(ideo_downloaded_path)
head(ideo)
theYears<- unique(ideo$Year)
theYears
results <- vector(mode="list", length = length(theYears))
results
names(results) <- theYears
results

for (i in theYears)
{
  results[[as.character(i)]] <- glm(Vote~Race+Income+Gender+Education, data=ideo, subset= Year==i, family=binomial(link="logit"))
}

results
require(coefplot)
voteInfo <- multiplot(results, coefficients="Raceblack", plot=FALSE )
head(voteInfo)

multiplot(results, coefficients="Raceblack", secret.weapon = TRUE )

multiplot(results, coefficients="Raceblack", secret.weapon = TRUE )+
coord_flip(xlim=c(-20,10))

resultsB <- vector(mode="list", length = length(theYears))
names(resultsB) <- theYears
resultsB
#for (i in theYears)
#{
#  resultsB[[as.character(i)]] <- arm::bayesglm(Vote~Race+Income+Gender+Education, data=ideo, subset= Year==i, family=binomial(link="logit"), prior.scale=2.5, prior.df=1)
#}

for (i in theYears)
{
  resultsB[[as.character(i)]] <- arm::bayesglm(Vote~Race+Income+Gender+Education, data=ideo[ideo$Year==i,], family=binomial(link="logit"), prior.scale=2.5, prior.df=1)
}

multiplot(resultsB, coefficients="Raceblack", secret.weapon = TRUE )+
  coord_flip(xlim=c(-20,10))
  

# fitting non linear least squares
wifi_http_path = "http://www.jaredlander.com/data/wifi.rdata"
wifi_downloaded_path = "C:\\Users\\Stefan.Duprey\\Downloads\\wifi.rdata"
load(wifi_downloaded_path)
head(wifi)
require(ggplot2)

ggplot(wifi, aes(x=x, y=y, color=Distance))+geom_point() +
  scale_color_gradient2(low="blue", mid="white", high ="red", midpoint=mean(wifi$Distance))

wifiMod1 <- nls(Distance ~ sqrt((betaX-x)^2 + (betaY-y)^2), data=wifi, start=list(betaX=50, betaY=50) )

summary(wifiMod1)

ggplot(wifi, aes(x=x, y=y, color=Distance))+geom_point() +
  scale_color_gradient2(low="blue", mid="white", high ="red", midpoint=mean(wifi$Distance)) +
  geom_point(data=as.data.frame(t(coef(wifiMod1))), aes(x=betaX, y=betaY), size=5, color="green")

# splines
data(diamonds)
diaSpline1 <- smooth.spline(x=diamonds$carat, y=diamonds$price)
diaSpline2 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=2)
diaSpline3 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=10)
diaSpline4 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=20)
diaSpline5 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=50)
diaSpline6 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=100)

get.spline.info <- function(object){
  data.frame(x=object$x,y=object$y, df=object$df )
}

require(plyr)
require(ggplot2)

splineDF <- ldply(list(diaSpline1,diaSpline2,diaSpline3,diaSpline4,diaSpline5,diaSpline5), get.spline.info)

head(splineDF)

g <- ggplot(diamonds, aes(x=carat, y=price))+geom_point()
g+geom_line(data=splineDF, aes(x=x, y=y, color=factor(round(df,0)), group=df))
+scale_color_discrete("Degrees of \n Freedom")

require(splines)
head(ns(diamonds$carat,df=1))
head(ns(diamonds$carat,df=2))
head(ns(diamonds$carat,df=3))

g+stat_smooth(method="lm",formula=y~ns(x,6), color="blue")

# GAMs : Generalized Additive Models


# fitting decision trees and random forest
require(rpart)
credit_http_path = "http://www.jaredlander.com/data/credit.rdata"
credit_downloaded_path = "C:\\Users\\Stefan.Duprey\\Downloads\\credit.rdata"
load(credit_downloaded_path)
head(credit)


creditTree <- rpart(Credit ~ CreditAmount + Age + CreditHistory + Employment, data=credit)
creditTree
require(rpart.plot)
rpart.plot(creditTree)
rpart.plot(creditTree, extra=4)

require(useful)
require(randomForest)

CreditFormula <- Credit ~ CreditHistory + Purpose + Employment + Duration + Age + CreditAmount

CreditFormula
creditX <- build.x(CreditFormula, data=credit)
creditX

creditY <- build.y(CreditFormula, data=credit)
creditForest <- randomForest(x=creditX, y=creditY)
creditForest


# k-means clustering
wine_data_path = "http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
wine <- read.table(wine_data_path, header=TRUE, sep=",")
head(wine)
names(wine) <-c("Cultivar", "Alcohol", "Malic.acid", "Ash", "Alcanity.of.ash","Magnesium", "Total.phenols", "Flavanoids", "Nonflavanoid.phenols", "Proanthocyanins", "Color.intensity", "Hue")

wineTrain <- wine[, which(names(wine) !="Cultivar")]
set.seed(278613)


wineK3 <- kmeans(x=wineTrain, centers=3)

wineK3

require(useful)
plot(wineK3, data=wineTrain)

set.seed(278613)
wineK3N25 <- kmeans(x=wineTrain, centers=3, nstart = 25)

wineK3N25
wineK3$size
wineK3N25$size

require(useful)
plot(wineK3, data=wineTrain)

wineBest <- FitKMeans(wineTrain, max.clusters=20, nstart=25, seed=278613)

# Hartigan fitting k mean
wineBest
PlotHartigan(wineBest)


table(wine$Cultivar, wineK3N25$cluster)
plot(table(wine$Cultivar, wineK3N25$cluster), main="Confusion matrix for wine clustering", xlab="Cultivar", ylab="Clusters")

require(cluster)
theGap <- clusGap(wineTrain, FUNcluster = pam, K.max=20)
gapDF <- as.data.frame(theGap$Tab)
head(gapDF)

ggplot(gapDF, aes(x=1:nrow(gapDF)))+
  geom_line(aes(y=logW), color="blue")+
  geom_point(aes(y=logW), color="blue")+
  geom_line(aes(y=E.logW), color="green")+
  geom_point(aes(y=E.logW), color="green")+
  labs(x="Number of clusters")
  

ggplot(gapDF, aes(x=1:nrow(gapDF)))+
  geom_line(aes(y=gap), color="red")+
  geom_point(aes(y=gap), color="red")+
  geom_errorbar(aes(ymin=gap-SE.sim, ymax=gap+SE.sim), color="red")+
  labs(x="Number of clusters", y="Gap")


# robustly cluster, even with categorical data with PAM
# PAM partitioning around midoïd
# robust to outliers and works with categorical data
require(cluster)
winePam <- pam(x=wineTrain, k=4, keep.diss=TRUE, keep.data=TRUE)
winePam
plot(winePam, which.plots=2, main="" )

# hierarchical clustering
wineH <- hclust(d=dist(wineTrain))
plot(wineH)

wineH1 <- hclust(d=dist(wineTrain), method="single")
wineH2 <- hclust(d=dist(wineTrain), method="complete")
wineH3 <- hclust(d=dist(wineTrain), method="average")
wineH4 <- hclust(d=dist(wineTrain), method="centroid")

plot(wineH1, labels=FALSE, main="Single")
plot(wineH2, labels=FALSE, main="complete")
plot(wineH3, labels=FALSE, main="average")
plot(wineH4, labels=FALSE, main="centroid")

rect.hclust(wineH, k=3, border="red")
rect.hclust(wineH, k=13, border="blue")

rect.hclust(wineH, h=20, border="red")
rect.hclust(wineH, h=30, border="blue")


#






