library(plyr)
#Set working directory
setwd("./")
#Read and merge test data
testVector <- read.table("./test/X_test.txt")
testSubjects <- read.table("./test/subject_test.txt")
testLabels <- read.table("./test/y_test.txt")
testData <- cbind(testVector,testSubjects,testLabels)
#Read and merge train data
trainVector <- read.table("./train/X_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")
trainLabels <- read.table("./train/y_train.txt")
trainData <- cbind(trainVector,trainSubjects,trainLabels)
#Merge training and test data
allData <- rbind(trainData,testData)
#Read features list
features <- read.table("./features.txt",stringsAsFactor=FALSE)
#Append TestSubject and Activity to the end of the features list
features[nrow(features)+1,] <- c(nrow(features)+1,"TestSubject")
features[nrow(features)+1,] <- c(nrow(features)+1,"Activity")
#Assign the list of features as column names to the merged dataframe
colnames(allData) <- features[,2]
#Select only the mean and std deviation variables
meanAndStdVar <- names(allData)[grep('mean|std|TestSubject|Activity',names(allData))]
truncData <- subset(allData,select=meanAndStdVar)
#Replace test labels with common name values
truncData$Activity <- factor(truncData$Activity,
                              levels=c(1,2,3,4,5,6), 
                              labels=c("WALKING",
                                       "WALKING_UPSTAIRS",
                                       "WALKING_DOWNSTAIRS",
                                       "SITTING",
                                       "STANDING",
                                       "LAYING"))
#Generate the tidy dataset containing averages by subject and label
tidyData <- ddply(.data = truncData,
                  .variables = c('TestSubject','Activity'),
                  .fun = function(p) {
                    colMeans(p[,1:(ncol(p)-2)])
                  })
write.table(tidyData,file="tidyData.txt",row.names=FALSE)
#end
