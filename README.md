Getting-and-Cleaning-Data_Course-Project
========================================
This is Getting and Cleaning Data's Peer Project.<br>

#Contents
There are 4 files in this repository.<br>
* **run_analysis.R** : Code of this project
* **tidy_data.txt** : Tidy dataset after our work
* **tidy_data_second.txt** : Tidy dataset with Step5
* **Code Book.md** : Describe the variables, the data, and any transformations or work

#Steps of run the code
* Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Set working directory to this directory (UCI HAR Dataset)
* Download code file "run_analysis.R" into the same directory
* Use source("run_analysis.R") command
* You will get 2 output files ("tidy_data.txt" and "tidy_data_second.txt")

#Original dataset
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

#Data analysis steps
* We combind the train set and test set(X,y,subject) and renamed their column name.
* Now we have 30 subjects and 6 activities and 561 features(variables).
* Extracts only the measurements on the mean and standard deviation for each measurement.(66 features be left over).
* Step 5 of this assessment should calculate the average of each variable for each activity and each subject.
