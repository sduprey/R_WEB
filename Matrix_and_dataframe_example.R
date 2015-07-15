
> afterlife <- matrix(c(435,147,375,134),nrow=2,byrow=TRUE)
> afterlifer
Erreur : objet 'afterlifer' introuvable
> afterlife
     [,1] [,2]
[1,]  435  147
[2,]  375  134
> dimnames(afterlife)<-list(c("Female","Male"),c("Yes","No"))
> afterlife
       Yes  No
Female 435 147
Male   375 134
> names(dimnames(afterlifer))<- c("Gender","Believer")
Error in names(dimnames(afterlifer)) <- c("Gender", "Believer") : 
  objet 'afterlifer' introuvable
> names(dimnames(afterlife))<- c("Gender","Believer")
> afterlife
        Believer
Gender   Yes  No
  Female 435 147
  Male   375 134
> tot <- sum(afterlife)
> tot
[1] 1091
> afterlife/tot
        Believer
Gender         Yes        No
  Female 0.3987168 0.1347388
  Male   0.3437214 0.1228231
> class(afterlife)
[1] "matrix"
> rowtot <- apply(afterlife,1,sum)
> rowtot
Female   Male 
   582    509 
> coltot <- apply(afterlife,2,sum)
> coltot
Yes  No 
810 281 
> rowpct <- sweep(afterlife,1,rowtot,"/")
> rowpct
        Believer
Gender         Yes        No
  Female 0.7474227 0.2525773
  Male   0.7367387 0.2632613
> round(rowpct,3)
        Believer
Gender     Yes    No
  Female 0.747 0.253
  Male   0.737 0.263
> sweep(afterlife,2,coltot,"/")
        Believer
Gender        Yes        No
  Female 0.537037 0.5231317
  Male   0.462963 0.4768683
> Gender<- c("Female","Female","Male","Male")
> Believer<-c("Yes","No","Yes","No")
> Count<-c(435,147,375,134)
> afterlife<-data.frame(Gender, Believern Count)
Erreur : unexpected symbol in "afterlife<-data.frame(Gender, Believern Count"
> afterlife<-data.frame(Gender, Believer, Count)
> afterlife
  Gender Believer Count
1 Female      Yes   435
2 Female       No   147
3   Male      Yes   375
4   Male       No   134
> rm((Gender, Believer, Count)
Erreur : ',' inattendu(e) in "rm((Gender,"
> rm(Gender, Believer, Count)
> attach(afterlife)
> afterlife
  Gender Believer Count
1 Female      Yes   435
2 Female       No   147
3   Male      Yes   375
4   Male       No   134
> class(c)
[1] "function"
> c
function (..., recursive = FALSE)  .Primitive("c")
> beliefs<-tapply(Count,list(Gender,Believer), c)
> beliefs
        No Yes
Female 147 435
Male   134 375
> afterlife
  Gender Believer Count
1 Female      Yes   435
2 Female       No   147
3   Male      Yes   375
4   Male       No   134
> detach(afterlife)
> names(dimnames(beliers))<- c("Gender","Believer")
Error in names(dimnames(beliers)) <- c("Gender", "Believer") : 
  objet 'beliers' introuvable
> beliefs
        No Yes
Female 147 435
Male   134 375
> names(dimnames(beliefs))<- c("Gender","Believer")
> beliefs
        Believer
Gender    No Yes
  Female 147 435
  Male   134 375
>  beliefs <- beliefs[,c(2,1)]
> beliefs
        Believer
Gender   Yes  No
  Female 435 147
  Male   375 134
> phs <- matrix(c(189,10845,104,10933),byrow=TRUE,ncol=2)
> phs
     [,1]  [,2]
[1,]  189 10845
[2,]  104 10933
> dimnames(phs)<-list(Group=c("Placebo","Aspirin"),MI=c("Yes","No"))
> phs
         MI
Group     Yes    No
  Placebo 189 10845
  Aspirin 104 10933
> prop.test(phs)

        2-sample test for equality of proportions with continuity correction

data:  phs
X-squared = 24.429, df = 1, p-value = 7.71e-07
alternative hypothesis: two.sided
95 percent confidence interval:
 0.004597134 0.010814914
sample estimates:
    prop 1     prop 2 
0.01712887 0.00942285 

> 
