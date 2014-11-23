##Getting and Cleaning Data Peer Assignment
=============
<b>Data<b/>

This assignment use data from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

<b>Method<b/>

<ol>
In order to finish the requirement to clean the dataset,
<li> Import the dataset </li>
<li> Check the number of columes and rows (omitted in my code ) </li>
<li> Summary the variable names and etc. (omitted in my code ) </li>
<li> Decide to merge the datasets by "test" and "train", using rbind(), cbind() </li>
<li> Merge the test and train into one dataset </li>
<li> Use "mean" and "std" as indicators to extract measurements </li>
<li> Add more descriptive names </li>
<li> Use plyr packages to deal with average problems </li>
</ol>

<b>Variable Descriptions<b/>

* tBodyAcc-XYZ

* tGravityAcc-XYZ

* tBodyAccJerk-XYZ

* tBodyGyro-XYZ

* tBodyGyroJerk-XYZ

* tBodyAccMag

* tGravityAccMag

* tBodyAccJerkMag

* tBodyGyroMag

* tBodyGyroJerkMag

* fBodyAcc-XYZ

* fBodyAccJerk-XYZ

* fBodyGyro-XYZ

* fBodyAccMag

* fBodyAccJerkMag

* fBodyGyroMag

* fBodyGyroJerkMag

* gravityMean

* tBodyAccMean

* tBodyAccJerkMean

* tBodyGyroMean

* tBodyGyroJerkMean

* activity: 1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING

* subject: volunteers for the experiment


