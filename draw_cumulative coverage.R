rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cumu=read.table("cumulative_depth.txt",sep="\t",header=F)
names(cumu)=c("ID","Depth(X)","Coverage / %")
p=ggplot(data=cumu,mapping=aes(x=cumu$`Depth(X)`,y=cumu$`Coverage / %`,
                              group=cumu$ID,color=cumu$ID))+
  geom_line(size=2)+
  labs(x="Depth(X)",y="Coverage / %",group="")+
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