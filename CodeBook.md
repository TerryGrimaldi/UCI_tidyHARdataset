---
title: "Getting and Cleaning Data Assignement: Cleaning UCI HAR Dataset"
output: html_document
---

## 1.Raw Data Set Summary  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is 
assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and 
frequency domain. See 'features_info.txt' for more details. 

#### 1.1.For each record it is provided:  

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## 2. Transformed Clean Data Set Summary  
Executing the R code will create two dats sets which are finally save in text file format using write.table.  

#### 2.1 cleanedDS data set  
**Name:** - cleanedDS  
**Dimensions:** - 82 variables x 10299 observations  
**Details:** - SubjectID, SubjectGroup, activityName + 79 variables representing the mean and standard deviation value from the merged raw data sets.  
**Saved to:** - cleanedDS.txt  

#### 2.2 summaryStats data set  
**Name:** - summaryStats 
**Dimensions:** - 82 variables x 180 observations  
**Details:** - SubjectID, SubjectGroup, activityName + summarised mean of 79 variables representing the mean and standard deviation value from the merged raw data sets.  
**Saved to:** - ccleanedSummaryDS.txt  

## Transformation/Cleaning Procedure
Step 1. Create a directory called **/UCIdataset** under R's default working directory.  
Step 2. Download the raw dataset from [UCI Machine Learning Center](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and copy to **/UCIdataset/RawData**  
Step 3. Fork the git repo [UCI_tidyHARdataset](https://github.com/TerryGrimaldi/UCI_tidyHARdataset.git)  
Step 4. Copy run_analysis.R, CodeBook.md and ReadMe.md to **/UCIdataset**  
Step 5. execute the R script using the command **source("run_analysis.R")**  


##3. Variable/Signal Description
Use this section to find information about the data set variables/signals.

**SubjectID**  
datatype - numeric   
Values of 1-30 representing the ID of a test or train subject 

**SubjectGroup**
datatype - string  
values of "test" ot "train" that represents the group a subject ID belongs to.  

**activityName**
datatype - string  
values  of "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" represent the activity each subject ID performed. Thats one observation will represent one of these activities perform by a subjetcID.

The following 79 variables/signals represent the subset of features supplied in the original raw data set. All variables/signals are **numeric** data type. They represent the mean and standard deviation values from the original data set.  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  

