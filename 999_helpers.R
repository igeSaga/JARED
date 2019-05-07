
#path to the data on the network
dataPath<-"/Volumes/data$/ta/60 FuE/6096 SCCER/609635 FEEBD-II/60963505 Work Packages/JA RED/06-Daten/"
calcPath<-"/Volumes/data$/ta/60 FuE/6096 SCCER/609635 FEEBD-II/60963505 Work Packages/JA RED/07-Berechnungen/"



#detach all loaded packages
detachAllPackages <- function() {
  
  basic.packages <- c("package:stats","package:graphics","package:grDevices","package:utils","package:datasets","package:methods","package:base")
  
  package.list <- search()[ifelse(unlist(gregexpr("package:",search()))==1,TRUE,FALSE)]
  
  package.list <- setdiff(package.list,basic.packages)
  
  if (length(package.list)>0)  for (package in package.list) detach(package, character.only=TRUE)
  
}