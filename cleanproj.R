# Project for getting and cleaning data
# libraries

# Download file
# write the file url and file destination to an object
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file.dest <- './data/datazip.zip'
dir.dest <- "./data"

# download from the URL
download.file(file.url, file.dest, method='curl' )

# unzip data file
unzip(file.dest, exdir = dir.dest)

# read files