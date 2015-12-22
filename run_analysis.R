run_analysis <- function() {
    
    ## examines file and removes characters that are missing, problematic, etc.
    features <- read.table("UCI_HARUS_Dataset/features.txt", colClasses = "character")
    features[,2] <- gsub("\\(|\\)","",features[,2])
    features[,2] <- gsub("-|,","_", features[,2])
    features[,2] <- tolower(features[,2])
    
 ##  these steps merge the test dataset 
 Sub_test<- read.table("UCI_HARUS_Dataset/test/subject_test.txt")
  colnames(Sub_test) <- "subject_id"
  
  Act_test <- read.table("UCI_HARUS_Dataset/test/y_test.txt")
  colnames(Act_test) <- "activity_id"
  
  Data_test <- read.table("UCI_HARUS_Dataset/test/X_test.txt")
  colnames(Data_test) <- features[,2]
  
  merge_all<- cbind(Sub_test,Act_test,Data_test)
  
  ## This step pulls out only the mean and standard deviation measurements from dataset
  Data_test_all <- merge_all[,c(1,2,grep("_mean_|_mean$|_std_|_std$", names(merge_all)))]
  
  ## These steps merge the train dataset 
  Train_sub <- read.table("UCI_HARUS_Dataset/train/subject_train.txt")
  colnames(Train_sub) <- "subject_id"
  
  Train_act <- read.table("UCI_HARUS_Dataset/train/y_train.txt")
  colnames(Train_act) <- "activity_id"
  
  Train_data <- read.table("UCI_HARUS_Dataset/train/X_train.txt")
  colnames(Train_data) <- features[,2]
  
  Train_merged <- cbind(Train_sub,Train_act,Train_data)
  
  ## This step pulls only mean and standard deviation measurements from the train dataset
 Train_all<- Train_merged[,c(1,2,grep("_mean_|_mean$|_std_|_std$", names(Train_merged)))]
    
     ## This step pulls the test and train dataset and binds them together
    required_data <- rbind(Data_test_all,Train_all)
    
    ## Adds the activity data labels
    activity_labels <- read.table("UCI_HARUS_Dataset/activity_labels.txt", colClasses = "character")
    colnames(activity_labels) <- c("activity_id", "activity_name")
    
    ## Merges above data and activity data
    required_data <- merge(activity_labels, required_data)
    required_data$activity_name <- tolower(required_data$activity_name)
    
    ## Pulls out duplicates and destroys them
    temp <- names(required_data) %in% c("activity_id")
    required_data <- required_data[!temp]
    
    
    ## These steps make a lovely tidy data set with the average of each variable
    tidied_data <- aggregate(required_data[,3:ncol(required_data)], by=list(subject_id=required_data$subject_id,activity_name=required_data$activity_name), FUN=mean, na.rm=TRUE)
    
    ## This step adds the average to data columns
    for (i in 3:ncol(tidied_data)) {
        colnames(tidied_data)[i] = paste("average_",colnames(tidied_data)[i], sep = "")
        
    }
    
    Tidy <- tidied_data[order(tidied_data$subject_id,tidied_data$activity_name),]
    
    
    ## Final output in txt format
    write.table(Tidy, "Tidy.txt", row.names=FALSE)
    
}
