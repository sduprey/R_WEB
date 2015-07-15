require(graphics)

## Predictions
x <- rnorm(15)
y <- x + rnorm(15)
predict(lm(y ~ x))
new <- data.frame(x = seq(-3, 3, 0.5))
predict(lm(y ~ x), new, se.fit = TRUE)
pred.w.plim <- predict(lm(y ~ x), new, interval = "prediction")
pred.w.clim <- predict(lm(y ~ x), new, interval = "confidence")
matplot(new$x, cbind(pred.w.clim, pred.w.plim[,-1]),
        lty = c(1,2,2,3,3), type = "l", ylab = "predicted y")



# debug time
i<- 11
training_data<-googlebotmobile_visits[1:i]
feature = 1:i
print(length(training_data))
#model <- ar(training_data, method="mle")

#new <- data.frame(x = NROW(training_data)+1)
predict(lm(training_data ~ feature))
new_data <- data.frame(feature = 1:(NROW(training_data)+1))
my_linear_prediction<-predict(lm(training_data ~ feature), new_data, se.fit = TRUE)
plot(my_linear_prediction$fit,training_data )
par(new=T)
plot(training_data )

my_next_linear_prediction <- tail(my_linear_prediction$fit, n=1)


my_linear_data_frame <- data.frame(Data_To_Regress = training_data, Feature = 1:NROW(training_data), x = NROW(training_data)+1 )
LM <- lm(Data_To_Regress~Feature, data=my_linear_data_frame)

#new <- NROW(training_data)+1



pouet<-predict(LM, my_linear_data_frame)


next_day_linear_prediction <- predict(LM, n.ahead=2)
print(class(next_day_linear_prediction))

x <- rnorm(15)
y <- x + rnorm(15)
predict(lm(y ~ x))
new <- data.frame(x = seq(-3, 3, 0.5))
predict(lm(y ~ x), new, se.fit = TRUE)


ts.plot(training_data,next_day_linear_prediction,lty=1:2)
print("houofuosudofusqodfuosqufosuf")
sprintf("Next day prediction %s", str(next_day_linear_prediction) )


model <- arima(training_data, order=c(1,1,1)) 
next_day_prediction <- predict(model, n.ahead=1)
print(class(next_day_prediction))
print(length(next_day_prediction$pred))
print(class(next_day_prediction$pred[1]))
print(next_day_prediction$pred[1])
print(class(as.integer(next_day_prediction$pred[1])))
arima_prediction[i] <- as.integer(next_day_prediction$pred[1])
constant_prediction[i]=mean(training_data)

#dsmqlkfjqmlskjdfmqsldfkqs
