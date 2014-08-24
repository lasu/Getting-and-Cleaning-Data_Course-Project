##Step1: Merges the training and the test sets to create one data set.
#features
trainData <- read.table("./train/X_train.txt") #dim(trainData) => 7352*561
testData <- read.table("./test/X_test.txt") #dim(testData) => 2947*561
Data <- rbind(trainData,testData) #dim(Data) => 10299*561

#activity labels
trainLabel <- read.table("./train/y_train.txt") #dim(trainLabel) => 7352*1
testLabel <- read.table("./test/y_test.txt") #dim(testLabel) => 2947*1
Label <- rbind(trainLabel,testLabel) #dim(Label) => 10299*1

#subject
trainSubject <- read.table("./train/subject_train.txt") #dim(trainSubject) => 7532*1
testSubject <- read.table("./test/subject_test.txt")#dim(testSubject) => 2947*1
Subject <- rbind(trainSubject,testSubject)#dim(Subject) => 10299*1

##Step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("features.txt") #dim(features) => 561*2 (561rows features)
meanstd <- grep("mean\\(\\)|std\\(\\)", features[, 2]) #find mean or std features
Data <- Data[,meanstd] #dim(Data) => 10299*66, remove others(only choose mean and std features)
names(Data) <- features[meanstd,2] #rename column names to features
names(Data) <- gsub("\\(\\)",replacement="",names(Data)) #remove '(' and ')'
names(Data) <- gsub("-",replacement="",names(Data)) #remove '-'

##Step3: Uses descriptive activity names to name the activities in the data set.
activity <- read.table("activity_labels.txt") #6 activities
Label[,1] <- activity[Label[,1],2] #rename (1,2...-> WALKING,WALKING_UPSTAIRS...)

##Step4: Appropriately labels the data set with descriptive activity names. 
names(Label) <- "activity"
names(Subject) <- "subject"
tidyData <- cbind(Subject,Label,Data) #merge 3 dataset
write.table(tidyData, "tidy_data.txt",row.name=FALSE) #creat a new file(first file)

##Step5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
subject_n <- split(tidyData$activity,tidyData$subject) #30 subjects
subject_pre <- lapply(subject_n,length) #every subjects have how much datas(rows)
upperb <- 1 #upper bound of split matrix
lowerb <- 0 #lower bound of split matrix
subjects <- length(table(Subject)) #30 subjects
activities <- dim(activity)[1] #6 activities

current <- matrix(NA, nrow=subjects*activities, ncol=dim(tidyData)[2]) #initial final dataset
current <- as.data.frame(current)
temp <- matrix(NA,nrow=activities,ncol=dim(tidyData)[2]-2)
temp2 <- NULL
current[,1] <- sort(rep(seq(1:subjects),activities)) #1 1 1 1 1 1 2 2 2 2 2 2 ....
current[,2] <- rep(activity[,2],subjects) #WALKING,WALKING_UPSTAIRS...

for(i in 1:subjects){ #30 subjects
	lowerb <- lowerb + as.numeric(subject_pre[i])
	m <- tidyData[upperb:lowerb,] #split dataset into 6 subsets(subjects)
	for(k in 3:68){ #66 variables
		r <- tapply(m[,k],m$activity,mean) #mean
		temp[,k-2] <- r #bind 66 variables
	}
	temp2 <- rbind(temp2,temp) #bind 6 subjects
	upperb <- lowerb + 1
}
for(i in 3:dim(tidyData)[2]){ #bind with subject and activity
	current[,i] <- temp2[,i-2]
}
colnames(current) <- names(tidyData) #rename column names

write.table(current, "tidy_data_second.txt",row.name=FALSE) #creat a new file(second file)
