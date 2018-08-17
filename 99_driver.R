#simply a driver that runs all markdown files in the JARED folder (takes a few minutes)
rm(list=ls())
library(rmarkdown)

temp <- list.files(path="../JARED/",pattern="*.Rmd")

for(i in 1:length(temp)){
  fileN<-temp[i]
  print(paste("rendering:",fileN))
  rmarkdown::render(fileN, 
                    encoding = "UTF-8",
                    output_format = "html_document",
                    clean = T, quiet = T, 
                    envir=new.env())
}


#copy all scripts and results to the T directory (takes a few minutes)
source("999_helpers.R")
new_folder<-paste(calcPath,"03_demand_potential/",sep="")
current_folder <- "/Volumes/MacHD/Users/tbderung/Documents/projects/git/JARED/"

file.copy(current_folder, 
          new_folder,
          overwrite = T,
          recursive=T,
          copy.date=T)
