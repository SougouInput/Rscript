rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
gc=read.table("gc.txt",sep="\t",header=F)
gc=data.frame(gc[,1],gc[,2],(gc[,3]+gc[,4]))
names(gc)=c("ID","GC Content%","Count")
p=ggplot(data=gc,mapping=aes(x=gc$`GC Content%`,y=gc$Count,group=gc$ID,color=gc$ID))+
  geom_line(size=1)+
  labs(x="GC Content / %",y="Count",group="")+
  theme(axis.title.x = element_text(size=20),
        axis.title.y = element_text(size=20),
        axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))+
  theme(legend.title = element_blank(),legend.key = element_blank())+
  theme(legend.key.width = unit(1,"cm"))+
  theme(legend.text = element_text(size = 13))
p 