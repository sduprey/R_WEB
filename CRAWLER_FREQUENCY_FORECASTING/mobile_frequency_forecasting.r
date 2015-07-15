
googlebotmobile_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv",TRUE,";")
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =4)
plot(HoltWinters(googlebotmobile_visits))

begining_times = 10 ;
prediction = c(1:length(googlebotmobile_visits))
prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]
for(i in begining_times:length(googlebotmobile_visits)) {
  training_data<-googlebotmobile_visits[1:i]
  print(length(training_data))
  #model <- ar(training_data, method="mle")
  model <- arima(training_data, order=c(1,1,1)) 
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
