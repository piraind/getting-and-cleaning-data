# getting-and-cleaning-data
## Project for Coursera Getting and Cleaning Data
## Code book for week 3 project

##General data information and location(as per Coursera)
ne of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Script: run_analysis.R

##Data decription

###Combined X_train.txt and X_test.txt

'data.frame':	10299 obs. of  66 variables:

 $ tbodyacc-mean-x          : num  0.289 0.278 0.28 0.279 0.277 ...
 $ tbodyacc-mean-y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ tbodyacc-mean-z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ tbodyacc-std-x           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ tbodyacc-std-y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ tbodyacc-std-z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ tgravityacc-mean-x       : num  0.963 0.967 0.967 0.968 0.968 ...
 $ tgravityacc-mean-y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
 $ tgravityacc-mean-z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
 $ tgravityacc-std-x        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
 $ tgravityacc-std-y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
 $ tgravityacc-std-z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
 $ tbodyaccjerk-mean-x      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
 $ tbodyaccjerk-mean-y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
 $ tbodyaccjerk-mean-z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
 $ tbodyaccjerk-std-x       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
 $ tbodyaccjerk-std-y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
 $ tbodyaccjerk-std-z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
 $ tbodygyro-mean-x         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
 $ tbodygyro-mean-y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
 $ tbodygyro-mean-z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
 $ tbodygyro-std-x          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
 $ tbodygyro-std-y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
 $ tbodygyro-std-z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
 $ tbodygyrojerk-mean-x     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
 $ tbodygyrojerk-mean-y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
 $ tbodygyrojerk-mean-z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
 $ tbodygyrojerk-std-x      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
 $ tbodygyrojerk-std-y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
 $ tbodygyrojerk-std-z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
 $ tbodyaccmag-mean         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tbodyaccmag-std          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tgravityaccmag-mean      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tgravityaccmag-std       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tbodyaccjerkmag-mean     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
 $ tbodyaccjerkmag-std      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
 $ tbodygyromag-mean        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
 $ tbodygyromag-std         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
 $ tbodygyrojerkmag-mean    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
 $ tbodygyrojerkmag-std     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodyacc-mean-x          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
 $ fbodyacc-mean-y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
 $ fbodyacc-mean-z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
 $ fbodyacc-std-x           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
 $ fbodyacc-std-y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
 $ fbodyacc-std-z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
 $ fbodyaccjerk-mean-x      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
 $ fbodyaccjerk-mean-y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
 $ fbodyaccjerk-mean-z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
 $ fbodyaccjerk-std-x       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
 $ fbodyaccjerk-std-y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
 $ fbodyaccjerk-std-z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
 $ fbodygyro-mean-x         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
 $ fbodygyro-mean-y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
 $ fbodygyro-mean-z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
 $ fbodygyro-std-x          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
 $ fbodygyro-std-y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
 $ fbodygyro-std-z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
 $ fbodyaccmag-mean         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
 $ fbodyaccmag-std          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
 $ fbodybodyaccjerkmag-mean : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
 $ fbodybodyaccjerkmag-std  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
 $ fbodybodygyromag-mean    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
 $ fbodybodygyromag-std     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
 $ fbodybodygyrojerkmag-mean: num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodybodygyrojerkmag-std : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...

###Combined Y_train.txt and Y_test.txt

'data.frame':	10299 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...

###Combined S_train.txt and S_test.txt

'data.frame':	10299 obs. of  1 variable:
 $ V1: int  1 1 1 1 1 1 1 1 1 1 ...
 
 ###Base features.txt
 
 'data.frame':	561 obs. of  2 variables:
 $ V1: int  1 2 3 4 5 6 7 8 9 10 ...
 $ V2: Factor w/ 477 levels "angle(tBodyAccJerkMean),gravityMean)",..: 243 244 245 250 251 252 237 238 239 240 ...
 
 ###Base actvity_labels.txt
 
 'data.frame':	6 obs. of  2 variables:
 $ V1: int  1 2 3 4 5 6
 $ V2: chr  "walking" "walkingupstairs" "walkingdownstairs" "sitting" ...
 
 ###Intermediate tidy set with subject, activity, and new labels
 
 'data.frame':	10299 obs. of  68 variables:
 $ subject                  : int  1 1 1 1 1 1 1 1 1 1 ...
 $ activity                 : chr  "standing" "standing" "standing" "standing" ...
 $ tbodyacc-mean-x          : num  0.289 0.278 0.28 0.279 0.277 ...
 $ tbodyacc-mean-y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ tbodyacc-mean-z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ tbodyacc-std-x           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ tbodyacc-std-y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ tbodyacc-std-z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ tgravityacc-mean-x       : num  0.963 0.967 0.967 0.968 0.968 ...
 $ tgravityacc-mean-y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
 $ tgravityacc-mean-z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
 $ tgravityacc-std-x        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
 $ tgravityacc-std-y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
 $ tgravityacc-std-z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
 $ tbodyaccjerk-mean-x      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
 $ tbodyaccjerk-mean-y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
 $ tbodyaccjerk-mean-z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
 $ tbodyaccjerk-std-x       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
 $ tbodyaccjerk-std-y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
 $ tbodyaccjerk-std-z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
 $ tbodygyro-mean-x         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
 $ tbodygyro-mean-y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
 $ tbodygyro-mean-z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
 $ tbodygyro-std-x          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
 $ tbodygyro-std-y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
 $ tbodygyro-std-z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
 $ tbodygyrojerk-mean-x     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
 $ tbodygyrojerk-mean-y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
 $ tbodygyrojerk-mean-z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
 $ tbodygyrojerk-std-x      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
 $ tbodygyrojerk-std-y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
 $ tbodygyrojerk-std-z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
 $ tbodyaccmag-mean         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tbodyaccmag-std          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tgravityaccmag-mean      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
 $ tgravityaccmag-std       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
 $ tbodyaccjerkmag-mean     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
 $ tbodyaccjerkmag-std      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
 $ tbodygyromag-mean        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
 $ tbodygyromag-std         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
 $ tbodygyrojerkmag-mean    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
 $ tbodygyrojerkmag-std     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodyacc-mean-x          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
 $ fbodyacc-mean-y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
 $ fbodyacc-mean-z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
 $ fbodyacc-std-x           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
 $ fbodyacc-std-y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
 $ fbodyacc-std-z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
 $ fbodyaccjerk-mean-x      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
 $ fbodyaccjerk-mean-y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
 $ fbodyaccjerk-mean-z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
 $ fbodyaccjerk-std-x       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
 $ fbodyaccjerk-std-y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
 $ fbodyaccjerk-std-z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
 $ fbodygyro-mean-x         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
 $ fbodygyro-mean-y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
 $ fbodygyro-mean-z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
 $ fbodygyro-std-x          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
 $ fbodygyro-std-y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
 $ fbodygyro-std-z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
 $ fbodyaccmag-mean         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
 $ fbodyaccmag-std          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
 $ fbodybodyaccjerkmag-mean : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
 $ fbodybodyaccjerkmag-std  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
 $ fbodybodygyromag-mean    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
 $ fbodybodygyromag-std     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
 $ fbodybodygyrojerkmag-mean: num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
 $ fbodybodygyrojerkmag-std : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 
 ###Tidy data set
 
 'data.frame':	180 obs. of  68 variables:
 $ subject                  : int  1 1 1 1 1 1 3 3 3 3 ...
 $ activity                 : chr  "walking" "walkingupstairs" "walkingdownstairs" "sitting" ...
 $ tbodyacc-mean-x          : num  0.277 0.255 0.289 0.261 0.279 ...
 $ tbodyacc-mean-y          : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ tbodyacc-mean-z          : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ tbodyacc-std-x           : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ tbodyacc-std-y           : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ tbodyacc-std-z           : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ tgravityacc-mean-x       : num  0.935 0.893 0.932 0.832 0.943 ...
 $ tgravityacc-mean-y       : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ tgravityacc-mean-z       : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ tgravityacc-std-x        : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ tgravityacc-std-y        : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ tgravityacc-std-z        : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ tbodyaccjerk-mean-x      : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ tbodyaccjerk-mean-y      : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ tbodyaccjerk-mean-z      : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 $ tbodyaccjerk-std-x       : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 $ tbodyaccjerk-std-y       : num  0.067 -0.378 -0.102 -0.981 -0.986 ...
 $ tbodyaccjerk-std-z       : num  -0.503 -0.707 -0.346 -0.988 -0.992 ...
 $ tbodygyro-mean-x         : num  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
 $ tbodygyro-mean-y         : num  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
 $ tbodygyro-mean-z         : num  0.0849 0.0584 0.0901 0.0629 0.0748 ...
 $ tbodygyro-std-x          : num  -0.474 -0.545 -0.458 -0.977 -0.987 ...
 $ tbodygyro-std-y          : num  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
 $ tbodygyro-std-z          : num  -0.344 -0.507 -0.125 -0.941 -0.981 ...
 $ tbodygyrojerk-mean-x     : num  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
 $ tbodygyrojerk-mean-y     : num  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
 $ tbodygyrojerk-mean-z     : num  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
 $ tbodygyrojerk-std-x      : num  -0.207 -0.615 -0.487 -0.992 -0.993 ...
 $ tbodygyrojerk-std-y      : num  -0.304 -0.602 -0.239 -0.99 -0.995 ...
 $ tbodygyrojerk-std-z      : num  -0.404 -0.606 -0.269 -0.988 -0.992 ...
 $ tbodyaccmag-mean         : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ tbodyaccmag-std          : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ tgravityaccmag-mean      : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ tgravityaccmag-std       : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ tbodyaccjerkmag-mean     : num  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
 $ tbodyaccjerkmag-std      : num  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
 $ tbodygyromag-mean        : num  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
 $ tbodygyromag-std         : num  -0.187 -0.149 -0.226 -0.935 -0.979 ...
 $ tbodygyrojerkmag-mean    : num  -0.299 -0.595 -0.295 -0.992 -0.995 ...
 $ tbodygyrojerkmag-std     : num  -0.325 -0.649 -0.307 -0.988 -0.995 ...
 $ fbodyacc-mean-x          : num  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
 $ fbodyacc-mean-y          : num  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
 $ fbodyacc-mean-z          : num  -0.332 -0.433 -0.226 -0.959 -0.985 ...
 $ fbodyacc-std-x           : num  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
 $ fbodyacc-std-y           : num  0.056 0.0218 -0.113 -0.9173 -0.9723 ...
 $ fbodyacc-std-z           : num  -0.28 0.086 -0.298 -0.934 -0.978 ...
 $ fbodyaccjerk-mean-x      : num  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
 $ fbodyaccjerk-mean-y      : num  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
 $ fbodyaccjerk-mean-z      : num  -0.469 -0.685 -0.288 -0.986 -0.991 ...
 $ fbodyaccjerk-std-x       : num  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
 $ fbodyaccjerk-std-y       : num  0.107 -0.382 -0.135 -0.983 -0.987 ...
 $ fbodyaccjerk-std-z       : num  -0.535 -0.726 -0.402 -0.988 -0.992 ...
 $ fbodygyro-mean-x         : num  -0.339 -0.493 -0.352 -0.976 -0.986 ...
 $ fbodygyro-mean-y         : num  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
 $ fbodygyro-mean-z         : num  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
 $ fbodygyro-std-x          : num  -0.517 -0.566 -0.495 -0.978 -0.987 ...
 $ fbodygyro-std-y          : num  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
 $ fbodygyro-std-z          : num  -0.437 -0.572 -0.238 -0.944 -0.982 ...
 $ fbodyaccmag-mean         : num  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
 $ fbodyaccmag-std          : num  -0.398 -0.416 -0.187 -0.928 -0.982 ...
 $ fbodybodyaccjerkmag-mean : num  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
 $ fbodybodyaccjerkmag-std  : num  -0.103 -0.533 -0.104 -0.982 -0.993 ...
 $ fbodybodygyromag-mean    : num  -0.199 -0.326 -0.186 -0.958 -0.985 ...
 $ fbodybodygyromag-std     : num  -0.321 -0.183 -0.398 -0.932 -0.978 ...
 $ fbodybodygyrojerkmag-mean: num  -0.319 -0.635 -0.282 -0.99 -0.995 ...
 $ fbodybodygyrojerkmag-std : num  -0.382 -0.694 -0.392 -0.987 -0.995 ...
 


##Data analysis and transformations

1. The X and Y data sets are first combined.
2. Only the acitvities that contain mean or std are selected.
3. These activity names are used to remain the base data set names.
4. Activity and subject names are added.
5. Unique subject names are identified.
6. Data is grouped by subject and activity.
7. The mean for each subject and activity is calculated.