#####  run_analysis.R script performs the following actions:
#####  1. Merges the training and the test sets to create one data set
#####  2. Extracts only the measurements on the mean and standard deviation for each measurement
#####  3. Uses descriptive activity names to name the activities in the data set
#####  4. Appropriately labels the data set with descriptive variable names
#####  5. From the data set in step 4, creates a second, independent tidy data set with the 
#####     average of each variable for each activity and each subject


library(plyr)


# 1. Merges the training and the test sets to create one data set
#################################################################################################
# loads all necessary source data into R
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

# combines test and training tables together for each table pair (x, y, and subject)
x_table <- rbind(x_test,x_train)
y_table <- rbind(y_test,y_train)
subject_table <- rbind(subject_test,subject_train)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement
#################################################################################################
# extracts variables with either mean or std in the name
mean_or_std_columns <- grep("(mean|std)\\(\\)",features[,2])

# extracts mean or std variables out of x table
x_table <- x_table[,mean_or_std_columns]


# 3. Uses descriptive activity names to name the activities in the data set
#################################################################################################
y_table[,1] <- activity_labels[y_table[,1],2]


# 4. Appropriately labels the data set with descriptive variable names
#################################################################################################
# applies names from features table to new (mean and std only) x table 
names(x_table) <- features[mean_or_std_columns,2]

# changes y_table header name
names(y_table) <- "Activity"

# changes subject_table header name
names(subject_table) <- "Subject"

# combinds each table (x, y, and subject) into one data set
complete_dataset <- cbind(x_table,y_table,subject_table)


# 5. From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject
#################################################################################################
averaged_dataset <- ddply(complete_dataset,c("Subject","Activity"),numcolwise(mean))

# writes tidy data set of averages to working directory
write.table(averaged_dataset,"averaged_dataset.txt",row.name=FALSE)




