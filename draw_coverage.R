#coverage distribution all
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
p=ggplot(data=cover,mapping=aes(x=cover$Depth,y=cover$Bases,
                              group=cover$ID,color=cover$ID))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases",group="")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))+
  theme(legend.title = element_blank(),legend.key = element_blank())+
  theme(legend.key.width = unit(1,"cm"))+
  theme(legend.text = element_text(size = 25))
p 

#coverage barc1
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
barc1=cover[cover$ID=="barc1",]
p1=ggplot(data=barc1,mapping=aes(x=barc1$Depth,y=barc1$Bases))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p1


#coverage barc2
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
barc2=cover[cover$ID=="barc2",]
p2=ggplot(data=barc2,mapping=aes(x=barc2$Depth,y=barc2$Bases))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p2

#coverage barc3
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
barc3=cover[cover$ID=="barc3",]
p3=ggplot(data=barc3,mapping=aes(x=barc3$Depth,y=barc3$Bases))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p3


#coverage barc4
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
barc4=cover[cover$ID=="barc4",]
p4=ggplot(data=barc4,mapping=aes(x=barc4$Depth,y=barc4$Bases))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p4


#coverage barc5
rm(list=ls())
setwd("D:/R/work/qc")
library("ggplot2")
cover=read.table("coverage.txt",sep="\t",header=F)
names(cover)=c("ID","Depth","Bases")
barc5=cover[cover$ID=="barc5",]
p5=ggplot(data=barc5,mapping=aes(x=barc5$Depth,y=barc5$Bases))+
  geom_line(size=2)+
  labs(x="Depth",y="Bases")+
  theme(axis.title.x = element_text(size=18),
        axis.title.y = element_text(size=18),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p5