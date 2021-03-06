
# Project - Getting and Cleaning Data

### Purpose 

  The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.
  
### Goal

  The goal is to prepare tidy data set.

### Requirements

  1. Submit a tidy data set
  2. Link to a Github repository containing script for performing the analysis
  3. To produce a code book named CodeBook.md that describes the variables, the data, and any transformations or work that is performed to clean up the data 
  4. Readme file to show how all scripts work in harmony
  5. run_analysis.R file which should do following
   + Merges the training and the test sets to create one data set.
   + Extracts only the measurements on the mean and standard deviation for each measurement.
   + Uses descriptive activity names to name the activities in the data set
   + Appropriately labels the data set with descriptive variable names.
   + From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
### Repository Getting-and-Cleaning-Data

  This repository contains following files:
  
  1. README.md - a markdown file which gives an overview of the dataset, project and its arrangement
  2. CodeBook.md - a markdown file which provides defines and describes following: 
   + content of the data set
   + definition of variables
   + descriptions of any transformation performed on data
  3. FinalData.txt - final tidy data set
  4. run_analysis.R - script file to load, merge, transform and create the final tidy data set
  
### Synopsis of the data provided

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###### [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (Accelerometers from the Samsung Galaxy S smartphone)

### Working of the code

  1. Set sub directory where datasets are stored using ```FileLocation <- "./UCI HAR Dataset/" ```
  2. Read qualitatvie data features & activity using following code lines:
  
      ```features <- read.table(paste0(FileLocation,"features.txt"), as.is = TRUE)```
      
      ```activityLabels <- read.table(paste0(FileLocation, "activity_labels.txt"))```
      
  3. Assign meaningful variable names to qualitative data uploaded in steps above. Piping is used to pass results to subsequent commands
    
      ```activityLabels <- activityLabels %>% rename(activityID = V1, activityLabel = V2)```
      
  4. Read quantitative data and assign meaningful variable names one file at a time
  
      ###### Subjects
  
      ```SubjectsTrain <- read.table(paste0(FileLocation, "train/subject_train.txt"))```
      
      ```SubjectsTrain <- SubjectsTrain %>% rename(Subjects = V1)```
      
      ```SubjectsTest <- read.table(paste0(FileLocation, "/test/subject_test.txt"))```
      
      ```SubjectsTest <- SubjectsTest %>% rename(Subjects = V1)```
      
      ###### Tests
      
      assigning column names using qualitative data frame created in step 2 above:
      
      ```trainingSets <- read.table(paste0(FileLocation, "train/X_train.txt"))```
      
      ```colnames(trainingSets) <- features[, 2]```
      
      ```testSets <- read.table(paste0(FileLocation, "/test/X_test.txt"))```
      
      ```colnames(testSets) <- features[, 2]```
      
      ###### Activities
      
      ```trainingLabels <- read.table(paste0(FileLocation, "train/y_train.txt"))```
      
      ```trainingLabels <- trainingLabels %>% rename(Activity = V1)```
      
      ```testLabels <- read.table(paste0(FileLocation, "/test/y_test.txt"))```
      
      ```testLabels <- testLabels %>% rename(Activity = V1)```
      
  5. Start merging different data frames created in steps above to create one data frame. ```rbind``` to combine rows and ```cbind``` to combine columns:
  
      ```ActivityDataSet <- rbind(cbind(SubjectsTrain, trainingSets, trainingLabels), cbind(SubjectsTest, testSets, testLabels))```
      
  6. Select subjects, activity, standard deviation and mean columns from the combined data frame. Used ```grepl``` to select different columns in one go: 
    
      ```ActivityDataSet <- ActivityDataSet[, grepl("Subjects|Activity|mean|std", colnames(ActivityDataSet))]```
      
  7. Create a factor using activityLabels data frame created in step 3 above and assign factor values to the Activity variable of ActivityDataSet data frame:
  
      ```ActivityDataSet$Activity <- factor(ActivityDataSet$Activity, levels = activityLabels[, 1], labels = activityLabels[, 2])```
      
  8. Store all default column names in variables and treat them to remove "-", "()" characters and other abbreviations like "Freq", "mean", "Gyro":
  
      ```ActivityDataSetCols <- colnames(ActivityDataSet)```
      
      ```ActivityDataSetCols <- str_replace_all(ActivityDataSetCols, c("-" = "","[\\(\\)]" = "", "Acc" = "Accelerometer", "std" = "StandardDeviation", "Gyro" = "Gyroscope", "mean" = "Mean"))```
      
      ```ActivityDataSetCols <- str_remove_all(ActivityDataSetCols, c("^t" ="Time", "Mag" = "Magnitude", "^f" = "Frequency", "Freq" = "Frequency", "BodyBody" = "Body", "Frequencyuency" = "Frequency"))```
      
      ```colnames(ActivityDataSet) <- ActivityDataSetCols```
      
  9. Finally, group data by Subjects and Activities and calculate average using ```summarise_each``` followed by generation of tidydataset.txt
  
      ```ActivityTidyData <- ActivityDataSet %>% group_by(Subjects, Activity) %>% summarise_each(funs(mean))```
      
      ```write.txt(ActivityTidyData, "tidydataset.txt", row.names=FALSE)```

  10. Final output can be accessed from [https://github.com/rajcpandey/GettingandCleaningData/blob/master/tidydataset.txt] (tidydataset.txt) link.