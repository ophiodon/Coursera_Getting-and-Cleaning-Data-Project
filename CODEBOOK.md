##Data Information
The data originates from an experiments carried out on a group 30 volunteers, ages 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on their waist. Using the phone’s embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were recorded. The experiments  were video-recorded to label the data manually. The dataset was randomly partitioned into two groups: 
1)	Group 1:70% of the volunteers was selected for generating the training data 
2)	Group 2: 30%of the volunteers was selected for generating  the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Database
The database used in this work originate  from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Time (t) domain signals were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter. Velocity body linear acceleration and angular velocity were derived to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ) and the magnitude of the signals were calculated using a Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

##Description: Variables
Acceleration units g’sand rad/sec for the gyro and g/sec and for the corresponding jerks. These signals were used to estimate variables of the feature vector for each pattern:‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. They total 33 measurements including the 3 dimensions - the X,Y, and Z axes.

1.	t = time (leading ‘t’ on files)
2.	f = frequency of movement (leading ‘f’ on files)
3.	Body = related to body movement.
4.	Gravity = acceleration of gravity
5.	Acc = accelerometer measurement (g)
6.	Gyro = gyroscopic measurements (rad/sec)
7.	Jerk = sudden movement acceleration (rad/sec/sec)
8.	Mag = magnitude of movement (rad/sec/sec)
9.	mean =average value of all sampled values
10.	SD = standard deviation of sampled values
11.	X=directional measurement in X axis vector
12.	Y=directional measurement in Y axis vector
13.	Z=directional measurement in Z axis vector

##Variables in Data Set 
Note: All values are numeric and ‘t’ or ‘f’ have been applied to these variables in the associated tidy dataset.

|Variable	|Value|
|---------------|-----------------------------------|
|BodyAcc-XYZ	|body acceleration |
|GravityAcc-XYZ	|Gravity acceleration |
|BodyAccJerk-XYZ	|Body jerk acceleration|
|BodyGyro-XYZ	|Body gyroscope acceleration|
|BodyGyroJerk-XYZ	|Body gyroscope jerk acceleration|
|BodyAccMag	|Magnitude of body acceleration|
|GravityAccMag	|Magnitude of gravity acceleration|
|BodyAccJerkMag	|Magnitude of jerk acceleration|
|BodyGyroMag	|Magnitude of gyroscope|
|BodyGyroJerkMag	|Magnitude of jerk in gyroscope|

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag


##Activity Labels
*WALKING (value 1): subject was walking during the test
*WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
*WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
*SITTING (value 4): subject was sitting during the test
*STANDING (value 5): subject was standing during the test
*LAYING (value 6): subject was laying down during the test

