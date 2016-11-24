#///////////////////////////////////////////////////////////////
#__author__ = "BEN HASSINE Najla(bhndevtools@gmail.com)"#///////
#__version__ = "1.0.0"                                  #///////
#__copyright__ = "Copyright BHNtools (c) 2016 BHN"      #///////
#__license__ = "BHN-TOOLS - DEV"                        #///////
#__created__ = "JULY 2016 - BHN"                        #///////
#__modified__ = "JULY 2016  - BHN"                      #///////
#///////////////////////////////////////////////////////////////

#************** TOPIC *****************
#     TESTING SIZING WITH ggplot2
#************** TOPIC *****************



#_LOAD lib
#===============================================================
source("../munge/loadWsLib.R")

#_LOAD data
#===============================================================
load("../data/openData.RData")
ls()
df=data.frame(dOut_x,dOut_y,d_pvalue)


#_DRAW plot
#===============================================================
png("../graphs/ggplot2sizing.png",height=400,width=850)


#Graph1 basic only geom_point
grO <-ggplot(data=df) + aes(x=dOut_x,y=dOut_y, size=-log(d_pvalue)) + geom_point(alpha=0.5, col='blue')+labs(title = "*-log: basic*", plot.title = element_text(hjust = 0))

#Graph2 with scale_color_gradien -log
grTw <-ggplot(data=df, aes(x=dOut_x,y=dOut_y, size=-log(d_pvalue), color=dOut_y))+geom_point(alpha=0.25)+scale_colour_gradientn(colours=rainbow(4))+labs(title = "*-log*", plot.title = element_text(hjust = 0))

#Graph3 with scale_color_gradien :: log10
grTh <-ggplot(data=df, aes(x=dOut_x,y=dOut_y, size=log10(d_pvalue), color=dOut_y))+geom_point(alpha=0.25)+scale_colour_gradientn(colours=rainbow(4))+labs(title = "*log10*", plot.title = element_text(hjust = 0))

#Draw it all
grid.arrange(grO, grTw, grTh, ncol=3, top="Stack*R: ggplot2-Sizing")

dev.off()

