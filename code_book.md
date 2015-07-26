DATA VARIABLE DICTIONARY - run_analysis.R
==================================================================
x_test - test dataset 
y_test - test data variable labels
subject_test - test subject labels
x_train - training dataset 
y_train - training data variable labels
subject_train - training subject labels
features - list of all features
activity_labels - links the class labels with their activity name
x_table - combination of x_test and x_train
y_table - combination of x_train and y_train
subject_table - combination of subject_train and subject_test
mean_or_std_columns - columns in features data with "mean" or "std" in the name
complete_dataset - combination of x_table, y_table, and subject_table
averaged_dataset - tidy dataset with average of each variable for each activity and each subject


SOURCE DATA DESCRIPTION
==================================================================
Human Activity Recognition Using Smartphones Dataset - Version 1.0
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names

Source data provided by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Source data is created by experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record there is data for:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


DATA TRANSFORMATIONS
==================================================================
1. The test and training datasets ("x" data) are combined into a single table.
2. The test and training variable labels are combined ("y" data) into one table.
3. The subject data for test and training are combined into one table.
4. All variables without "mean" or "std" in the name are removed from the x_table dataset.
5. All values in the y_table are renamed with descriptive activity names from the activity_labels dataset.
6. All variables in the x_table are renamed with variable names from the features dataset.
7. All three tables (x_table, y_table, and subject_table) are combined together to make the complete_dataset table.




