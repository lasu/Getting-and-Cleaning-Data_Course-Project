Getting and Cleaning Data Course Project CodeBook
========================================
This file describes the variables, the data that I have performed to clean up the data.

#Variables in tidy_data_second.txt

* **subject**<br>
   volunteers in this experiments
  - 1 ~ 30
* **activity**<br>
  activities of these data
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
* **tBodyAcc** X/Y/Zmean/std
* **tGravityAcc** X/Y/Zmean/std
* **tBodyAccJerk** X/Y/Zmean/std
* **tBodyGyro** X/Y/Zmean/std
* **tBodyGyroJerk** X/Y/Zmean/std
* **tBodyAccMag** mean/std
* **tGravityAccMag** mean/std
* **tBodyAccJerkMag** mean/std
* **tBodyGyroMag** mean/std
* **tBodyGyroJerkMag** mean/std
* **fBodyAcc** X/Y/Zmean/std
* **fBodyAccJerk** X/Y/Zmean/std
* **fBodyGyro** X/Y/Zmean/std
* **fBodyAccMag** mean/std
* **fBodyAccJerkMag** mean/std
* **fBodyGyroMag** mean/std
* **fBodyGyroJerkMag** mean/std
<br>
  these signals were used to estimate variables of the feature vector for each pattern<br>
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br>
  mean: Mean value<br>
  std: Standard deviation<br>
  **average of each variable for each activity and each subject.**<br>
  - -1 ~ 1
