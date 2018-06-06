rm(list=ls())
setwd("D:/R/work/qc")
library(ggplot2)
library(reshape2)
align=read.table("multiqc_picard_dups.txt",sep="\t",header=T)
align=data.frame(align$Sample,align$UNMAPPED_READS,align$READ_PAIRS_EXAMINED,
                 align$READ_PAIR_DUPLICATES,align$READ_PAIR_OPTICAL_DUPLICATES,
                 align$UNPAIRED_READS_EXAMINED,align$UNPAIRED_READ_DUPLICATES)
names(align)=c("Sample","UNMAPPED_READS","READ_PAIRS_EXAMINED",
               "READ_PAIR_DUPLICATES","READ_PAIR_OPTICAL_DUPLICATES",
               "UNPAIRED_READS_EXAMINED","UNPAIRED_READ_DUPLICATES")
align=melt(align,id.vars = c("Sample"),
           variable.name = "item",value.name = "value")
p=ggplot(data=align,mapping = aes(x=Sample,y=value,fill=item))+
  geom_bar(stat = "identity")+ 
  coord_flip()+
  labs(x="",y="Count")+
  theme(axis.title.x = element_text(size=15),
        axis.title.y = element_text(size=15))+
  theme(panel.border=element_blank())+
  theme(panel.grid = element_blank())+
  theme(panel.background = element_blank())+
  theme(legend.position = "bottom")+
  theme(legend.title = element_blank())+
  theme(axis.line = element_line(size=1,colour = "black"))
p           
