Getting and Cleaning Data Course Project CodeBook
========================================
This file describes the variables, the data that I have performed to clean up the data.

#Variables in tidy_data.txt
* subject<br>
  subjects of these data
  - 1 ~ 30
* activity<br>
  activities of these data
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
* tBodyAcc-XYZ ~ fBodyGyroJerkMag<br>
  these signals were used to estimate variables of the feature vector for each pattern<br>
  we only catch the mean and standard deviation for each measurement ("mean and ""std")
  - 1 ~ -1

#Variables in tidy_data_second.txt
* subject<br>
  subjects of these data
  - 1 ~ 30
* activity<br>
  activities of these data
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
* tBodyAcc-XYZ ~ fBodyGyroJerkMag<br>
  these signals were used to estimate variables of the feature vector for each pattern<br>
  **average of each variable for each activity and each subject.**
  - 1 ~ -1
