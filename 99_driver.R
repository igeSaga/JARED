#simply a driver that runs all markdown files in the folder

library(rmarkdown)

temp <- list.files(path="../JARED/",pattern="*.Rmd")
temp

for(fileN in temp){
  print(paste("rendering:",fileN))
  rmarkdown::render(fileN)
}
