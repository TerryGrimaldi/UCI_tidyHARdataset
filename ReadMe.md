---
title: "Getting and Cleaning Data Assignement: Cleaning UCI HAR Dataset"    
output: html_document
---
  
## Repository Overview
This repository contains R code to transform, clean and tidy the **UCI HAR Dataset** raw data set. The data set can be downloaded from the following URL [UCI Machine Learning Center](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The UCI HAR data set contains experiment data for 30 subjects. The subjects where divided into 2 groups, being a) Test Group, and b) Train Group. The purpose of the R code is to first clean, tidy and merge both data sets into a single dataset, and secondly extract and summarise only the variable representing observation means and standard devivation. The summarised data set calculates the means of each observation by subject and activity. 

A code book is provided that describes the transformation from raw to clean data and describes the variables in the final two clean data sets.

## Repository Files  

1. **run_analysis.R** - Code to transform and clean the raw data into clean data.
2. **ReadMe.md** - This file.
3. **CodeBook.Md** - Documents the steps to go from the raw data to clean/tidy data. Also documents the two clean data sets variables.

####CleanData Sub-directory  
Contains the output of the R script run against the raw data set. The files are:

1. **cleanedDS.txt** - This file stores data from the merged data set called **cleanedDS** that is produced by the R code. The R code extracts all the mean and standard deviation variable from the complete set (561) for each experiment and organises the data by subject and activity. The dataset is ordered by subjectID
 
2. **cleanedSummaryDS.txt** - This file stores the dataset **summaryStats** which has summarised the **cleanedDS** to calculate the means of each variable. The suammary first groups the data by subject and activity before calculating the mean based on the grouping. The data is ordered by subjectID.
