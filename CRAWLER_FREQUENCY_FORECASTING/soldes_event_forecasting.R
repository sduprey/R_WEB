# event distribution and forecasting
my_path <- "D:\\My_Data\\My_Crawler_Frequency\\soldes.log"
crawling_events <- read.csv(file=my_path,header=FALSE, sep="|")
head(crawling_events)
class(crawling_events)

crawling_events$V1
crawling_events$V2
crawling_events$V3
class(crawling_events$V11)
my_levels <- levels(crawling_events$V11)

class(my_levels)

my_google_bot_agent<-"Googlebot/2.1 (+http://www.googlebot.com/bot.html)"
my_xenu_bot_agent<-"Xenu Link Sleuth/1.3.8"
for (my_level in my_levels)
{
  #print(my_level)
  if (my_level == my_google_bot_agent)
  {
    print(my_level)
  }
}


sum(str_detect(crawling_events$V11,ignore.case("googlebot")))

sum(str_detect(crawling_events$V11,"googlebot", ignore_case=TRUE))


sum(my_levels == my_google_bot_agent)
sum(crawling_events$V11 == my_google_bot_agent)
my_filter = crawling_events$V11 == my_google_bot_agent
sum(my_filter)

# old way we filter on the very string Googlebot/2.1 (+http://www.googlebot.com/bot.html)
#filtered_crawling_events<-crawling_events[crawling_events$V11 == my_google_bot_agent ,]

filtered_crawling_events<-crawling_events[str_detect(crawling_events$V11,ignore.case("googlebot")) ,]



filtered_crawling_events
filtered_crawling_events$v11

filtered_crawling_events$v1

names(filtered_crawling_events) <- c("Timestamp","Hit","N1","N2","N3","N4","N5","N6","TrackedUrl","N7","UserAgent" )


filtered_crawling_events$TrackedUrl


filtered_crawling_events$UserAgent


filtered_crawling_events$Timestamp


filtered_crawling_events


require(stringr)

my_processed_timestamp <- str_sub(string=filtered_crawling_events$Timestamp, start=31, end=50)


filtered_crawling_events$Timestamp <- str_sub(string=filtered_crawling_events$Timestamp, start=31, end=50)


filtered_crawling_events$Timestamp <- as.POSIXct(filtered_crawling_events$Timestamp)

class(filtered_crawling_events$Timestamp)

filtered_crawling_events$Timestamp


filtered_crawling_events$numeric_timestamp = as.numeric(filtered_crawling_events$Timestamp)
class(filtered_crawling_events$numeric_timestamp)

filtered_crawling_events$Timestamp
filtered_crawling_events$numeric_timestamp
#A01VARNIS002_201506300645.log:2015-06-30 06:59:01

my_numeric_vector = filtered_crawling_events$numeric_timestamp


my_numeric_vector = sort(my_numeric_vector, decreasing = FALSE)

my_interval_vector = diff(my_numeric_vector)

my_interval_vector

my_interval_vector <- head(my_interval_vector,-1)

plot(my_interval_vector)


my_data.my_interval_vector = my_interval_vector


theDF <- data.frame(Intervals= my_interval_vector, Index = 1:length(my_interval_vector))
# plotting the histogram
class(my_data)

require(ggplot2)

#ggplot(data)
#geom_point
#geom_histogram
#aes(x,y)




ggplot(data=theDF) + geom_histogram(aes(x=Intervals))

ggplot(theDF, aes(x=Index,y=Intervals))+geom_point() +
  geom_smooth(method="lm")

ggplot(data=theDF) + geom_histogram(aes(x=Intervals),binwidth=.1)
ggplot(data=theDF) + geom_histogram(aes(x=Intervals),binwidth=.5)
ggplot(data=diamonds) + geom_histogram(aes(x=carat),binwidth=.1)


ts.plot(my_interval_vector)

length(my_interval_vector)
my_interval_vector <-ts(my_interval_vector)


begining_times = 10 ;
prediction = c(1:length(my_interval_vector))
prediction[1:begining_times]<- my_interval_vector[1:begining_times]
for(i in begining_times:length(my_interval_vector)) {
  training_data<-my_interval_vector[1:i]
  print(length(training_data))
  #model <- ar(training_data, method="mle")
  #model <- arima(training_data, order=c(1,2,1)) 
  #model <- arima(training_data, order=c(1,1,1)) 
  model <- arima(training_data, order=c(1,2,1)) 
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
length(prediction)
ts.plot(prediction)
ts.plot(my_interval_vector)

class(prediction)
class(my_interval_vector)
rmse_arima = sqrt( mean( (prediction - my_interval_vector)^2, na.rm = TRUE) )
rmse_arima
ts.plot(my_interval_vector,prediction,lty=1:2)

theResultsDF <- data.frame(Residuals =prediction-my_interval_vector )
ggplot(data=theResultsDF) + geom_histogram(aes(x=Residuals))


mean(theResultsDF$Residuals)
rmse_arima = sqrt( mean( (prediction - my_interval_vector)^2, na.rm = TRUE) )


LM <- lm(Intervals~Index, data=theDF)

LM
summary(LM)
plot(LM)

plot(LM$residuals)
theResultsBisDF <- data.frame(Residuals =LM$residuals )
ggplot(data=theResultsBisDF) + geom_histogram(aes(x=Residuals))

mean(LM$residuals)

theResultsBisbiSDF <- data.frame(Residuals=my_interval_vector-mean(my_interval_vector) )
ggplot(data=theResultsBisDF) + geom_histogram(aes(x=Residuals))
prediction_constant = mean(my_interval_vector)
ts.plot(my_interval_vector,prediction_constant,lty=1:2)
rmse_constant = sqrt( mean( (prediction_constant - my_interval_vector)^2, na.rm = TRUE) )

mean(theResultsBisbiSDF$Residuals)
length(my_interval_vector)

ts.plot(my_interval_vector,prediction)
