# Coursera_Getting-and-Cleaning-Data-Project
Repository for coursera section Getting and Cleaning Data.
This README describes what is in this repository and also details a “R” script that acts on the raw data provided from the Coursera Getting and Cleaning Data course project. The script will produce a tidy dataset as instructed in the project directions.
For more information, please refer to this webpage https://class.coursera.org/getdata-035/human_grading/view/courses/975119/assessments/3/submissions

There are four  files in this repository( including this one)
1)	run_analysis.R : This R file is the script that analyzes the dataset and provides a txt output
2)	Tidy.txt: This file is the tidy data set 
3)	Codebook: This file describes the variables in the tidy dataset
4)	README: This file has information regarding the other three files in this repo.
The R script requires the most recent version of R and that the data set, as found on the Coursera Getting and Cleaning Data course project (link above) has been downloaded to a working directory. 
Note: The directory, for my work, has been named "UCI_HARUS_Dataset". Please change to your directory name.

Steps to get the tidy data output , please follow the following steps:
1. To run the function, open R and:
source('<your default R working directory>/run_analysis.R'))
run_analysis()

2. Once the function has completed running, an output file - "Tidy.txt" – will magically appear in your working directory. 
To read the file use this script:
read.table("Tidy.txt", header=TRUE)
