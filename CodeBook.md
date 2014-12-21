# Code Book for the tidyData.txt file created as output of run_analysis.R

## Summary

* All values comuputed in the tidyData.txt table are averages from the raw data 
* Averages have been computed by subject and by activity

## Variables

* TestSubject : Reference identifier for subject who performed the test
* Activity : Activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* ALL FOLLOWING VARIABLES: These are either time- or frequency- domain variables computed from raw measurement data.
.* The prefixes 't' and 'f' denote time and frequency domain respectively.
.* The '-X,-Y,-Z' denote measurement direction
.* The 'mean()' and 'std()' denote mean and standard deviations, respectively
.* Further details on the measurements and their computation are contained with the README.md file included with the zipped raw data (located at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

