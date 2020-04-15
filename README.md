This is a dataset generated from data related to following publication.
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The script to generate the combined dataset can be found here: 
https://github.com/dcdavid84/CleaningDataCourseProject/


The following steps are performed to generate two new datasets found in this repository: WearablesDS1, WearablesDS2

1./ Load the training and test data set obtained from following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2./ Extract labels from activity_labels.txt & features.txt from original dataset and use them as descriptive column titles

3./ Merge training and test data into one combined dataset 

4./ Select only columns containing mean and standard deviation values 

5./ Group data by activity and test subject and aggregate by way of applying means

6./ Write datasets into file



License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
