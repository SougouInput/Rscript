setwd("D:/R/work/qc")
rm(list=ls())
library(ggplot2)
bq=read.table("base_quality.txt",sep="\t",header=T)
names(bq)=c("ID","pos","R","R")
bq1=bq[,-4]
bq2=bq[,-3]
bq2$pos=bq2$pos+130
bq3=rbind(bq1,bq2)
p=ggplot(data=bq3,mapping=aes(x=bq3$pos,y=bq3$R,group=bq3$ID,colour=bq3$ID))+
  geom_line(size=1)+
  scale_x_continuous(limits=c(0,260),breaks=c(0,100,200))+
  labs(x="Position in read",y="Mean Base Quality")+
  theme(axis.title.x=element_text(size=15),
        axis.title.y=element_text(size=15),
        axis.text.x=element_text(size=12),
        axis.text.y=element_text(size=12))+
  theme(panel.background=element_blank(),
        panel.grid=element_blank(),
        panel.border=element_blank())+
  theme(axis.line=element_line(size=1,colour="black"))+
  theme(legend.title=element_blank(),legend.key=element_blank())+
  theme(legend.key.width=unit(1,"cm"))+
  theme(legend.text=element_text(size=13))
p
  