
rm(list=ls())
setwd("D:/R/work")
raw=readLines("http://news.ifeng.com/mainland/special/ptxyy/",
              encoding="UTF-8")
rawHospital = raw[124 : 239]
extFun=function(x)
{
  split=strsplit(x,"','") 
  out=strsplit(split[[1]][2],"<br/>")
  return(out)
}
extFun(rawHospital[1])
hoslist=sapply(rawHospital,extFun)
hospital=c()
for (i in 1:length(hoslist))
{
  hospital=append(hospital,hoslist[[i]])
}
install.packages("devtools")
install_github("badbye/baidumap")
install_github("lchiffon/REmap")
library(baidumap)
options(baidumap.key='Y0o4CNcY1uzstGQBl7psqHeGmuNeabKF')
blackHospital=getCoordinate(hospital,output='xml',formatted = T)
blackHospital=na.omit(blackHospital)
plotdata=data.frame(lon=blackHospital[,1],
                    lat=blackHospital[,2],
                    city=rownames(blackHospital))
library(REmap)
remapB(markPointData = data.frame(plotdata$city),
       markPointTheme = markPointControl(symbol = "pin",effect = F,
                                         symbolSize = 5,color = "red"),
       geoData = plotdata)
