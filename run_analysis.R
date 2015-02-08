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
                          stringsAsFactors=FALSE
                          )
    
    dataSetSubject <- read.table(
        pathTxtFileWithSubjects,
        col.names = c(subjectIdColname),
        stringsAsFactors=FALSE)
    
    dataSetActivities <- read.table(
        pathTxtFileWithActivities, 
        col.names = c(activityColname),
        stringsAsFactors=FALSE
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

meanStdColumnIndexes <- c(grep("subjectId", colnames(total)),
                          grep("activity", colnames(total)),
                          grep("mean", colnames(total)), 
                          grep("std", colnames(total))                     
                          )

meanStdDataSet <- total[, meanStdColumnIndexes]

meanStdDataSet$activity <- sapply(meanStdDataSet$activity, function(x) {
    as.character(activityLabelsSet[x, 2])
})

tidyData = aggregate(meanStdDataSet[, 3:81], 
                     list(subjectId = meanStdDataSet$subjectId, 
                          activity = meanStdDataSet$activity),
                     mean
                     )

# uniqueSubjectIds = unique(meanStdDataSet$subjectId)
# 
# tidyData = data.frame()
# 
# for(subjectId in uniqueSubjectIds) {    
#     for(activityLabel in activityLabelsSet[, 2]) {                
#         activitySubjectSubSet <- subset(meanStdDataSet, 
#                                         subjectId == subjectId & 
#                                             activity == activityLabel,
#                                         select = 1:79 
#                                         )
#         
#         
#         
#          variableNames <- colnames(activitySubjectSubSet)
#          
#          for(variableName in variableNames) {
#              if(subjectId == 2 & activityLabel == 'WALKING') {                        
#                  cat(variableName, "-", mean(activitySubjectSubSet[[variableName]]), "\n")
#              }
#              
#             cat(subjectId, "-", activityLabel, "-", variableName, 
#                 "-", mean(activitySubjectSubSet[[variableName]]), "\n"
#             )                
#          }                                        
#      }
# }