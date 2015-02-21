## Description
This repository contains a script ([run_analysis.R](https://github.com/gianluca78/Getting-and-Cleaning-Data-Course-Project/blob/master/run_analysis.R)) to create a tidy data frame starting from data collected from the accelerometers from the [Samsung Galaxy S smartphone](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The original raw data set includes many files with both training and test data.
Starting from the original data, the script executes the following steps:

* merge the training files: X_train.txt, subject_train.txt, and y_train.txt;
* merge the training files: X_test.txt, subject_test.txt, and y_test.txt;
* assign descriptive variable names to the dataframe variables;
* replace the numeric values of the activity column with descriptive activity names;
* return a dataframe with the average of each variable for each activity and each subject.

A [code book](https://github.com/gianluca78/Getting-and-Cleaning-Data-Course-Project/blob/master/CodeBook.md) is also provided in order to better describe the raw data and the 
variable details of the tidy data produced by the script.

## About
This repository has been created as a project work for the Coursera course 
[Getting and Cleaning Data](https://class.coursera.org/getdata-011).