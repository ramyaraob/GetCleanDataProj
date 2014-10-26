GetCleanDataProj
================

The R script that is a part of this repository is as follows
trainsubjects=read.table("train\\subject_train.txt") ## read the list of subjects
trainX=read.table("train\\X_train.txt") ##read the list of training values
trainY=read.table("train\\Y_train.txt") ## read the list of training labels
trainset=cbind(trainsubjects,trainY,trainX) ##merge all the three list

testsubjects=read.table("test\\subject_test.txt") ##repeat the same for test data
testX=read.table("test\\X_test.txt")
testY=read.table("test\\Y_test.txt")
testset=cbind(testsubjects,testY,testX)
##combine test and training data
totalset=rbind(trainset,testset)
##read descriptive names for columns
newnames=read.table("features.txt", stringsAsFactors=FALSE)
newnames=subset(newnames, select=c(V2))
newnames<-rbind("Subject","ActivityName",newnames)

colnameVector<-unlist(newnames[,1])
colnames(totalset)<-colnameVector
##select columns related to mean and std
partialTable<- totalset[,grep("mean[()]|std[()]", colnames(totalset))]
##write to file
write.table(partialTable,file="fin.txt",row.name=FALSE)
print("file written")


