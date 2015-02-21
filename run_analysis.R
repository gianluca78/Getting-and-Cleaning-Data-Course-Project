# The function merge a txt file with experiment data 
# with a txt file with the subject data
# and assign colnames taken from a third txt file.
# The function returns a dataframe with the complete data.
mergeDataSubjectActivitiesSetWithColnames <- function(
    pathTxtFileWithData,
    pathTxtFileWithSubjects,
    pathTxtFileWithActivities,
    pathTxtFileWithNames, 
    fileWithNamesColumnIndex = 2,
    subjectIdColname = "subjectId",
    activityColname = "activity"
    ) {
    
    namesDataset <- read.table(pathTxtFileWithNames)
    
    dataSet <- read.table(pathTxtFileWithData, 
                          col.names = namesDataset[, fileWithNamesColumnIndex],
                          check.names = FALSE
                          )
    
    dataSetSubject <- read.table(
        pathTxtFileWithSubjects,
        col.names = c(subjectIdColname)
    )
    
    dataSetActivities <- read.table(
        pathTxtFileWithActivities, 
        col.names = c(activityColname)
        )
    
    dataSet <- cbind(dataSet, dataSetSubject, dataSetActivities)
}

activityLabelsSet <- read.table("UCI HAR Dataset/activity_labels.txt")

trainingSet <- mergeDataSubjectActivitiesSetWithColnames(
    "UCI HAR Dataset/train/X_train.txt",
    "UCI HAR Dataset/train/subject_train.txt",
    "UCI HAR Dataset/train/y_train.txt",
    "UCI HAR Dataset/features.txt"
    )

testSet <- mergeDataSubjectActivitiesSetWithColnames(
    "UCI HAR Dataset/test/X_test.txt",
    "UCI HAR Dataset/test/subject_test.txt",
    "UCI HAR Dataset/test/y_test.txt",
    "UCI HAR Dataset/features.txt"
)

total <- rbind(testSet, trainingSet)

#get the indexes of the column I want to import in the tidy dataframe
meanStdColumnIndexes <- c(grep("subjectId", colnames(total)),
                          grep("activity", colnames(total)),
                          grep("mean", colnames(total)), 
                          grep("std", colnames(total))                     
                          )

#subset the complete dataframe to extract only the column with means and stds
meanStdDataSet <- total[, meanStdColumnIndexes]

#apply descriptive variable names in the activity column
meanStdDataSet$activity <- sapply(meanStdDataSet$activity, function(x) {
    as.character(activityLabelsSet[x, 2])
})

#aggregate data for each subject for each activity with average values
tidyData = aggregate(meanStdDataSet[, 3:81], 
                     list(subjectId = meanStdDataSet$subjectId, 
                          activity = meanStdDataSet$activity),
                     mean
                     )