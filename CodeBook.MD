Human Activity Recognition Using Smartphones Data Set 
=====================================================
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file for further details about this dataset.

### Attribute Information:

For each record in the dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

### Transformation of original column names in to descriptive variable names

| Original Column Name        | Descriptive Variable Name                                      |
|-----------------------------|---------------------------------------------------------|
|                             | Subject                                                 |
|                             | Activity                                                |
| tBodyAcc-mean()-Z           | TimeBodyAccelerationMeanZaxis                           |
| tBodyAcc-std()-X            | TimeBodyAccelerationStandardDeviationXaxis              |
| tBodyAcc-std()-Y            | TimeBodyAccelerationStandardDeviationYaxis              |
| tBodyAcc-std()-Z            | TimeBodyAccelerationStandardDeviationZaxis              |
| tGravityAcc-mean()-X        | TimeGravityAccelerationMeanXaxis                        |
| tGravityAcc-mean()-Y        | TimeGravityAccelerationMeanYaxis                        |
| tGravityAcc-mean()-Z        | TimeGravityAccelerationMeanZaxis                        |
| tGravityAcc-std()-X         | TimeGravityAccelerationStandardDeviationXaxis           |
| tGravityAcc-std()-Y         | TimeGravityAccelerationStandardDeviationYaxis           |
| tGravityAcc-std()-Z         | TimeGravityAccelerationStandardDeviationZaxis           |
| tBodyAccJerk-mean()-X       | TimeBodyAccelerationJerkMeanXaxis                       |
| tBodyAccJerk-mean()-Y       | TimeBodyAccelerationJerkMeanYaxis                       |
| tBodyAccJerk-mean()-Z       | TimeBodyAccelerationJerkMeanZaxis                       |
| tBodyAccJerk-std()-X        | TimeBodyAccelerationJerkStandardDeviationXaxis          |
| tBodyAccJerk-std()-Y        | TimeBodyAccelerationJerkStandardDeviationYaxis          |
| tBodyAccJerk-std()-Z        | TimeBodyAccelerationJerkStandardDeviationZaxis          |
| tBodyGyro-mean()-X          | TimeBodyGyroscopeMeanXaxis                              |
| tBodyGyro-mean()-Y          | TimeBodyGyroscopeMeanYaxis                              |
| tBodyGyro-mean()-Z          | TimeBodyGyroscopeMeanZaxis                              |
| tBodyGyro-std()-X           | TimeBodyGyroscopeStandardDeviationXaxis                 |
| tBodyGyro-std()-Y           | TimeBodyGyroscopeStandardDeviationYaxis                 |
| tBodyGyro-std()-Z           | TimeBodyGyroscopeStandardDeviationZaxis                 |
| tBodyGyroJerk-mean()-X      | TimeBodyGyroscopeJerkMeanXaxis                          |
| tBodyGyroJerk-mean()-Y      | TimeBodyGyroscopeJerkMeanYaxis                          |
| tBodyGyroJerk-mean()-Z      | TimeBodyGyroscopeJerkMeanZaxis                          |
| tBodyGyroJerk-std()-X       | TimeBodyGyroscopeJerkStandardDeviationXaxis             |
| tBodyGyroJerk-std()-Y       | TimeBodyGyroscopeJerkStandardDeviationYaxis             |
| tBodyGyroJerk-std()-Z       | TimeBodyGyroscopeJerkStandardDeviationZaxis             |
| tBodyAccMag-mean()          | TimeBodyAccelerationMagnitudeMean                       |
| tBodyAccMag-std()           | TimeBodyAccelerationMagnitudeStandardDeviation          |
| tGravityAccMag-mean()       | TimeGravityAccelerationMagnitudeMean                    |
| tGravityAccMag-std()        | TimeGravityAccelerationMagnitudeStandardDeviation       |
| tBodyAccJerkMag-mean()      | TimeBodyAccelerationJerkMagnitudeMean                   |
| tBodyAccJerkMag-std()       | TimeBodyAccelerationJerkMagnitudeStandardDeviation      |
| tBodyGyroMag-mean()         | TimeBodyGyroscopeMagnitudeMean                          |
| tBodyGyroMag-std()          | TimeBodyGyroscopeMagnitudeStandardDeviation             |
| tBodyGyroJerkMag-mean()     | TimeBodyGyroscopeJerkMagnitudeMean                      |
| tBodyGyroJerkMag-std()      | TimeBodyGyroscopeJerkMagnitudeStandardDeviation         |
| fBodyAcc-mean()-X           | FrequencyBodyAccelerationMeanXaxis                      |
| fBodyAcc-mean()-Y           | FrequencyBodyAccelerationMeanYaxis                      |
| fBodyAcc-mean()-Z           | FrequencyBodyAccelerationMeanZaxis                      |
| fBodyAcc-std()-X            | FrequencyBodyAccelerationStandardDeviationXaxis         |
| fBodyAcc-std()-Y            | FrequencyBodyAccelerationStandardDeviationYaxis         |
| fBodyAcc-std()-Z            | FrequencyBodyAccelerationStandardDeviationZaxis         |
| fBodyAccJerk-mean()-X       | FrequencyBodyAccelerationJerkMeanXaxis                  |
| fBodyAccJerk-mean()-Y       | FrequencyBodyAccelerationJerkMeanYaxis                  |
| fBodyAccJerk-mean()-Z       | FrequencyBodyAccelerationJerkMeanZaxis                  |
| fBodyAccJerk-std()-X        | FrequencyBodyAccelerationJerkStandardDeviationXaxis     |
| fBodyAccJerk-std()-Y        | FrequencyBodyAccelerationJerkStandardDeviationYaxis     |
| fBodyAccJerk-std()-Z        | FrequencyBodyAccelerationJerkStandardDeviationZaxis     |
| fBodyGyro-mean()-X          | FrequencyBodyGyroscopeMeanXaxis                         |
| fBodyGyro-mean()-Y          | FrequencyBodyGyroscopeMeanYaxis                         |
| fBodyGyro-mean()-Z          | FrequencyBodyGyroscopeMeanZaxis                         |
| fBodyGyro-std()-X           | FrequencyBodyGyroscopeStandardDeviationXaxis            |
| fBodyGyro-std()-Y           | FrequencyBodyGyroscopeStandardDeviationYaxis            |
| fBodyGyro-std()-Z           | FrequencyBodyGyroscopeStandardDeviationZaxis            |
| fBodyAccMag-mean()          | FrequencyBodyAccelerationMagnitudeMean                  |
| fBodyAccMag-std()           | FrequencyBodyAccelerationMagnitudeStandardDeviation     |
| fBodyBodyAccJerkMag-mean()  | FrequencyBodyAccelerationJerkMagnitudeMean              |
| fBodyBodyAccJerkMag-std()   | FrequencyBodyAccelerationJerkMagnitudeStandardDeviation |
| fBodyBodyGyroMag-mean()     | FrequencyBodyGyroscopeMagnitudeMean                     |
| fBodyBodyGyroMag-std()      | FrequencyBodyGyroscopeMagnitudeStandardDeviation        |
| fBodyBodyGyroJerkMag-mean() | FrequencyBodyGyroscopeJerkMagnitudeMean                 |
| fBodyBodyGyroJerkMag-std()  | FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation    |

### What run_analysis.R does

1. merges the test data and the training data into one dataset

        * read raw data
        * Merge test data into dfTest
        * Merge train data into dfTrain
        
  Sources:
  
        * Coursera discussion forum --> https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png
        
2. Extracts only the measurements on the mean and standard deviation for each measurement

        * When subsetting on std and mean, also meanFreq is returned. As this is should
        not be part of the subset, the meanFreq measurements are omitted
        

3. Uses descriptive activity names to name the activities in the data set

        * The activities are replaced with the descriptions as
        specified in ./data/UCI HAR Dataset/activity_labels.txt


4. Appropriately labels the data set with descriptive variable names. 

        * Original column names are stored
        * following transformations are done:
        
                - fbody --> FrequencyBody
                - tBody --> TimeBody
                - tGravity --> TimeGravity
                - BodyBody --> Body (this is an error in the original dataset)
                - mean --> Mean
                - std --> StandardDeviation
                - Mag --> Magnitude
                - Acc --> Acceleration
                - Gyro --> Gyroscope
                - -X --> Xaxis
                - -Y --> Yaxis
                - -Z --> Zaxis
                - remove "()"
                - remove "-"
                
        * New column names
        * column names transformation matrix is created and used to show original
        column name and new descriptive variable names. This data was pasted in 
        http://www.tablesgenerator.com/markdown_tables# to generate the variables
        table in Codebook.md

5. creates a second, independent tidy data set with the average of each variable for each activity and each subject, staring from the data set in step 4

        * first melt the data with key "Subject" and "Activity"
        * dcast and apply the mean function on each variable (group by Subject and activity)
        * melt again to get a narrow data set
        * write the tinydata.txt to the current working directory
        

[1]: https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png