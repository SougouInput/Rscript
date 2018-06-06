rm(list=ls())
setwd("D:/R/work/qc")
library(ggplot2)
library(reshape2)
base1=read.table("barc5.R1.txt",sep="\t",skip =2,header = F)
base2=read.table("barc5.R2.txt",sep="\t",skip =2,header = F)
base1=data.frame(base1[,1],base1[,3:7])
base2=data.frame(base2[,1],base2[,3:7])
names(base1)=c("pos","%A","%C","%G","%T","%N")
names(base2)=c("pos","%A","%C","%G","%T","%N")
base1=base1[-1,]
base2=base2[-1,]
x1=melt(base1,id.vars = "pos",variable.name ="item",value.name = "value" )
x2=melt(base2,id.vars = "pos",variable.name ="item",value.name = "value" )
x1=x1[order(x1$pos,decreasing = F),]
x2=x2[order(x2$pos,decreasing = F),]
x1$pos=as.numeric(as.character(x1$pos))
x2$pos=as.numeric(as.character(x2$pos))
x2$pos=x2$pos+130
x3=rbind(x1,x2)
p=ggplot(data=x3,mapping = aes(x=x3$pos,y=x3$value,group=x3$item,color=x3$item))+
  geom_line(size=1)+
  #geom_line(data=x2,mapping = aes(x=x2$pos+130,y=x2$value),size=1)+
  scale_x_continuous(limits = c(0,260),breaks = c(0,100,200))+
  labs(x="Position in read",y="Base content / %")+
  theme(axis.title.x = element_text(size=15),
        axis.title.y = element_text(size=15),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))+
  theme(legend.title = element_blank(),legend.key = element_blank())+
  theme(legend.key.width = unit(1,"cm"))+
  theme(legend.text = element_text(size = 13))+
  scale_colour_hue(labels=c("A","C","G","T","N"))
p