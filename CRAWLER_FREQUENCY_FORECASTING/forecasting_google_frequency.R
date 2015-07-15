# Frequency google bot mobile forecasting
# reading the data extracted from the logs
print("Frequency google bot mobile forecasting")
google_mobile_logs_file_path <- "D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv"
google_desktop_logs_file_path <- "D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_desktop.csv"

# analysing the mobile
google_log_path <- google_mobile_logs_file_path
sprintf("Reading the data extracted from the logs : %s",google_log_path)

googlebotmobile_data_crawl  <- read.csv(google_log_path,TRUE,";")

####head(googlebotmobile_data_crawl)
####tail(googlebotmobile_data_crawl)
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits)
####class(googlebotmobile_visits)
####ts.plot(googlebotmobile_visits)

# Backtesting the one next day frequency for the whole site aggregated URLs an ARIMA model
begining_times = 10 ;
arima_prediction = c(1:length(googlebotmobile_visits))
arima_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

constant_prediction = c(1:length(googlebotmobile_visits))
constant_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

linear_prediction = c(1:length(googlebotmobile_visits))
linear_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

for(i in begining_times:length(googlebotmobile_visits)) {
  training_data<-googlebotmobile_visits[1:i]
  feature = 1:i
  # linear prediction
  new_data <- data.frame(feature = 1:(NROW(training_data)+1))
  my_linear_prediction<-predict(lm(training_data ~ feature), new_data, se.fit = TRUE)
  ####plot(my_linear_prediction$fit,training_data )
  ####par(new=T)
  ####plot(training_data )
  
  # ARIMA prediction
  model <- arima(training_data, order=c(1,1,1)) 
  next_day_prediction <- predict(model, n.ahead=1)
  ####print(class(next_day_prediction))
  ####print(length(next_day_prediction$pred))
  ####print(class(next_day_prediction$pred[1]))
  ####print(next_day_prediction$pred[1])
  ####print(class(as.integer(next_day_prediction$pred[1])))
  
  # filling up the forecasting series
  arima_prediction[i] <- as.integer(next_day_prediction$pred[1])
  constant_prediction[i]=mean(training_data)
  linear_prediction[i] <- tail(my_linear_prediction$fit, n=1)
  
  
}

# plotting the two time series together
####ts.plot(googlebotmobile_visits,prediction,lty=1:2)
my_results_df <- data.frame(ARIMA_Prediction =arima_prediction, Constant_Prediction = constant_prediction, Linear_Prediction = linear_prediction, Entry = googlebotmobile_visits,  Days= 1:NROW(prediction))

# plotting the two time series together (only the points) for the arima modeling
require(ggplot2)
g <- ggplot(my_results_df, aes(x=Days, y=Entry))
g + geom_smooth(method="lm") + geom_point(aes(x=Days,y=Entry,color='real data')) + geom_point(aes(x=Days,y=ARIMA_Prediction,color='ARIMA forecast'))+ geom_point(aes(x=Days,y=Constant_Prediction,color='Constant forecast')) + geom_point(aes(x=Days,y=Linear_Prediction,color='Linear forecast'))

# computing the root mean squared error
sprintf("Data extracted from the logs : %s",google_log_path)
arima_rmse_constant = sqrt( mean( (my_results_df$ARIMA_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("ARIMA RMSE for ARIMA model %f", arima_rmse_constant)


constant_rmse_constant = sqrt( mean( (my_results_df$Constant_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("Constant RMSE for constant model %f", constant_rmse_constant)


linear_rmse_constant = sqrt( mean( (my_results_df$Linear_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("Linear RMSE for linear model %f", linear_rmse_constant)


# analysing the desktop
google_log_path <- google_desktop_logs_file_path
sprintf("Reading the data extracted from the logs : %s",google_log_path)
googlebotmobile_data_crawl  <- read.csv(google_log_path,TRUE,";")

####head(googlebotmobile_data_crawl)
####tail(googlebotmobile_data_crawl)
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits)
####class(googlebotmobile_visits)
####ts.plot(googlebotmobile_visits)

# Backtesting the one next day frequency for the whole site aggregated URLs an ARIMA model
begining_times = 10 ;
arima_prediction = c(1:length(googlebotmobile_visits))
arima_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

constant_prediction = c(1:length(googlebotmobile_visits))
constant_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

linear_prediction = c(1:length(googlebotmobile_visits))
linear_prediction[1:begining_times]<- googlebotmobile_visits[1:begining_times]

for(i in begining_times:length(googlebotmobile_visits)) {
  training_data<-googlebotmobile_visits[1:i]
  feature = 1:i
  # linear prediction
  new_data <- data.frame(feature = 1:(NROW(training_data)+1))
  my_linear_prediction<-predict(lm(training_data ~ feature), new_data, se.fit = TRUE)
  ####plot(my_linear_prediction$fit,training_data )
  ####par(new=T)
  ####plot(training_data )
  
  # ARIMA prediction
  model <- arima(training_data, order=c(1,1,1)) 
  next_day_prediction <- predict(model, n.ahead=1)
  ####print(class(next_day_prediction))
  ####print(length(next_day_prediction$pred))
  ####print(class(next_day_prediction$pred[1]))
  ####print(next_day_prediction$pred[1])
  ####print(class(as.integer(next_day_prediction$pred[1])))
  
  # filling up the forecasting series
  arima_prediction[i] <- as.integer(next_day_prediction$pred[1])
  constant_prediction[i]=mean(training_data)
  linear_prediction[i] <- tail(my_linear_prediction$fit, n=1)
  
  
}

# plotting the two time series together
####ts.plot(googlebotmobile_visits,prediction,lty=1:2)
my_results_df <- data.frame(ARIMA_Prediction =arima_prediction, Constant_Prediction = constant_prediction, Linear_Prediction = linear_prediction, Entry = googlebotmobile_visits, Days = 1:NROW(prediction))

# plotting the two time series together (only the points) for the arima modeling
require(ggplot2)
g <- ggplot(my_results_df, aes(x=Days, y=Entry))
g + geom_smooth(method="lm") + geom_point(aes(x=Days,y=Entry,color='real data')) + geom_point(aes(x=Days,y=ARIMA_Prediction,color='ARIMA forecast'))+ geom_point(aes(x=Days,y=Constant_Prediction,color='Constant forecast')) + geom_point(aes(x=Days,y=Linear_Prediction,color='Linear forecast'))

# computing the root mean squared error
sprintf("Data extracted from the logs : %s",google_log_path)
arima_rmse_constant = sqrt( mean( (my_results_df$ARIMA_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("ARIMA RMSE for ARIMA model %f", arima_rmse_constant)


constant_rmse_constant = sqrt( mean( (my_results_df$Constant_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("Constant RMSE for constant model %f", constant_rmse_constant)


linear_rmse_constant = sqrt( mean( (my_results_df$Linear_Prediction - my_results_df$Entry)^2, na.rm = TRUE) )
sprintf("Linear RMSE for linear model %f", linear_rmse_constant)


