rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
ins=read.table("insert.txt",sep="\t",header=F)
names(ins)=c("ID","Insert size","Count")
p=ggplot(data=ins,mapping=aes(x=ins$`Insert size`,y=ins$Count,
                              group=ins$ID,color=ins$ID))+
  geom_line(size=2)+
  labs(x="Insert size / bp",y="Count",group="")+
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