# Getting-and-Cleaning-Data-Course-Project

This repo covers the class assignment from Coursera's 'Getting and Cleaning Data' class. It uses on the Samsung data set to create a tidy, reduced dataset.

# Running the script:
1. Download the Samsung dataset from https.//d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip its contents to a user defined directory (userdefdir)
3. Copy run_analysis.R to userdefdir
4. Run the R script in R Studio

# Ouputs

The script creates a space-delimited data file called "tidyData.txt" in userdefdir. This contains averages of values from the raw data, organized by test subject and activity label. It contains data from both the training and the test datasets, but includes only mean and standard deviation values. The output data contains the averages organized by activity label and test subjects.

# How the script works
The run_analysis.R script works by performing the following steps:

1. Sets the working directory to the current directory
2. Reads the test data files (X_test.txt, subject_test.txt, y_test.txt) and appends the latter 2 to the first
3. Repeats step 2 for the training dataset
4. Merges the test and training datasets
5. Reads the features list (features.txt) and adds the labels 'Test Subject' and 'Activity' to these. Assigns this features list as column names to the combined dataset
6. Trims this combined dataset to only mean and standard deviation related variables
7. Replaces 'Activity' labels with actual acitivity names
8. Computes averages by 'TestSubject' and 'Activity'
9. Writes the resulting data out to a file 'tidyData.txt'

Additional References
=====================
* Refer to the README within the zipped raw data file for additional information on how the data was collected
* Refer to the codebook for additional information on variables 
