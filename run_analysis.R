library(dplyr)
library(stringr)
#---------------------------------------------------------------------------------------------------------------------------------------------------
#  Script Name - run_analysis.R

# Objective of the script

# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#---------------------------------------------------------------------------------------------------------------------------------------------------

  FileLocation <- "./UCI HAR Dataset/"

# Read qualitatvie data features & activity
  
  features <- read.table(paste0(FileLocation,"features.txt"), as.is = TRUE)
  activityLabels <- read.table(paste0(FileLocation, "activity_labels.txt"))
  
# assign meaningful variable names to qualitative data
  activityLabels <- activityLabels %>% rename(activityID = V1, activityLabel = V2)

# Read quantitative data and treat variable names and assign meaningful variable names
  
  SubjectsTrain <- read.table(paste0(FileLocation, "train/subject_train.txt"))
  SubjectsTrain <- SubjectsTrain %>% rename(Subjects = V1)
  
  SubjectsTest <- read.table(paste0(FileLocation, "/test/subject_test.txt"))
  SubjectsTest <- SubjectsTest %>% rename(Subjects = V1)
  
  trainingSets <- read.table(paste0(FileLocation, "train/X_train.txt"))
  colnames(trainingSets) <- features[, 2]
  
  testSets <- read.table(paste0(FileLocation, "/test/X_test.txt"))
  colnames(testSets) <- features[, 2]
  
  trainingLabels <- read.table(paste0(FileLocation, "train/y_train.txt"))
  trainingLabels <- trainingLabels %>% rename(Activity = V1)
  
  testLabels <- read.table(paste0(FileLocation, "/test/y_test.txt"))
  testLabels <- testLabels %>% rename(Activity = V1)

# Start delivery of objectives

# Requirement - 1 Merges the training and the test sets to create one data set.
  ActivityDataSet <- rbind(cbind(SubjectsTrain, trainingSets, trainingLabels), cbind(SubjectsTest, testSets, testLabels))

# Requirement - 2 Extracts only the measurements on the mean and standard deviation for each measurement
  ActivityDataSet <- ActivityDataSet[, grepl("Subjects|Activity|mean|std", colnames(ActivityDataSet))]

# Requirement 3 - Use descriptive activity names to name the activities in the data
  ActivityDataSet$Activity <- factor(ActivityDataSet$Activity, levels = activityLabels[, 1], labels = activityLabels[, 2])

# Requirement 4 - Appropriately label the data set with descriptive variable names (Referring README.txt for column names)
  ActivityDataSetCols <- colnames(ActivityDataSet)
  ActivityDataSetCols <- str_replace_all(ActivityDataSetCols, c("-" = "","[\\(\\)]" = "", "Acc" = "Accelerometer", "std" = "StandardDeviation", "Gyro" = "Gyroscope", "mean" = "Mean"))

# feature.txt - t for Time - These time domain signals (prefix 't' to denote time)
# feature.txt - Mag for Magnitude - Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm
# feature.txt - f from Frequency - (Note the 'f' to indicate frequency domain signals)
  
  ActivityDataSetCols <- str_remove_all(ActivityDataSetCols, c("^t" ="Time", "Mag" = "Magnitude", "^f" = "Frequency", "Freq" = "Frequency", "BodyBody" = "Body", "Frequencyuency" = "Frequency"))
  colnames(ActivityDataSet) <- ActivityDataSetCols

# Step 5 - Create a second, independent tidy set with the average of each variable for each activity and each subject

ActivityTidyData <- ActivityDataSet %>% group_by(Subjects, Activity) %>% summarise_each(funs(mean))

# output to file "tidydataset.csv"
write.csv(ActivityTidyData, "tidydataset.csv", row.names=FALSE)
