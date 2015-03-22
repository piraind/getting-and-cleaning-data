# Project for getting and cleaning data
# libraries
library(read.table)
library(dplyr)

# Download file
# Set file URL and write destinations
file.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
file.dest <- './data/datazip.zip'
dir.dest <- "./data"

# download from the URL
download.file(file.url, file.dest, method='curl' )

# unzip data file
unzip(file.dest, exdir = dir.dest)

# read files into variables

tempTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
tempTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
S <- rbind(tempTrain, tempTest)

tempTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
tempTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
X <- rbind(tempTrain, tempTest)

tempTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
tempTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
Y <- rbind(tempTrain, tempTest)


# Read features
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Get mean and standard deviation measurements

usefeatures <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, usefeatures]
names(X) <- features[usefeatures, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

# Name the activities in the data set

activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"

# Combine subjects activities and measurements

names(S) <- "subject"
cleaned <- cbind(S, Y, X)

# Tidy data with the average of each variable for each activity and each subject.

uniqueSubjects = unique(S)[,1]
numSubjects = length(unique(S)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned)[2]
tidy = cleaned[1:(numSubjects*numActivities), ]

# Calculate means per subject per activity
byTidy <- group_by(tidy, subject, activity)
meanTidy <- sumarise(byTidy, mean)

write.table(meaTtidy, "tidyData.txt", row.name=FALSE)