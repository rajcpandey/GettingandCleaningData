
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

