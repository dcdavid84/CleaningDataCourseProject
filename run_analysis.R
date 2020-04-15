## This is an R script to merge the training and test data set
## obtained by downloading and unzipping wearables data from following url: 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The script assumes that the data is stored in a directory "UCI HAR Dataset"
## located in the working directory

library(dplyr)

## Read labels for activities and feature 
activities <- (read.table("UCI HAR Dataset/activity_labels.txt"))[[2]]
features <- (read.table("UCI HAR Dataset/features.txt",colClasses = "character"))[[2]]


## Read data from files separately for test and train data and load into variables activity, subject
## and trainingset. Rename columns to make it more readable 

for (i in c("test","train"))
{
    filelink_activity <-paste0("UCI HAR Dataset/",i,"/y_",i,".txt")
    filelink_testsubject <- paste0("UCI HAR Dataset/",i,"/subject_",i,".txt")
    filelink_trainingset <- paste0("UCI HAR Dataset/",i,"/X_",i,".txt")

    assign(paste0("activity_",i),read.table(filelink_activity) %>% as_tibble() %>% rename(activity=V1))
    assign(paste0("subject_",i),read.table(filelink_testsubject) %>% as_tibble() %>% rename(testsubject=V1))
    assign(paste0("trainingset_",i),read.table(filelink_trainingset, col.names = features) %>% as_tibble())
}


## combine all variables into one dataset 
dataset_test = bind_cols(activity_test,subject_test,trainingset_test)
dataset_train = bind_cols(activity_train,subject_train,trainingset_train)
dataset_total = rbind(dataset_test,dataset_train)

## filter columns to only contain mean and stdev values

filtered_dataset <- dataset_total %>% select(activity, testsubject, matches("mean|std"))

## cast testsubject & activity column from int to factor. Replace activity numbers by descriptive labels
filtered_dataset <- filtered_dataset %>% mutate(testsubject=as.factor(testsubject), activity=as.factor(activity))
levels(filtered_dataset$activity)<-as.character(activities)

## Write new dataset into file
write.csv(filtered_dataset, file="WearablesDS1.csv")

## Create second dataset with average of each variable for each activity and each subject 
filtered_dataset %>% group_by(activity,testsubject) %>% summarize_all(list(mean=mean))-> summarized_dataset
write.table(summarized_dataset, file="WearablesDS2.txt", row.name=FALSE)




