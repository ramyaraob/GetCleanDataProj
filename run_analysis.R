if(!file.exists("UCI HAR Dataset") ){
  # download file
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="getdata-projectfiles-UCI HAR Dataset.zip")
  unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}

#read the training set

trainsubjects=read.table("UCI HAR Dataset\\train\\subject_train.txt")
trainX=read.table("UCI HAR Dataset\\train\\X_train.txt")
trainY=read.table("UCI HAR Dataset\\train\\Y_train.txt")

# column bind the three tables to create a data set of training data 
# containing the subjects who performed the activity
# the training labels and the training set.
trainset=cbind(trainsubjects,trainY,trainX)

# read the test set
testsubjects=read.table("UCI HAR Dataset\\test\\subject_test.txt")
testX=read.table("UCI HAR Dataset\\test\\X_test.txt")
testY=read.table("UCI HAR Dataset\\test\\Y_test.txt")

# column bind the three tables similar to the training set as above
testset=cbind(testsubjects,testY,testX)

#merge the training and testing data
totalset=rbind(trainset,testset)

#read activity label set
activitylabels=read.table("UCI HAR Dataset\\activity_labels.txt")

newnames=read.table("UCI HAR Dataset\\features.txt", stringsAsFactors=FALSE)
newnames=subset(newnames, select=c(V2))
newnames<-rbind("Subject","ActivityName",newnames)

colnameVector<-unlist(newnames[,1])
colnames(totalset)<-colnameVector

totalset$ActivityName<-activitylabels$V2[as.numeric(totalset$ActivityName)]
totalset$Subject<-paste("Subject ",as.character(totalset$Subject))

# create  a partial table with column names that have only mean() and std() in their names
# this is achieved by using regular expressions to select the columns which have mean() or std()
# in their names and creating a set from them.

partialTable<- cbind(totalset["Subject"], totalset["ActivityName"],totalset[,grep("mean[()]|std[()]", colnames(totalset))])
names(partialTable)<-gsub("std[(][)]","StdDeviation",names(partialTable))
names(partialTable)<-gsub("mean[(][)]","MeanValue",names(partialTable))

#creates a second, independent tidy data set with the average of each variable for each activity and each subject
newset<-aggregate(.~(Subject+ActivityName),data=partialTable,FUN=mean, na.rm=TRUE)

#give meaningful names to the columns
names(newset)<-gsub("^t", "Time", names(newset))
names(newset)<-gsub("^f", "Frequency", names(newset))
names(newset)<-gsub("Acc", "Accelerometer", names(newset))
names(newset)<-gsub("Gyro", "Gyroscope", names(newset))
names(newset)<-gsub("Mag", "Magnitude", names(newset))

newset<-newset[order(newset$Subject,newset$ActivityName),]

#write the partial table to a text file by name fix.txt
write.table(newset,file="TidyData.txt",row.name=FALSE)


