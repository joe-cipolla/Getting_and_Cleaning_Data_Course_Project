# Getting_and_Cleaning_Data_Course_Project
This repository was created for the Coursera Getting and Cleaning Data course project as specified in the instructions given at https://class.coursera.org/getdata-030/human_grading/view/courses/975114/assessments/3/submissions.  

It includes an r script named run_analysis.R, as well as this README.md file and a codebook.md file describing the data, variables and data transformations.

run_analysis.R script performs the following actions:
1. Reads the test and training data sets from the working directory into R as tables
2. Merges the training and the test sets to create one data set
3. Extracts only the measurements on the mean and standard deviation for each measurement
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names
6. From the data set in step 4, creates a second, independent tidy data set with the 
average of each variable for each activity and each subject
7. Writes that tidy data set into the working directory as "averaged_dataset.txt"

