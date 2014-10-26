trainsubjects=read.table("train\\subject_train.txt")
trainX=read.table("train\\X_train.txt")
trainY=read.table("train\\Y_train.txt")
trainset=cbind(trainsubjects,trainY,trainX)

testsubjects=read.table("test\\subject_test.txt")
testX=read.table("test\\X_test.txt")
testY=read.table("test\\Y_test.txt")
testset=cbind(testsubjects,testY,testX)

totalset=rbind(trainset,testset)

newnames=read.table("features.txt", stringsAsFactors=FALSE)
newnames=subset(newnames, select=c(V2))
newnames<-rbind("Subject","ActivityName",newnames)

colnameVector<-unlist(newnames[,1])
colnames(totalset)<-colnameVector

partialTable<- totalset[,grep("mean[()]|std[()]", colnames(totalset))]
write.table(partialTable,file="fin.txt",row.name=FALSE)
print("file written")