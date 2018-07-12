####$$$$ HW4 >> A better version >> Done on my own using Dr Campbell's soultion for REGEX $$$$####
#$$# Author: Mike Mahoney
#$$# Date: July 11, 2018
#$$# Data Found At >> https://archive.ics.uci.edu/ml/machine-learning-databases/00240/
#$$# This program merges files found from the above site ^^^^ >> Then:
#$$# 1) Merges the training and the test sets to create one data set. >> master_data
#$$# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
#$$# 3) Uses descriptive activity names to name the activities in the data set.
#$$# 4) Appropriately labels the data set with descriptive variable names.
#$$# 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# #$$# 

library(dplyr)
library(reshape2)


## This is the file path to the UCI HAR Dataset >> To make our life easier
UCI_data = ("C:/Users/Mike/Documents/Data Analytics Tools and Techniques/UCI_HAR_Dataset/UCI HAR Dataset/")

## Set Working directory
setwd(UCI_data)

###### Reading in all of the datasets
features = read.table("features.txt", sep="")
activity_labels = read.table("activity_labels.txt", sep="")
subject_test = read.table("test/subject_test.txt",sep="")
subject_train = read.table("train/subject_train.txt",sep="")
## The test datasets
X_test = read.table("test/X_test.txt", sep="")
y_test = read.table("test/y_test.txt", sep="")
body_acc_x_test = read.table("test/Inertial Signals/body_acc_x_test.txt",sep="")    
body_acc_y_test = read.table("test/Inertial Signals/body_acc_y_test.txt",sep="")     
body_acc_z_test = read.table("test/Inertial Signals/body_acc_z_test.txt",sep="")     
body_gyro_x_test = read.table("test/Inertial Signals/body_gyro_x_test.txt",sep="")      
body_gyro_y_test = read.table("test/Inertial Signals/body_gyro_y_test.txt",sep="")     
body_gyro_z_test = read.table("test/Inertial Signals/body_gyro_z_test.txt",sep="")     
total_acc_x_test = read.table("test/Inertial Signals/total_acc_x_test.txt",sep="")      
total_acc_y_test = read.table("test/Inertial Signals/total_acc_y_test.txt",sep="")    
total_acc_z_test = read.table("test/Inertial Signals/total_acc_z_test.txt",sep="")    
## The train datasets 
X_train = read.table("train/X_train.txt", sep="")
y_train = read.table("train/y_train.txt", sep="")
body_acc_x_train = read.table("train/Inertial Signals/body_acc_x_train.txt",sep="")      
body_acc_y_train = read.table("train/Inertial Signals/body_acc_y_train.txt",sep="")      
body_acc_z_train = read.table("train/Inertial Signals/body_acc_z_train.txt",sep="")      
body_gyro_x_train = read.table("train/Inertial Signals/body_gyro_x_train.txt",sep="")      
body_gyro_y_train = read.table("train/Inertial Signals/body_gyro_y_train.txt",sep="")      
body_gyro_z_train = read.table("train/Inertial Signals/body_gyro_z_train.txt",sep="")      
total_acc_x_train = read.table("train/Inertial Signals/total_acc_x_train.txt",sep="")      
total_acc_y_train = read.table("train/Inertial Signals/total_acc_y_train.txt",sep="")      
total_acc_z_train = read.table("train/Inertial Signals/total_acc_z_train.txt",sep="")      


## Getting a list of variables >> var_list
var_list = features$V2[grepl("mean\\(\\)|std\\(\\)",features$V2)==TRUE]

## Rename labels in activity_labels >> Renaming the columns
names(activity_labels) = c("actlabelnum","activitylabel")

##### Subject >> subject_test >> subject_train
## Rename labels in subject_test >> Renaming the columns
names(subject_test) = "subjectID"
## Creating a label >> TEST
subject_test$dataset = "TEST"
## Rename labels in subject_test >> Renaming the columns
names(subject_train) = "subjectID"
## Creating a label >> TRAIN
subject_train$dataset = "TRAIN"

##### Test >> X_test >> y_test
## Renaming cols in X_test >> from features dataset
names(X_test) = features$V2
## Keeping STD and MEAN in X_test >> Removing everything else
X_test = X_test[paste(var_list,sep=",")]
## Renaming columns in y_test
names(y_test) = "actlabelnum"

##### Train >> X_train >> y_train
## Renaming cols in X_train >> from features dataset
names(X_train)<-features$V2
## Keeping STD and MEAN in X_train >> Removing everything else
X_train = X_train[paste(var_list,sep=",")]
## Renaming columns in y_test
names(y_train)<-"actlabelnum"

## Renaming the columns from Internal signals folder >> test datasets >>
## with their variable names + the corresponding number of the column
names(body_acc_x_test) = paste("bodyaccx",1:128,sep="")       
names(body_acc_y_test) = paste("bodyaccy",1:128,sep="")       
names(body_acc_z_test) = paste("bodyaccz",1:128,sep="")       
names(body_gyro_x_test) = paste("bodygyrox",1:128,sep="")       
names(body_gyro_y_test) = paste("bodygyroy",1:128,sep="")       
names(body_gyro_z_test) = paste("bodygyroz",1:128,sep="")       
names(total_acc_x_test) = paste("totalaccx",1:128,sep="")       
names(total_acc_y_test) = paste("totalaccy",1:128,sep="")       
names(total_acc_z_test) = paste("totalaccz",1:128,sep="")    

## Renaming the columns from Internal signals folder >> train datasets >>
## with their variable names + the corresponding number of the column
names(body_acc_x_train) = paste("bodyaccx",1:128,sep="")       
names(body_acc_y_train) = paste("bodyaccy",1:128,sep="")       
names(body_acc_z_train) = paste("bodyaccz",1:128,sep="")       
names(body_gyro_x_train) = paste("bodygyrox",1:128,sep="")       
names(body_gyro_y_train) = paste("bodygyroy",1:128,sep="")       
names(body_gyro_z_train) = paste("bodygyroz",1:128,sep="")       
names(total_acc_x_train) = paste("totalaccx",1:128,sep="")       
names(total_acc_y_train) = paste("totalaccy",1:128,sep="")       
names(total_acc_z_train) = paste("totalaccz",1:128,sep="")  

#### Putting all the datasets together >> master_data
## Binding the training dataset >> master_train
master_train = cbind(subject_train,X_train,y_train)
## Binding the testing dataset >> master_test
master_test = cbind(subject_test,X_test,y_test)
## Creating master_data >> rbind of: master_train & master_test
master_data = rbind(master_train, master_test)
## Removing unnessicary datasets >> master_train & master_test
master_train = NULL
master_test = NULL

## Removing weird characters and converting the colnames to lowercase >> Using some REGEX
names(master_data) = tolower(gsub("[^0-9A-Za-z]","",names(master_data)))

## Converting Dataset var (Test/Train) >> to factor
master_data$dataset <- as.factor(master_data$dataset)

## Merging master_data and activity_labels
final = merge(master_data, activity_labels)
master_data = NULL

## Creating final_2 >> Getting rid of of activity label
final_2 = final
final_2$activitylabel = NULL

## Creating final_3 >> Getting rid of actvit label
final_3 = final
final_3$actlabelnum = NULL

## Getting a summary of all the data >> with the mean >> grouped by subject and activity label
sum_o_data = aggregate(final_2[,names(final_2) != c('subjectid','actlabelnum','dataset')],by=list(subjectid=final_2$subjectid,actlabelnum=final_2$actlabelnum),mean,na.rm=TRUE)

## Oh the extra columns >> lets get rid of those
sum_o_data = sum_o_data[,3:70]

## Activity labels Come Back >> Merging them
sum_o_data <- merge(sum_o_data, activity_labels)

## Changing the columns around in sum_o_data
final_sum_o_data <- select(sum_o_data,activitylabel, subjectid,tbodyaccmeanx,tbodyaccmeany,tbodyaccmeanz,tbodyaccstdx,tbodyaccstdy,tbodyaccstdz,tgravityaccmeanx,tgravityaccmeany,tgravityaccmeanz,tgravityaccstdx,tgravityaccstdy,tgravityaccstdz,
                           tbodyaccjerkmeanx,tbodyaccjerkmeany,tbodyaccjerkmeanz,tbodyaccjerkstdx,tbodyaccjerkstdy,tbodyaccjerkstdz,tbodygyromeanx,tbodygyromeany,tbodygyromeanz,tbodygyrostdx,tbodygyrostdy,tbodygyrostdz,
                           tbodygyrojerkmeanx,tbodygyrojerkmeany,tbodygyrojerkmeanz,tbodygyrojerkstdx,tbodygyrojerkstdy,tbodygyrojerkstdz,tbodyaccmagmean,tbodyaccmagstd,tgravityaccmagmean,tgravityaccmagstd,
                           tbodyaccjerkmagmean,tbodyaccjerkmagstd,tbodygyromagmean,tbodygyromagstd,tbodygyrojerkmagmean,tbodygyrojerkmagstd,fbodyaccmeanx,fbodyaccmeany,fbodyaccmeanz,fbodyaccstdx,fbodyaccstdy,fbodyaccstdz,
                           fbodyaccjerkmeanx,fbodyaccjerkmeany,fbodyaccjerkmeanz,fbodyaccjerkstdx,fbodyaccjerkstdy,fbodyaccjerkstdz,fbodygyromeanx,fbodygyromeany,fbodygyromeanz,fbodygyrostdx,fbodygyrostdy,fbodygyrostdz,
                           fbodyaccmagmean,fbodyaccmagstd,fbodybodyaccjerkmagmean,fbodybodyaccjerkmagstd,fbodybodygyromagmean,fbodybodygyromagstd,fbodybodygyrojerkmagmean,fbodybodygyrojerkmagstd)

## Writing the files >> final_3 (data set with activity labels) & final_some_o_data (average from each var)
write.csv(final_3, "C:/Users/Mike/Documents/Data Analytics Tools and Techniques/tidydata.csv")
write.table(final_sum_o_data, "C:/Users/Mike/Documents/Data Analytics Tools and Techniques/mahoney_tidy_summed_data.txt", row.names = FALSE)

## Create Data Dictonary
sink(file="C:/Users/Mike/Documents/Data Analytics Tools and Techniques/data_dictonary.txt")
cat("FULL DATA SET")
str(final,list.len=ncol(final),vec.len=3)
cat("\n")
cat("\n")
cat("SUMMARIZED DATA SET")
str(final_sum_o_data,list.len=ncol(final),vec.len=3)
unlink("C:/Users/Mike/Documents/Data Analytics Tools and Techniques/data_dictonary.txt")