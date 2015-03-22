# getting-and-cleaning-data
## Project for Coursera Getting and Cleaning Data


# Project Description from Coursera
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

#  Implementation specifics

## run_analysis.R that does the following. 

1.	Downloads the data from (
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. Unzips the data into a relative directory

3. Merges the training and the test sets to create one data set.

4. Extracts only the measurements on the mean and standard deviation for each measurement. 

5.	Uses descriptive activity names to name the activities in the data set

6.	Appropriately labels the data set with descriptive variable names. 

7. Creates a tidy data set wtih averages for each variable for each subject.

##To run the script you need to install the following libraries
1. read.table
2. dplyr
3. You need a internet connection for the script to work
4. Simple run the run_analysis.r script.  The script will download and unzip the needed data set.  The script will then load the training and test data set, remain the columns, select on columns that have mean or standard deviations, and finally calculate the average of these colmuns grouped by subject and activity.  The tidy data is then written to a file in the base directory.

