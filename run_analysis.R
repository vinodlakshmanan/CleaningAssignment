# Getting and Cleaning Data Project - JHU Data Science Specialization, Coursera
# Author: Vinod Lakshmanan
# Objectives:
# - Use the Smartphone activity data to create a tidy data set which is averaged by subject and activity

# Steps as below:
# 1. Setup
# 2. Read meta-data files (activity list, column names)
# 3. Load training data and merge with activity / subject data
# 4. Load test data and merge with activity / subject data
# 5. Merge test and training data, and filter relevant columns
# 6. Tidy column names
# 7. Reshape data
# 8. Write output to file
# 9. Cleanup

require(stringr)
require(dplyr)
require(data.table)
require(reshape2)

# Uncomment below lines for downloading the data. Pre-downloaded data is available in the solution
# path <- getwd()
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(url, file.path(path, "dataFiles.zip"))
# unzip(zipfile = "dataFiles.zip")

# Setup environment - setup variables
rm(list = ls())

trainData <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"
trainLabels <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
trainSubjects <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
testData <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
testLabels <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"
testSubjects <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
colNameFile <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt"
activityLabels <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"

# Read meta-data files
actNames <- fread(activityLabels, header = FALSE, sep = " "
                  , col.names = c("ActivityId", "ActivityName")
)
colNames <- fread(colNameFile, header = FALSE, sep = " "
                  , col.names = c("#", "Name")
                  )

# Load training data and merge with activity / subject data
fData <- fread(trainData, header = FALSE, sep = " ", col.names = c(colNames$Name))
fData$"data-source" = "train"
fData$subjects = fread(trainSubjects, header=FALSE)
trainActivity <- fread(trainLabels, header = FALSE, sep = "auto", col.names = c("ActivityId"))
trainActivity <- merge(trainActivity, actNames, by = "ActivityId", sort = FALSE)
fData$"activityname" <- trainActivity$ActivityName

#Load test data and merge with activity / subject data
testDF <- fread(testData, header = FALSE, sep = " ", col.names = c(colNames$Name))
testDF$"data-source" = "test"
testDF$subjects = fread(testSubjects, header=FALSE)
testActivity <- fread(testLabels, header = FALSE, sep = "auto", col.names = c("ActivityId"))
testActivity <- merge(testActivity, actNames, by = "ActivityId", sort = FALSE)
testDF$"activityname" <- testActivity$ActivityName

# Merge test and training data, and filter relevant columns
fData <- rbind.data.frame(fData, testDF)
fDataTrimmed <- fData[,grep('mean|Mean|std|activity|subjects',names(fData)), with = FALSE]
fDataTrimmed <- cbind(fDataTrimmed[,c("subjects","activityname")]
                      , fDataTrimmed[,-c("subjects","activityname")]
                      )

# Tidy column names
names <- names(fDataTrimmed)
names <- str_replace_all(names, "tBodyAcc", "time-body-accelerometer")
names <- str_replace_all(names, "tGravityAcc", "time-gravity-accelerometer")
names <- str_replace_all(names, "tBodyGyro", "time-body-gyroscope")
names <- str_replace_all(names, "tGravityGyro", "time-gravity-gyroscope")
names <- str_replace_all(names, "fBodyAcc|fBodyBodyAcc", "freq-body-accelerometer")
names <- str_replace_all(names, "fGravityAcc", "freq-gravity-accelerometer")
names <- str_replace_all(names, "fBodyGyro|fBodyBodyGyro", "freq-body-gyroscope")
names <- str_replace_all(names, "fGravityGyro", "freq-gravity-gyroscope")
names <- str_replace_all(names, "Jerk", "-jerk")
names <- str_replace_all(names, "Mag", "-magnitude")
names <- str_replace_all(names, "Mean", "-mean")
names <- str_replace_all(names, "Freq", "-frequency")
names <- str_replace_all(names, "angle\\(", "angle-")
names <- str_replace_all(names, "\\(\\)", "")
names <- str_replace_all(names, "\\)", "")
names <- str_replace_all(names, ",", "-")
names(fDataTrimmed) <- names

# Reshape data
moltenData <- reshape2::melt(fDataTrimmed, id = c("subjects","activityname"))
tidyData <- reshape2::dcast(moltenData
                            , subjects + activityname ~ variable
                            , fun.aggregate = mean)

# Write output to file
fwrite(tidyData, file = "tidy_data.csv")


# Cleanup
rm("trainActivity", "trainData", "trainLabels", "trainSubjects", "testData", "testDF", "testActivity", "testLabels", "testSubjects"
   , "colNameFile", "activityLabels", "names", "actNames", "colNames", "moltenData")
