library(ggplot2)
x <- read.csv("iaest2.csv", stringsAsFactors=FALSE, fileEncoding="latin1")
dur<-aggregate(x$Min.Weeks, by=list(x=x$Min.Weeks,y=x$Max.Weeks),length)
names(dur)[3]<-"count"
ggplot(dur, aes(x=x,y=y))+geom_point(aes(size=count, colour=""))+xlab("Minimum Weeks")+ylab("Maximum Weeks")+theme(legend.position="none")