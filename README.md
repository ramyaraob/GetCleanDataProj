GetCleanDataProj
================

This is the readmefile accompanying the run_analysis.R script for analyzing the test and training data set.

Algorithm for analyzing data:

1. Load test data from the files under test folder and training data from the files under the train folder
2. Load the features and descriptive activity names from features.txt and activity_info.txt
3. Load the data and merge the training and test data
4. Using the descriptive activity names and features modify the column names (features) and column value for Activity in the new data.
5. Select only the columns representing mean and standard deviation values for the features.
6. Find the average of these features for every participant and activity and create a new tidy data set.
7. Write this data to a file. 


Along with the script, this project contains,
1. A CodeBook (CodeBook.md) describing the various variables.
   HTML version - CodeBook.html
   R markdown - CodeBook.rmd
2. TidyData.txt - file containing the new tidy data.
