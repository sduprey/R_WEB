# event distribution and forecasting
my_path <- "D:\\My_Data\\My_Crawler_Frequency\\electromenager.log"
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

my_filter = str_detect(crawling_events$V11,ignore.case("googlebot"))

my_blank = crawling_events$V11 == ""

sum(my_filter)
filtered_crawling_events<-crawling_events[my_filter ,]
internautes_filtered_crawling_events<-crawling_events[!my_filter & !my_blank ,]
NROW(filtered_crawling_events)
NCOL(filtered_crawling_events)
NROW(internautes_filtered_crawling_events)
NCOL(internautes_filtered_crawling_events)


names(filtered_crawling_events) <- c("Timestamp","Hit","N1","N2","N3","N4","N5","N6","TrackedUrl","N7","UserAgent" )
names(internautes_filtered_crawling_events) <- c("Timestamp","Hit","N1","N2","N3","N4","N5","N6","TrackedUrl","N7","UserAgent" )


filtered_crawling_events$Timestamp <- str_sub(string=filtered_crawling_events$Timestamp, start=31, end=50)
internautes_filtered_crawling_events$Timestamp <- str_sub(string=internautes_filtered_crawling_events$Timestamp, start=31, end=50)

filtered_crawling_events$Timestamp 
tail(internautes_filtered_crawling_events$Timestamp, 100)
head(internautes_filtered_crawling_events$Timestamp, 100)


filtered_crawling_events$Timestamp <- as.POSIXct(filtered_crawling_events$Timestamp)
internautes_filtered_crawling_events$Timestamp <- as.POSIXct(internautes_filtered_crawling_events$Timestamp)

#for (my_indice in 1:NROW(internautes_filtered_crawling_events))
#{
#  print("To convert : ")
#  print(internautes_filtered_crawling_events[my_indice,"Timestamp"])
#  pouet <- as.POSIXct(internautes_filtered_crawling_events[my_indice,"Timestamp"])
#  print(pouet)
#  print(my_indice)
#}

filtered_crawling_events$Timestamp

tail(internautes_filtered_crawling_events$Timestamp, 200)
head(internautes_filtered_crawling_events$Timestamp, 200)



filtered_crawling_events$numeric_timestamp = as.numeric(filtered_crawling_events$Timestamp)
internautes_filtered_crawling_events$numeric_timestamp = as.numeric(internautes_filtered_crawling_events$Timestamp)


tail(internautes_filtered_crawling_events$numeric_timestamp, 100)


filtered_crawling_events$Timestamp
internautes_filtered_crawling_events$Timestamp


filtered_crawling_events$numeric_timestamp
internautes_filtered_crawling_events$numeric_timestamp




class(filtered_crawling_events$Timestamp)



filtered_crawling_events
filtered_crawling_events$v11

filtered_crawling_events$v1



filtered_crawling_events$TrackedUrl


filtered_crawling_events$UserAgent


filtered_crawling_events$Timestamp


filtered_crawling_events


require(stringr)

#my_processed_timestamp <- str_sub(string=filtered_crawling_events$Timestamp, start=31, end=50)


class(filtered_crawling_events$numeric_timestamp)

filtered_crawling_events$Timestamp
filtered_crawling_events$numeric_timestamp
#A01VARNIS002_201506300645.log:2015-06-30 06:59:01

my_google_numeric_vector = filtered_crawling_events$numeric_timestamp
my_internautes_numeric_vector = internautes_filtered_crawling_events$numeric_timestamp


my_google_numeric_vector = sort(my_google_numeric_vector, decreasing = FALSE)
my_internautes_numeric_vector = sort(my_internautes_numeric_vector, decreasing = FALSE)


plot(my_google_numeric_vector, rep(1, NROW(my_google_numeric_vector)))
plot(my_internautes_numeric_vector, rep(1, NROW(my_internautes_numeric_vector)))


my_google_numeric_vector

begining_time <- min(c(min(my_google_numeric_vector),min(my_internautes_numeric_vector)))
ending_time <- max(c(max(my_google_numeric_vector),max(my_internautes_numeric_vector)))
my_time_meshing_dimension <- max(diff(my_google_numeric_vector))/10
# we go for 100 time periods
mesh_beginning_time=begining_time
i<-1
my_google_bot_number_of_passings=c()
my_internautes_number_of_passings=c()
while(mesh_beginning_time <= ending_time)
{
  mesh_beginning_time <- begining_time+(i-1)*my_time_meshing_dimension
  #print(mesh_beginning_time)
  mesh_ending_time <- begining_time+i*my_time_meshing_dimension
  #print(mesh_ending_time)
  my_google_bot_number_of_passing = sum(((my_google_numeric_vector >=  mesh_beginning_time) & (my_google_numeric_vector <=  mesh_ending_time)))
  print("Bot passings :")
  print(my_google_bot_number_of_passing)
  my_google_bot_number_of_passings<-c(my_google_bot_number_of_passing,my_google_bot_number_of_passings)
  print("Internautes passings")
  my_internautes_number_of_passing = sum(((my_internautes_numeric_vector >=  mesh_beginning_time) & (my_internautes_numeric_vector <=  mesh_ending_time)))
  print(my_internautes_number_of_passing)
  my_internautes_number_of_passings<-c(my_internautes_number_of_passing,my_internautes_number_of_passings)
  i<-i+1
}

my_series_df <- data.frame(Internautes =my_internautes_number_of_passings, Bots = my_google_bot_number_of_passings, Time_Periods = 1:NROW(my_google_bot_number_of_passings) )
require(ggplot2)

g <- ggplot(my_series_df, aes(x=Time_Periods, y=Internautes))
g + geom_point(aes(x=Time_Periods,y=Internautes,color='r')) + geom_point(aes(x=Time_Periods,y=Bots,color='b'))

g <- ggplot(my_series_df, aes(x=Time_Periods, y=Internautes))
g + geom_point(aes(x=Time_Periods,y=Internautes,color='r'))

g <- ggplot(my_series_df, aes(x=Time_Periods, y=Internautes))
g + geom_point(aes(x=Time_Periods,y=Bots,color='b'))

plot(my_google_bot_number_of_passings)

plot(my_internautes_number_of_passings)

require(pracma)

plotyy(my_series_df$Time_Periods,my_series_df$Internautes, my_series_df$Time_Periods, my_series_df$Bots, main = "Two-ordinates Plot")

# trying here to predict the crawling time frequency
my_frequency_vector <-ts(my_series_df$Bots)


begining_times = 10 ;
prediction = c(1:length(my_frequency_vector))
prediction[1:begining_times]<- my_frequency_vector[1:begining_times]
for(i in begining_times:length(my_frequency_vector)) {
  training_data<-my_frequency_vector[1:i]
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
ts.plot(my_frequency_vector)

class(prediction)
class(my_frequency_vector)
rmse_arima = sqrt( mean( (prediction - my_frequency_vector)^2, na.rm = TRUE) )
rmse_arima
ts.plot(my_frequency_vector,prediction,lty=1:2)

my_results_df <- data.frame(Prediction =prediction, Entry = my_frequency_vector, Time_Periods = 1:NROW(prediction) )
require(ggplot2)

g <- ggplot(my_results_df, aes(x=Time_Periods, y=Entry))
g + geom_point(aes(x=Time_Periods,y=Entry,color='r')) + geom_point(aes(x=Time_Periods,y=Prediction,color='b'))


ggplot(my_results_df, aes(x=Time_Periods,y=Entry))+geom_point() +
  geom_smooth(method="lm")



require(WDI)
cor(my_series_df$Bots,my_series_df$Internautes)

acf(my_series_df$Bots,my_series_df$Internautes)

my_google_interval_vector = diff(my_google_numeric_vector)
my_internautes_interval_vector = diff(my_internautes_numeric_vector)


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



ts.plot(my_interval_vector)

length(my_interval_vector)
# trying here to predict the time interval between two crawls
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
