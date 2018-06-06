rm(list=ls())
setwd("D:/R/api")
library(jsonlite)
library(tidyr)
#gene
api_gene="http://oncokb.org/api/v1/genes"
d_gene=fromJSON(api_gene,simplifyDataFrame = T)
write.table(unnest(d_gene),"gene.txt",sep="\t",row.names=F)
#evidence
id=d_gene[,1]
api_evidence=paste0("http://oncokb.org/api/v1/genes/",id[1],"/evidences")
t=fromJSON(api_evidence,simplifyDataFrame = T)
t$gene=NULL
t=unnest(t)
write.table(t,"evidence.txt",sep="\t",row.names=F)
for (i in 2:length(id))
{
  api_evidence=paste0("http://oncokb.org/api/v1/genes/",id[i],"/evidences")
  t=fromJSON(api_evidence,simplifyDataFrame = T)
  t$gene=NULL
  if (length(t)==0){next}
  else
  {
    t=unnest(t)
    write.table(t,"evidence.txt",sep="\t",col.names=F,row.names=F,append=T)
  }
}

#drugs
api_drugs="http://oncokb.org/api/v1/drugs"
d_drugs=fromJSON(api_drugs,simplifyDataFrame = T)
d_drugs$synonyms=NULL
d_drugs$atcCodes=NULL
write.table(d_drugs,"drugs.txt",sep="\t",row.names=F)
