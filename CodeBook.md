The dataset and this codebook was generated using the dataset related to  
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
The below provides a description and type related to variables found in the datasets WearablesDS1 and WearablesDS2"  

---
#### WearablesDS1.CSV:   
**activity**    activity performed    *factor*  
**testsubject**    test subject out of 30 volunteers    *factor*  
**tBodyAcc-XYZ**    time domain signal body acceleration    *numeric*        
**tGravityAcc-XYZ**     time domain signal gravity acceleration    *numeric*  
**tBodyAccJerk-XYZ**    linear acceleration and angular velocity    *numeric*   
**tBodyGyro-XYZ**    linear acceleration and angular velocity    *numeric*  
**tBodyGyroJerk-XYZ**    linear acceleration and angular velocity    *numeric*  
**tBodyAccMag**    time domain gravity acceleration signal    *numeric* 
**tGravityAccMag**    time domain gravity acceleration signal   *numeric* 
**tBodyAccJerkMag**    time domain jerk signal    *numeric*  
**tBodyGyroMag**    time domain gyroscope signal    *numeric*  
**tBodyGyroJerkMag**    time domain jerk signal    *numeric*  
**fBodyAcc-XYZ**    frequency domain signal body acceleration *numeric* 
**fBodyAccJerk-XYZ**    frequency domain jerk signale    *numeric*
**fBodyGyro-XYZ**    frequency domain signal gyroscope *numeric*  
**fBodyAccMag**    frequency domain signal body acceleration *numeric*  
**fBodyAccJerkMag**    frequency domain jerk signal *numeric*  
**fBodyGyroMag**    frequency domain gyroscope signal *numeric* 
**fBodyGyroJerkMag**     frequency domain gyroscope signal *numeric* 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

WearablesDS2.csv

same as above but aggregated by activity & testsubject by applying the mean to each variable 

