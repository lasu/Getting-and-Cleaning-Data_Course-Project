Getting-and-Cleaning-Data_Course-Project
========================================
This is Getting and Cleaning Data's Peer Project.<br>
Our purpose is work with, and clean a data set of <br>
**Human Activity Recognition Using Smartphones Data Set**<br>
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Contents
There are 4 files in this repository.<br>
* **run_analysis.R** : Code of this project
* **tidy_data.txt** : Tidy dataset after our work
* **tidy_data_second.txt** : Tidy dataset with Step5
* **Code Book.md** : Describe the variables, the data, and any transformations or work

#Steps of run the code
* Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
* Set working directory into this directory (UCI HAR Dataset).
* Download code file "run_analysis.R" into the working directory.
* Use source("run_analysis.R") command.
* You will get an output file "tidy_data_second.txt".

#Steps of data analysis
* **(1)** Merge the training sets and test sets(X,y,subject) and renamed their column name.
* **(2)** Extracts only the measurements on the mean and std for each measurement.(66 features will be left over).
* **(3)** Name the activities in this data set.(following the rule in activity_labels.txt.)
* **(4)** Appropriately labels the data set with descriptive activity names.
* **(5)** Calculate the average of each variable for each activity and each subject. Creat a new file(output).

#Original dataset in UCI HAR Dataset(we used)
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
