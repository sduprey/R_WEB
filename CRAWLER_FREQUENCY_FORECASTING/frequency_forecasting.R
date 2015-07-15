getwd()
data_crawl <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015.csv",TRUE,";")
class(data_crawl)
head(data_crawl)

googlebotdesktop_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_desktop.csv",TRUE,";")
googlebotdesktop_data_crawl
googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =31)
plot(googlebotdesktop_visits)
plot(decompose(googlebotdesktop_visits))

googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =31)
plot(HoltWinters(googlebotdesktop_visits))




googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =14)
plot(decompose(googlebotdesktop_visits))



googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =7)
plot(decompose(googlebotdesktop_visits))


googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =7)
plot(HoltWinters(googlebotdesktop_visits))


googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =4)
plot(decompose(googlebotdesktop_visits))

googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =4)
plot(HoltWinters(googlebotdesktop_visits))


googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =2)
plot(decompose(googlebotdesktop_visits))

googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =2)
plot(HoltWinters(googlebotdesktop_visits))


ar_model_all <- ar(googlebotdesktop_visits, method="mle")
ar_model_all <- arima(googlebotdesktop_visits, order=c(2,1,2)) 

next_day_prediction <- predict(ar_model_all, n.ahead=60)
ts.plot(googlebotdesktop_visits,next_day_prediction$pred, lty=1:2)
print(class(next_day_prediction))
print(class(next_day_prediction$pred))
print(length(next_day_prediction$pred))

begining_times = 50;
prediction = c(1:length(googlebotdesktop_visits))
prediction[1:begining_times]<- googlebotdesktop_visits[1:begining_times]
for(i in begining_times:length(googlebotdesktop_visits)) {
  training_data<-googlebotdesktop_visits[1:i]
  print(length(training_data))
  ###ar_model <- ar(training_data, method="mle")
  ar_model <- arima(training_data, order=c(2,1,2)) 
  
  next_day_prediction <- predict(ar_model, n.ahead=1)
  print(class(next_day_prediction))
  print(length(next_day_prediction$pred))
  print(class(next_day_prediction$pred[1]))
  print(next_day_prediction$pred[1])
  print(class(as.integer(next_day_prediction$pred[1])))
  my_integer_prediction = as.integer(next_day_prediction$pred[1])
  prediction[i]=my_integer_prediction
}

plot(prediction)
ts.plot(googlebotdesktop_visits,prediction,lty=1:2)


googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =31)
plot(decompose(googlebotmobile_visits))


googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =31)
plot(HoltWinters(googlebotmobile_visits))


googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =15)
plot(decompose(googlebotmobile_visits))


googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =15)
plot(HoltWinters(googlebotmobile_visits))



googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =7)
plot(decompose(googlebotmobile_visits))


googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =7)
plot(HoltWinters(googlebotmobile_visits))


googlebotmobile_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv",TRUE,";")
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =4)
plot(HoltWinters(googlebotmobile_visits))


begining_times = 10 ;
prediction = c(1:length(googlebotmobile_visits))
prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]
for(i in begining_times:length(googlebotmobile_visits)) {
  training_data<-googlebotmobile_visits[1:i]
  print(length(training_data))
  model <- ar(training_data, method="mle")
  #model <- arima(training_data, order=c(2,1,2)) 
  next_day_prediction <- predict(model, n.ahead=1)
  print(class(next_day_prediction))
  print(length(next_day_prediction$pred))
  print(class(next_day_prediction$pred[1]))
  print(next_day_prediction$pred[1])
  print(class(as.integer(next_day_prediction$pred[1])))
  my_integer_prediction = as.integer(next_day_prediction$pred[1])
  prediction[i]=my_integer_prediction
}

plot(prediction)
ts.plot(googlebotmobile_visits,prediction,lty=1:2)


googlebotmobile_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv",TRUE,";")
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =4)
plot(decompose(googlebotmobile_visits))

googlebotmobile_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv",TRUE,";")
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =4)
plot(HoltWinters(googlebotmobile_visits))



googlebotdesktop_visits<-read.csv(webdata2, row.names=1)
googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =7)
googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits)

googlebotdesktop_visits

