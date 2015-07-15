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


1:10
10:1
-2:3
5:-7

x <- 1:10
y<- -5:4

x+y
x-y
x/y

x^y
length(x)
length(x+y)
x+c(1,2)
x+c(1,2,3)

x<=5
x > y
y > x
x < y
y <- -4:5
y
x<y
any(x<y)
all(x<y)


q <- c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse",
       "Basketball","Tennis","Cricket","Soccer")
q
nchar(q)
f <- 7
x
x[1]
x[1:2]
x[c(1,4)]

c(One="a", Two="y", Last="r")


w <- 1:3
w


names(w) <- c("a","b","c")
w

q2 <- c(q, "Hockey","Lacrosse","Hockey", "Water Polo","Hockey","Lacrosse")
q2

q2Factor <- factor(q2)
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

