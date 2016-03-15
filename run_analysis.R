## Step 1
## Load libraies and read in activity labels as activityLab and test feature
## (test variables) as features.
library(plyr)
library(dplyr)

## Change directory to location of raw data.
setwd("RawData")
## Load the activity labels and assign column names
activityLab <- read.table("activity_labels.txt", sep = "", stringsAsFactors = FALSE)
colnames(activityLab) <- c("activityID", "activityName")
## Load the measurement features
features <- read.table("features.txt", sep = "", stringsAsFactors = FALSE)
featColNames <- unlist(features$V2)

## Step 2
## Read in test subjects (SubjectID for for test group) and associated
## observations. The data is stored in sub-dir "Test"
setwd("test")
# Load in the test subject ID's and assign column name
testSub <- read.table("subject_test.txt",sep = "", stringsAsFactors = FALSE)
testSub <- cbind(testSub, rep("test", nrow(testSub)))
colnames(testSub) <- c("SubjectID", "SubjectGroup")
## Load in the raw observations
testObs <- read.table("X_test.txt",sep = "", stringsAsFactors = FALSE)
colnames(testObs) <- featColNames
## Load in the activity ID's for each observation
actObs <- read.table("Y_test.txt",sep = "\t", stringsAsFactors = FALSE)
## Create id's for actObs and bind
id <- seq(1:nrow(actObs))
actObs <- cbind(id,actObs)
## Assign colum names to actObs
colnames(actObs) <- c("id", "activityID")
## Merge activity ID's for each observation. Merge sorts or groups by ID
## so re-order the merge data by the seq ID's created. Then select the 
## columns we need.
actObs <- merge(actObs,activityLab, sort = FALSE) %>%
          arrange(id) %>%
          select (activityID, activityName)
## Merge the test subject ID's with the Activity ID with the test OB's
tidyTestDS <- cbind(testSub, actObs, testObs)
## Remove intermediate data sets.
rm(testObs, actObs, testSub)


## Step 3
## Read in test subjects (SubjectID for for train group) and associated
## observations. The data is stored in sub-dir "Train"
setwd("../train")
#Load in the test subject ID's and assign column name
trainSub <- read.table("subject_train.txt",sep = "\t", stringsAsFactors = FALSE)
trainSub <- cbind(trainSub, rep("train", nrow(trainSub)))
colnames(trainSub) <- c("SubjectID", "SubjectGroup")
##Load in the raw observations
trainObs <- read.table("X_train.txt",sep = "", stringsAsFactors = FALSE)
colnames(trainObs) <- featColNames
##Load in the activity ID's for each observation
actObs <- read.table("Y_train.txt",sep = "\t", stringsAsFactors = FALSE)
##Create id's for actObs and bind
id <- seq(1:nrow(actObs))
actObs <- cbind(id,actObs)
## Assign colum names to actObs
colnames(actObs) <- c("id", "activityID")
##Merge activity ID's for each observation. Merge sorts or groups by ID
##so re-order the merge data by the seq ID's created. Then select the 
##columns we need.
actObs <- merge(actObs,activityLab, sort = FALSE) %>%
  arrange(id) %>%
  select (activityID, activityName)
##Merge the test subject ID's with the Activity ID with the test OB's
tidyTrainDS <- cbind(trainSub, actObs, trainObs)
##Remove intermediate data sets.
rm(trainObs, actObs, trainSub)

## Step 4
##Join the tidyTestDS and tidyTrainDS vertically
tidyDS <- rbind(tidyTestDS, tidyTrainDS)

rm(tidyTestDS,tidyTrainDS,activityLab,features,featColNames,id)

## Step 5
## Subset tidyDS to create the required final tidy dataset of mean's and SD's grouped by 
## SubjectTD, SubjectGroup and activityName
cleanDSstats <- cbind(subset(tidyDS, select = c("SubjectID","SubjectGroup","activityName")), 
                     subset(tidyDS, select = grep("mean|std", names(tidyDS))))
##Remove intermediate data sets.
rm(tidyDS)

## Step 6
## Create a tidy summary dataset from cleanDSstats dataset. The summary dataset calculates
## the mean for every variable grouped by SubjectID and activityName, then arranged by
## SubjectID, so SubjectID is ordered ascending.
summaryStats <- cleanDSstats %>% group_by(SubjectID, activityName, SubjectGroup) %>%
                summarise_each(funs(mean)) %>%
                arrange(SubjectID)
  
## Step 7
## Create a Sub-directory called CleanData and write out cleanDSstats and summaryStats
## to csv and txt formats.
setwd("../../")
if(!file.exists("CleanData")){
  dir.create("CleanData")
}
setwd("CleanData")
write.table(cleanDSstats,file = "cleanedDS.txt", sep = " ",row.names = FALSE)
write.table(summaryStats,file = "cleanedSummaryDS.txt", sep = " ", row.names = FALSE)

