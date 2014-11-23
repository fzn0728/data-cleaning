#set working directory
setwd("C:/Users/Administrator/Desktop/R/data cleaning/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

#read data
test_x<-read.table("./test/X_test.txt")
test_y<-read.table("./test/y_test.txt")
test_sub<-read.table("./test/subject_test.txt")
train_x<-read.table("./train/X_train.txt")
train_y<-read.table("./train/y_train.txt")
train_sub<-read.table("./train/subject_train.txt")
features<-read.table("features.txt")
activity<-read.table("activity_labels.txt")

#merge columes
test<-cbind(test_x,test_y$V1,test_sub$V1)
name<-as.vector(features$V2)
colnames(test)<-c(name,"activity","subject")
train<-cbind(train_x,train_y$V1,train_sub$V1)
colnames(train)<-c(name,"activity","subject") #- Q3 finished

#merge rows
mer<-rbind(test,train) # - Q1 finished

#Extracts measurements 
Names <- names(mer)
selector1 <- grepl("mean", Names)
selector2 <- grepl("std", Names)
measurement1<-mer[, selector1] 
measurement2<-mer[, selector2]
measurement<-cbind(measurement1,measurement2)  #- Q2 finished

#Give descriptive names 
lookup <- function(num){
    return(activity[num, 2])
}
mer <- transform(mer, activity = as.character(lookup(activity))) # - Q4 finished

#Average of each variable for each activity and each subject
install.packages("plyr")
library(plyr)
mer.5 <- ddply(.dat
               a = mer, .variables = c("activity", "subject"), 
               .fun = colMeans ) 
mer.5 <- mer.5[,c(-562,-563)] # drop last two columes - Q5 finished
