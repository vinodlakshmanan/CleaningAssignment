# Getting and Cleaning Data Project - Coursera JHU Project
## Goals
Using the wearable data present  [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), perform the below activities
1) Provide a tidy data set by
  * Merging the test and training sets  
  * Extract measurements related to mean and standard-deviations
  * Provide descriptive names for activities against which the measurements have been done for different subject IDs
  * Label the data set descriptive / intuitive variable names
  * Create a send data set which averages each variable by activity and subject
 
2) Provide a link to a Github repository with your script for performing the analysis. The script should be called run_analysis.R
3) Provide a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
4) Provide a Readme which describes the solution

## File Details
* **[run_analysis.R](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/run_analysis.R)**:  This script contains the required logic to create a tidy data set and the aggregated data set contain averages across all variables
* **[CodeBook.md](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/CodeBook.md)**: Code-book containing descriptions of variables present in the clean data set and aggregated data set
* **[tidydata.csv](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/tidy_data.csv)**: Aggregated data containing averages by subject and activity name
* **[README.md](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/README.md)**: This file

## Dataset details
This dataset represents data collected from Samsung Galaxy S smartphones. Refer below files for description of the data:
* **[README.txt](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/getdata_projectfiles_UCI%20HAR%20Dataset/UCI%20HAR%20Dataset/README.txt)**: Description of the project and its data. Contains links to other files within the project
* **[features_info.txt](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/getdata_projectfiles_UCI%20HAR%20Dataset/UCI%20HAR%20Dataset/features_info.txt)**: Description of the various features present in the datasets
* **[features.txt](https://github.com/vinodlakshmanan/CleaningAssignment/blob/master/getdata_projectfiles_UCI%20HAR%20Dataset/UCI%20HAR%20Dataset/features.txt)**: Listing of variables in the dataset

## Solution summary
The script run_analysis.R performs the following tasks (not necessarily in the same order):
1. Merges the test and training sets to create a single data set
2. Reads activity and variable names
3. Extracts required columns, and tidies the variable names
4. Stores the tidy raw data in a dataframe - **fDataTrimmed**
5. Reshapes the data into a dataframe - **tidyData**
6. Writes the output dataframe (tidyData) into a file **tidy_data.csv** in the current directory
