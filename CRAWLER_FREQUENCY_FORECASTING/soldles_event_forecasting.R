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

sum(my_levels == my_google_bot_agent)
sum(crawling_events$V11 == my_google_bot_agent)
my_filter = crawling_events$V11 == my_google_bot_agent
sum(my_filter)



filtered_crawling_events<-crawling_events[crawling_events$V11 == my_google_bot_agent ,]

filtered_crawling_events
filtered_crawling_events$v11

filtered_crawling_events$v1

names(filtered_crawling_events) <- 
  
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


my_numeric_vector

my_interval_vector = diff(my_numeric_vector)

my_interval_vector

my_interval_vector <- head(my_interval_vector,-1)

plot(my_interval_vector)


presidents <- presidents[1:64,]
yearList <- str_split(string=presidents$YEAR, pattern="-")


yearMatrix <- data.frame(Reduce(rbind, yearList))
names(yearMatrix) <- c("start","stop")

presidents <- cbind(presidents, yearMatrix)


str_sub(string=presidents$PRESIDENT, start=1, end=3)
str_sub(string=presidents$PRESIDENT, start=4, end=8)


presidents[str_sub(string=president$Start, start=4, end=4) == 1, c("YEAR","PRESIDENT","Start","Stop")]


head(yearMatrix)






date1 <- as.Date("2012-06-28")
date1
class(date1)
as.numeric(date1)

date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)
date2
as.numeric(date2)





