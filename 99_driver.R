#simply a driver that runs all markdown files in the JARED folder (takes a few minutes)
rm(list=ls())
library(rmarkdown)

temp <- list.files(path="../JARED/",pattern="*.Rmd")

i<-1
for(i in 1:length(temp)){
  fileN<-temp[i]
  print(paste("rendering:",fileN))
  rmarkdown::render(fileN,encoding = "UTF-8")
}


#copy all scripts and results to the T directory (takes a few minutes)
new_folder<-"/Volumes/data$/ta/60 FuE/6096 SCCER/609635 FEEBD-II/60963505 Work Packages/JA RED/07-Berechnungen/03_demand_potential/"
current_folder <- "/Volumes/MacHD/Users/tbderung/Documents/projects/git/JARED/"

file.copy(current_folder, new_folder,overwrite = T,recursive=T,copy.date=T)
