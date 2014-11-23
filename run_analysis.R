# You will be required to submit: 
#         1) a tidy data set as described below, 
#         2) a link to a Github repository with your script for performing 
#            the analysis, and 
#         3) a code book that describes the variables, the data, and any 
#            transformations or work that you performed to clean up the 
#            data called CodeBook.md. 
#         4) You should also include a README.md in the repo with your scripts. 
#            This repo explains how all of the scripts work and how they 
#            are connected.  
#

library(dplyr)
library(reshape2)
# 1. Merges the training and the test sets to create one data set.
# read raw data
features <- read.table("./data/UCI HAR Dataset/features.txt")
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Merge test data into dfTest
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
dfTest <- cbind(subject_test,ytest$V1, xtest)
colnames(dfTest) <- features$V2
names(dfTest)[1:2] <- c("Subject", "Activity")

# Merge training data into dfTrain
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
dfTrain <- cbind(subject_train,ytrain$V1, xtrain)
colnames(dfTrain) <- features$V2
names(dfTrain)[1:2] <- c("Subject", "Activity")

# Merge "test data" (dfTest) and "training data" (dfTrain) into one dataframe "df"
df <- rbind(dfTest, dfTrain)
df <- tbl_df(df)

# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement. 
df <- df[,grep("Subject|Activity|mean|std",colnames(df),value=F)]
# remove "meanFreq"
df <- df[,grep("meanFreq",colnames(df),invert = TRUE)]

# 3. Uses descriptive activity names to name the activities in the data set
df$Activity <- activityLabels[match(df$Activity, activityLabels$V1) , 2]

# 4. Appropriately labels the data set with descriptive variable names. 
OriginalColumnNames <- names(df)
names(df)<-gsub("fBody","FrequencyBody",names(df),ignore.case=T)
names(df)<-gsub("tBody","TimeBody",names(df),ignore.case=T)
names(df)<-gsub("tGravity","TimeGravity",names(df),ignore.case=T)
names(df)<-gsub("BodyBody","Body",names(df),ignore.case=T)
names(df)<-gsub("mean","Mean",names(df),ignore.case=T)
names(df)<-gsub("std","StandardDeviation",names(df),ignore.case=T)
names(df)<-gsub("Mag","Magnitude",names(df),ignore.case=T)
names(df)<-gsub("Acc","Acceleration",names(df),ignore.case=T)
names(df)<-gsub("Gyro","Gyroscope",names(df),ignore.case=T)
names(df)<-gsub("\\(\\)","",names(df),ignore.case=T)
names(df)<-gsub("-X","Xaxis",names(df),ignore.case=T)
names(df)<-gsub("-Y","Yaxis",names(df),ignore.case=T)
names(df)<-gsub("-Z","Zaxis",names(df),ignore.case=T)
names(df)<-gsub("-","",names(df),ignore.case=T)
NewColumnNames <- names(df)
ColumnNamesTransformation = cbind(OriginalColumnNames, NewColumnNames)

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
df <- melt(df, id.vars = c("Subject", "Activity"))
df <- dcast(Subject + Activity ~ variable, data = df, fun = mean)
df <- melt(df, id.vars = c("Subject", "Activity"))
write.table(df, file = "tidydata.txt", sep = "\t", row.names = FALSE, quote=FALSE)