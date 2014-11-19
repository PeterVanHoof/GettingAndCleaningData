## Download & unzip dataset
## ------------------------
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destDir <- "./data"
downloadedFile <- "./data/Dataset.zip" 

if (!file.exists(destDir)) {dir.create(destDir)}
download.file(fileURL,downloadedFile, method = "curl")
unzip(downloadedFile, exdir = destDir)