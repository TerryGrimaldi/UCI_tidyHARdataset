---
title: "CodeBook"
author: "Terry Grimaldi"
date: "13 March 2016"
output: html_document
---

##1.Executive Summary
This CodeBook is divided into two main sections, the first section guides the users through the preparation (prior to running the script) and then running the script to generate two tidy datasets step by step. At the complete the user will have two tidy datasets loaded into R called **cleanedDS** and **cleanedSummaryDS**. The two cleaned datasets are stored in both csv and txt formats, thats is, four files are created. for re-importing. Secondly, this CodeBook describes each variable stored in both datasets mentioned in bold above.

##2.Data Cleaning and Preparation Steps
Follow the steps below in order. 

#### Preparation Step
The script is designed to run from your default R or R Studio programming diectory. Further the sub-directory /UCIdataset must exist. Follow steps a) to c) below to complete this preparation step.

a) Create the directory /UCIdataset under **your default working R/R Studio programming directory**
b) Fork the GitHub repo url.... ../UCIdataset/
c) Sync your fork to your local computer.

On completion your local computer should look like..  
../Rprog/UCIdataset/run_analysis.R  
../Rprog/UCIdataset/ReadMe.md  
../Rprog/UCIdataset/CodeBook.md  
../Rprog/UCIdataset/RawData/..(This directory contains the raw UCI HAR dataset)  
../Rprog/UCIdataset/CleanData/..(Sample cleaned data sample - this directory can be deleted as it will be re-created after running the R script)  

#### Clean Data Procedure (Option 1)
This R script was developed on a Windows 7 x64 computer with i5 cpu and 8GB ram. The script will run completely. At the end of the script you will have two tidy data sets called **cleanedDSstats** and **summaryStats**, plus a sub-directory called **CleanData** which contains files for each datasets. To run the run in one go type the following commands in the R/R Studio console:  
> setwd("UCIdatset")  
> source("run_analysis.R")  

When the script completes two tidy datasets are created as follows:  
cleanDSstats - this dataset merges "test" and "train" datasets and subsets all mean and SD values for each observation and saves the datsets /Cleandata as csv and txt format.

#### Clean Data Procedure (Option 2)
Use this method only if the computer running the script does not have the resources to run in one go. Complete the preparation step first.

Open the R script and observe the code. Notice code in extsensively commented. Inparticluar note the comments "Step n" where "n" is a number from 1 to 7. These steps break the code in logical chunks as follows:  
**Step 1** - Loads R libraries and reads in activity labels and feature labels.  
**Step 2** - Reads in Test group subject ID and there activity observations, there is 2947 observations over 9 subjectIDs. Remove intermediate datasets.    
**Step 3** - Reads in Train group subject ID and there activity observations, there is 7352 observations over 21 subjectIDs. Remove intermediate datasets.    
**Step 4** - Merges the test and train datasets in one tidy dataset with the complete 561 feature, a combine observation count of 10299 across 30 subjectIDs. Remove intermediate datasets.    
**Step 5** - Subsets the intermeediate tidy dataset from step 4 and creates a new dataset containin only variable that represent a mean or SD value. The new datset contains 10299 observations for 79 variables for the 30 subjectIDs. Remove intermediate datasets.    
**Step 6** - Summaries the dataset created in step 6 and create a new dataset on means for each variable. The number of rows is now 180 (30 subjetcID x 6 different activities).Remove intermediate datasets.  
**Step 7** - Write the two datasets to csv and txt file formats.  


##3.Data Dictionary
The section describes each of the variables, datatypes and where applicable the expected range of data values.

#### cleanDSstats Dataset
Dataset dimension = 10299 observations for 79 feature grouped by SubjectID and Activity, SubjetcTGroup.
Total dimension - 82 x 10299.  

**SubjectID**  
datatype - numeric   
Values of 1-30 representing the ID of a test or train subject 

**SubjectGroup**
datatype - string  
values of "test" ot "train" that represents the group a subject ID belongs to.  

**activityName**
datatype - string  
values  of "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS" represent the activity each subject ID performed. Thats one observation will represent one of these activities perform by a subjetcID.

**tBodyAcc-mean()-X**  
datatype - numeric
Value - Represents a subjectIDs mean body acceleration value along the x-axis for a single observation.   

**tBodyAcc-mean()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean body acceleration value along the y-axis for a single observation.  

**tBodyAcc-mean()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean body acceleration value along the z-axis for a single observation.

**tBodyAcc-std()-X**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for body acceleration value along the x-axis for a single observation.   

**tBodyAcc-std()-Y**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for body acceleration value along the y-axis for a single observation.  

**tBodyAcc-std()-Z**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for body acceleration value along the z-axis for a single observation.  

**tGravityAcc-mean()-X**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration due to gravity along the x-axis for a single observation. 

**tGravityAcc-mean()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration due to gravity along the y-axis for a single observation.  

**tGravityAcc-mean()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration due to gravity along the y-axis for a single observation.  

**tGravityAcc-std()-X**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the x-axis for a single observation.  

**tGravityAcc-std()-Y**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the y-axis for a single observation.  

**tGravityAcc-std()-Z**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the z-axis for a single observation.  

**tBodyAccJerk-mean()-X**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration along the x-axis for a single observation.  

**tBodyAccJerk-mean()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration along the y-axis for a single observation.  

**tBodyAccJerk-mean()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration along the z-axis for a single observation.  

**tBodyAccJerk-std()-X**  
datatype - numeric  
Value - Represents the Standard Deviation (SD) for a subjectIDs jerk acceleration along value along the x-axis for a single observation.  

**tBodyAccJerk-std()-Y**  
datatype - numeric  
Value - Represents the Standard Deviation (SD) for a subjectIDs jerk acceleration along value along the y-axis for a single observation.  

**tBodyAccJerk-std()-Z**  
datatype - numeric  
Value - Represents the Standard Deviation (SD) for a subjectIDs jerk acceleration along value along the z-axis for a single observation.  

**tBodyGyro-mean()-X**
datatype - numeric  
Value - The mean value from the Gyroscope along the x-axis.  

**tBodyGyro-mean()-Y**
datatype - numeric  
Value - The mean value from the Gyroscope along the y-axis. 

**tBodyGyro-mean()-Z**
datatype - numeric  
Value - The mean value from the Gyroscope along the z-axis. 

**tBodyGyro-std()-X**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis. 

**tBodyGyro-std()-Y**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis.  

**tBodyGyro-std()-Z**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis.  

**tBodyGyroJerk-mean()-X**
datatype - numeric  
Value - The mean jerk value from the Gyroscope along the x-axis.  

**tBodyGyroJerk-mean()-Y**  
datatype - numeric  
Value - The mean jerk value from the Gyroscope along the y-axis.  

**tBodyGyroJerk-mean()-Z**  
datatype - numeric  
Value - The mean jerk value from the Gyroscope along the z-axis.  

**tBodyGyroJerk-std()-X**
datatype - numeric  
Value - The Standard Deviation (SD) jerk value from the Gyroscope along the x-axis.  

**tBodyGyroJerk-std()-Y**  
datatype - numeric  
Value - The Standard Deviation (SD) jerk value from the Gyroscope along the y-axis.  

**tBodyGyroJerk-std()-Z**  
datatype - numeric  
Value - The Standard Deviation (SD) jerk value from the Gyroscope along the z-axis.  

**tBodyAccMag-mean()**  
datatype - numeric  
Value - The mean magnitude acceleration value for a single observation.    

**tBodyAccMag-std()**  
datatype - numeric  
Value - The Standard Deviation of the magnitude acceleration value for a single observation.  

**tGravityAccMag-mean()**
datatype - numeric  
Value - The mean magnitude acceleration value due to gravity for a single observation.  

**tGravityAccMag-std()**  
datatype - numeric  
Value - The Standard Deviation of the  magnitude acceleration value due to gravity for a single observation.  

**tBodyAccJerkMag-mean()**  
datatype - numeric  
Value - The mean jerk magnitude acceleration value for a single observation.  

**tBodyAccJerkMag-std()**  
datatype - numeric  
Value - The Standard Deviation jerk magnitude acceleration value for a single observation.  

**tBodyGyroMag-mean()**  
datatype - numeric  
Value - The mean Gyroscope magnitude value for a single observation. 

**tBodyGyroMag-std()**  
datatype - numeric  
Value - The Standard Deviation Gyroscope magnitude value for a single observation.  

**tBodyGyroJerkMag-mean()**  
datatype - numeric  
Value - The mean Gyroscope jerk magnitude value for a single observation.  

**tBodyGyroJerkMag-std()**  
datatype - numeric  
Value - The Standard Deviation Gyroscope jerk magnitude value for a single observation.  

**fBodyAcc-mean()-X**  
datatype - numeric
Value - Represents a subjectIDs mean body acceleration value along the x-axis for a single observation.   

**fBodyAcc-mean()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean body acceleration value along the y-axis for a single observation.  

**fBodyAcc-mean()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean body acceleration value along the z-axis for a single observation.

**fGravityAcc-std()-X**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the x-axis for a single observation.  

**fGravityAcc-std()-Y**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the y-axis for a single observation.  

**fGravityAcc-std()-Z**  
datatype - numeric  
Value - Represents a subjectIDs Stanard Deviation (SD) for acceleration due to gravity along the z-axis for a single observation.  

**fBodyAcc-meanFreq()-X**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration expressed as a frequency per observation along the x-axis.  

**fBodyAcc-meanFreq()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration expressed as a frequency per observation along the y-axis.  

**fBodyAcc-meanFreq()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean acceleration expressed as a frequency per observation along the z-axis.  

**fBodyAccJerk-mean()-X**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed along the x-axis.  

**fBodyAccJerk-mean()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed along the y-axis. 

**fBodyAccJerk-mean()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed along the z-axis.  

**fBodyAccJerk-std()-X**  
datatype - numeric  
Value - Represents a subjectIDs Standard Deviation jerk acceleration expressed along the x-axis. 

**fBodyAccJerk-std()-Y**  
datatype - numeric  
Value - Represents a subjectIDs Standard Deviation jerk acceleration expressed along the y-axis. 

**fBodyAccJerk-std()-Z**  
datatype - numeric  
Value - Represents a subjectIDs Standard Deviation jerk acceleration expressed along the z-axis. 

**fBodyAccJerk-meanFreq()-X**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed as a frequency per observation along the x-axis. 

**fBodyAccJerk-meanFreq()-Y**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed as a frequency per observation along the x-axis. 

**fBodyAccJerk-meanFreq()-Z**  
datatype - numeric  
Value - Represents a subjectIDs mean jerk acceleration expressed as a frequency per observation along the x-axis. 

**fBodyGyro-mean()-X**
datatype - numeric  
Value - The mean value from the Gyroscope along the x-axis.  

**fBodyGyro-mean()-Y**
datatype - numeric  
Value - The mean value from the Gyroscope along the y-axis. 

**fBodyGyro-mean()-Z**
datatype - numeric  
Value - The mean value from the Gyroscope along the z-axis. 

**fBodyGyro-std()-X**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis. 

**fBodyGyro-std()-Y**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis.  

**fBodyGyro-std()-Z**  
datatype - numeric  
Value - The Standard Deviation (SD) value from the Gyroscope along the x-axis.  

**fBodyGyro-meanFreq()-X**  
datatype - numeric  
Value - The mean Gryoscope value expressed in frequency along the x-axis for a single observation.  

**fBodyGyro-meanFreq()-Y**  
datatype - numeric  
Value - The mean Gryoscope value expressed in frequency along the y-axis for a single observation.  

**fBodyGyro-meanFreq()-Z**  
datatype - numeric  
Value - The mean Gryoscope value expressed in frequency along the z-axis for a single observation.  

**fBodyAccMag-mean()**  
datatype - numeric  
Value - The mean magnitude of acceleration for an observation.  

**fBodyAccMag-std()**  
datatype - numeric  
Value - The Standard Deviation magnitude of acceleration for an observation.  

**fBodyAccMag-meanFreq()**  
datatype - numeric  
Value - The mean magnitude of acceleration for an observation expressed as a frequency.   

**fBodyBodyAccJerkMag-mean()**  
datatype - numeric  
Value - The mean magnitude of jerk acceleration for an observation.  

**fBodyBodyAccJerkMag-std()**  
datatype - numeric  
Value - The Standard Deviation magnitude of jerk acceleration for an observation.  

**fBodyBodyAccJerkMag-meanFreq()**  
datatype - numeric  
Value - The mean magnitude of jerk acceleration for an observation expressed as a frequency. 

**fBodyBodyGyroMag-mean()**  
datatype - numeric  
Value - The mean magnitude of the Gryoscope for an observation. 

**fBodyBodyGyroMag-std()**  
datatype - numeric  
Value - The Standard Deviation magnitude for an observation.  

**fBodyBodyGyroMag-meanFreq()**  
datatype - numeric  
Value - The mean magnitude of the Gyroscope for an observation expressed as a frequecy. 

**fBodyBodyGyroJerkMag-mean()**  
datatype - numeric  
Value - The mean magnitude for Gyroscope jerk value for an observation. 

**fBodyBodyGyroJerkMag-std()**  
datatype - numeric  
Value - The Standard Deviation magnitude for Gyroscope jerk value for an observation.  

**fBodyBodyGyroJerkMag-meanFreq()** 
datatype - numeric  
Value - The mean magnitude for Gyroscope jerk value for an observation expressed as a frequency.


#### summaryStats Dataset
Dataset dimension = 82 x 180, where 180 observations = 30 subjectIDs x 6 activities 

This table contains the same feature set as the **cleanDSstats** dataset, except the value are the summary mean for all observations grouped by SubjectID and activity type. The values therfore do not represent single observations.
