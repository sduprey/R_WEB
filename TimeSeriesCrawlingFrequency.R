getwd()
data_crawl <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015.csv",TRUE,";")
class(data_crawl)
head(data_crawl)

googlebotdesktop_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_desktop.csv",TRUE,";")


googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =365)
googlebotdesktop_visits
plot(decompose(googlebotdesktop_visits))

googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits)
googlebotdesktop_visits
plot(HoltWinters(googlebotdesktop_visits))


googlebotmobile_data_crawl  <- read.csv("D:\\My_Data\\My_Crawler_Frequency\\crawl_2015_googlebot_mobile.csv",TRUE,";")
googlebotmobile_visits<-ts(googlebotmobile_data_crawl$Visits, start=c(2015,1), freq =365)
plot(decompose(googlebotmobile_visits))




googlebotdesktop_visits<-read.csv(webdata2, row.names=1)
googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits, start=c(2015,1,1), freq =7)
googlebotdesktop_visits<-ts(googlebotdesktop_data_crawl$Visits)

googlebotdesktop_visits


