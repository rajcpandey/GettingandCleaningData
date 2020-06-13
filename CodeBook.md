# CodeBook

## Variables

Following table list the variables from tidydataset.csv file which the output of this assignment. Variables are in the order of their appearance in the tidydataset.csv file.

  Variable Name                                     | Type          | Description
  ----------------                                  | --------------|-------------
  Subjects                                          | int           | Id of the subjects participated in the study. Range is from 1 to 30
  Activity                                          | Factor        | The actual work which subject were asked to perform. LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
  TimeBodyAccelerometerMeanX| num | Average body acceleraton signal in X direction - time dimension 
  TimeBodyAccelerometerMeanY| num | Average body acceleraton signal in Y direction - time dimension
  TimeBodyAccelerometerMeanZ| num | Average body acceleraton signal in Z direction - time dimension
  TimeBodyAccelerometerStandardDeviationX| num | Standard deviation for body acceleraton singnal in X direction - time dimension
  TimeBodyAccelerometerStandardDeviationY| num | Standard deviation for body acceleraton signal in Y direction - time dimension
  TimeBodyAccelerometerStandardDeviationZ| num | Standard deviation for body acceleraton signal in Z direction - time dimension
  TimeGravityAccelerometerMeanX| num | Average for gravity acceleraton signal in X direction - time dimension
  TimeGravityAccelerometerMeanY| num | Average for gravity acceleraton signal in Y direction - time dimension
  TimeGravityAccelerometerMeanZ| num | Average for gravity acceleraton signal in Z direction - time dimension
  TimeGravityAccelerometerStandardDeviationX| num | Standard deviation for gravity acceleraton signal in X direction - time dimension
  TimeGravityAccelerometerStandardDeviationY| num | Standard deviation for gravity acceleraton signal in Y direction - time dimension
  TimeGravityAccelerometerStandardDeviationZ| num | Standard deviation for gravity acceleraton signal in Z direction - time dimension
  TimeBodyAccelerometerJerkMeanX| num | Average for Body lenear acceleraton to obtain jerk signals in X direction - time dimension
  TimeBodyAccelerometerJerkMeanY| num | Average for Body lenear acceleraton to obtain jerk signals in Y direction - time dimension
  TimeBodyAccelerometerJerkMeanZ| num | Average for Body lenear acceleraton to obtain jerk signals in Z direction - time dimension
  TimeBodyAccelerometerJerkStandardDeviationX| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in X direction - time dimension
  TimeBodyAccelerometerJerkStandardDeviationY| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in Y direction - time dimension
  TimeBodyAccelerometerJerkStandardDeviationZ| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in Z direction - time dimension
  TimeBodyGyroscopeMeanX| num | Average for Body Gyroscope in X direction - time dimension
  TimeBodyGyroscopeMeanY| num | Average for Body Gyroscope in Y direction - time dimension
  TimeBodyGyroscopeMeanZ| num | Average for Body Gyroscope in Z direction - time dimension
  TimeBodyGyroscopeStandardDeviationX| num | Standard deviation for Body Gyroscope in X direction - time dimension
  TimeBodyGyroscopeStandardDeviationY| num | Standard deviation for Body Gyroscope in X direction - time dimension
  TimeBodyGyroscopeStandardDeviationZ| num | Standard deviation for Body Gyroscope in X direction - time dimension
  TimeBodyGyroscopeJerkMeanX| num | Average for Body angular velocity to obtain jerk signals in X direction - time dimension
  TimeBodyGyroscopeJerkMeanY| num | Average for Body angular velocity to obtain jerk signals in Y direction - time dimension
  TimeBodyGyroscopeJerkMeanZ| num | Average for Body angular velocity to obtain jerk signals in Z direction - time dimension
  TimeBodyGyroscopeJerkStandardDeviationX| num | Standard deviation for Body angular velocity to obtain jerk signals in X direction - time dimension
  TimeBodyGyroscopeJerkStandardDeviationY| num | Standard deviation for Body angular velocity to obtain jerk signals in Y direction - time dimension
  TimeBodyGyroscopeJerkStandardDeviationZ| num | Standard deviation for Body angular velocity to obtain jerk signals in Z direction - time dimension
  TimeBodyAccelerometerMagnitudeMean| num | Average magnitude of body acceleraton signal - time dimension
  TimeBodyAccelerometerMagnitudeStandardDeviation| num | Standard deviation for magnitude of body acceleraton signal - time dimension
  TimeGravityAccelerometerMagnitudeMean| num | Average magnitude of gravity acceleraton signal - time dimension
  TimeGravityAccelerometerMagnitudeStandardDeviation| num | Standard deviation for gravity acceleraton signal - time dimension
  TimeBodyAccelerometerJerkMagnitudeMean| num | Average magnitude of Body lenear acceleraton to obtain jerk signals - time dimension
  TimeBodyAccelerometerJerkMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body lenear acceleraton to obtain jerk signals - time dimension
  TimeBodyGyroscopeMagnitudeMean| num | Average magnitude of Body Gyroscope - time dimension
  TimeBodyGyroscopeMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body Gyroscope - time dimension
  TimeBodyGyroscopeJerkMagnitudeMean| num | Average magnitude of Body angular velocity to obtain jerk signals - time dimension
  TimeBodyGyroscopeJerkMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body angular velocity to obtain jerk signals - time dimension
  FrequencyBodyAccelerometerMeanX| num | Average body acceleraton signal in X direction - frequency dimension 
  FrequencyBodyAccelerometerMeanY| num | Average body acceleraton signal in Y direction - frequency dimension 
  FrequencyBodyAccelerometerMeanZ| num | Average body acceleraton signal in Z direction - frequency dimension 
  FrequencyBodyAccelerometerStandardDeviationX| num | Standard deviation for body acceleraton singnal in X direction - frequency dimension
  FrequencyBodyAccelerometerStandardDeviationY| num | Standard deviation for body acceleraton singnal in Y direction - frequency dimension
  FrequencyBodyAccelerometerStandardDeviationZ| num | Standard deviation for body acceleraton singnal in Z direction - frequency dimension
  FrequencyBodyAccelerometerMeanFrequencyX| num | Weighted average of the frequency components to obtain body acceleration in X direction - frequency domain
  FrequencyBodyAccelerometerMeanFrequencyY| num | Weighted average of the frequency components to obtain body acceleration in Y direction - frequency domain
  FrequencyBodyAccelerometerMeanFrequencyZ| num | Weighted average of the frequency components to obtain body acceleration in Z direction - frequency domain
  FrequencyBodyAccelerometerJerkMeanX| num | Average for Body lenear acceleraton to obtain jerk signals in X direction - frequency dimension
  FrequencyBodyAccelerometerJerkMeanY| num | Average for Body lenear acceleraton to obtain jerk signals in Y direction - frequency dimension
  FrequencyBodyAccelerometerJerkMeanZ| num | Average for Body lenear acceleraton to obtain jerk signals in Z direction - frequency dimension
  FrequencyBodyAccelerometerJerkStandardDeviationX| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in X direction - frequency dimension
  FrequencyBodyAccelerometerJerkStandardDeviationY| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in Y direction - frequency dimension
  FrequencyBodyAccelerometerJerkStandardDeviationZ| num | Standard deviation for Body lenear acceleraton to obtain jerk signals in Z direction - frequency dimension
  FrequencyBodyAccelerometerJerkMeanFrequencyX| num | Weighted average of the frequency components to obtain a Jerk sinal in X direction - frequency domain
  FrequencyBodyAccelerometerJerkMeanFrequencyY| num | Weighted average of the frequency components to obtain a Jerk sinal in Y direction - frequency domain
  FrequencyBodyAccelerometerJerkMeanFrequencyZ| num | Weighted average of the frequency components to obtain a Jerk sinal in Z direction - frequency domain
  FrequencyBodyGyroscopeMeanX| num | Average for Body Gyroscope in X direction - frequency dimension
  FrequencyBodyGyroscopeMeanY| num | Average for Body Gyroscope in Y direction - frequency dimension
  FrequencyBodyGyroscopeMeanZ| num | Average for Body Gyroscope in Z direction - frequency dimension
  FrequencyBodyGyroscopeStandardDeviationX| num | Standard deviation for Body Gyroscope in X direction - frequency dimension
  FrequencyBodyGyroscopeStandardDeviationY| num | Standard deviation for Body Gyroscope in Y direction - frequency dimension
  FrequencyBodyGyroscopeStandardDeviationZ| num | Standard deviation for Body Gyroscope in Z direction - frequency dimension
  FrequencyBodyGyroscopeMeanFrequencyX| num | Weighted average of Body Gyroscope in X direction - frequency domain
  FrequencyBodyGyroscopeMeanFrequencyY| num | Weighted average of Body Gyroscope in Y direction - frequency domain
  FrequencyBodyGyroscopeMeanFrequencyZ| num | Weighted average of Body Gyroscope in Z direction - frequency domain
  FrequencyBodyAccelerometerMagnitudeMean| num | Average magnitude of body acceleraton signal - frequency dimension
  FrequencyBodyAccelerometerMagnitudeStandardDeviation| num | Standard deviation for magnitude of body acceleraton signal - frequency dimension
  FrequencyBodyAccelerometerMagnitudeMeanFrequency| num | Weighted average of magnitude of body acceleraton signal - frequency dimension
  FrequencyBodyAccelerometerJerkMagnitudeMean| num | Average magnitude of Body lenear acceleraton to obtain jerk signals - frequency dimension
  FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body lenear acceleraton to obtain jerk signals - frequency dimension
  FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency| num | Weighted average of magbitude of Body lenear acceleraton to obtain jerk signals - frequency dimension
  FrequencyBodyGyroscopeMagnitudeMean| num | Average magnitude of Body Gyroscope - frequency dimension
  FrequencyBodyGyroscopeMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body Gyroscope - frequency dimension
  FrequencyBodyGyroscopeMagnitudeMeanFrequency| num | Weighted average of magnitude of Body Gyroscope - frequency dimension
  FrequencyBodyGyroscopeJerkMagnitudeMean| num | Average magnitude of Body angular velocity to obtain jerk signals - frequency dimension
  FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation| num | Standard deviation for magnitude of Body angular velocity to obtain jerk signals - frequency dimension
  FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency| num | Weighted average magnitude of Body angular velocity to obtain jerk signals - frequency dimension
  
  