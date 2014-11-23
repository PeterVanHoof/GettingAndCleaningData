Getting And Cleaning Data
=========================
There are two scripts which have to be executed in the following order:

1. downloadDataSet.R
2. run_analysis.R

### 1. downloadDataSet.R
This script:

1. creates a "data" subdirectory in the current working d
2. downloads the data
3. unzips the "UCI HAR Dataset" in the "data" subdirectory

### 2. run_analysis.R

This script:

1. merges the test data and the training data into one dataset

        * read raw data
        * Merge test data into dfTest
        * Merge train data into dfTrain
        
  Sources:
  
        * Coursera discussion form --> https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png
        
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