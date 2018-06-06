rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
len=read.table("len.txt",sep="\t",header=F)
names(len)=c("ID","Length","Reads")
p=ggplot(data=len,aes(x=len$Length,y=len$Reads,fill=len$ID))+
      geom_bar(stat="identity",width = 1,position = "dodge")+
      labs(x="Length",y="Reads",fill="")+
      theme(axis.title.x = element_text(size=15),
            axis.title.y = element_text(size=15))+
      theme(panel.border=element_blank())+
      theme(panel.grid = element_blank())+
      theme(panel.background = element_blank())+
      theme(axis.line = element_line(size=1,colour = "black"))
p           