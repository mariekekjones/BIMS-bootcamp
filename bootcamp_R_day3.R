# Title: Introduction to R and data manipulation
# Description: This session will be an introduction to the RStudio environment, basic scripting, and data manipulation using modern, user-friendly packages such as tidyr, dplyr, and stringr. Participants will engage in active learning with instructor-led tutorials for the morning and then the afternoon will involve participants tackling real-world data cleaning exercises.
# Instructor: David N. Martin
# Date/Time: Wednesday August 9th 9:00 - 3:00pm
# Room: Carter

#Intro to RStudio Environment

#Setting a Working Directory/Creating Projects
setwd("C:/Users/dnm5ca/Desktop")

#Installing Packages (install.packages())
  # #tidyr
  #   install.packages("tidyr")
  # #dplyr  
  #   install.packages("dplyr")
  # #readr
  #   install.packages("readr")
  # #stringr
  #   install.packages("stringr")
#Loading Libraries (library())
    #tidyr
    library(tidyr)
    #dplyr  
    library(dplyr)
    #readr
    library(readr)
    #stringr
    library(stringr)

#Working with Vectors
  #Basics (The <- operator, creating vectors, +/-, etc.)
    new_var <- 2
    new_var2 <- "test"
  
    new_var3 <- 3 + new_var
    new_var4 <- c(5, 1, 6, 1)

  #Functions
    mean_var <- mean(c(3, 6, 9))
    sd_var <- sd(new_var4)    
    
#Working with Environment
  #ls()
    ls()
  #rm()
    rm(mean_var)
  #rm(list = ls())
    rm(list = ls())
    
#DATAFRAMES
#Talk about dataframes. 
  #What is a dataframe?
  #What does it look like?

#Getting data into a dataframe
  #Reading in Data
    #read.csv()
    nhanes <- read.csv("nhanes_long.csv")
    
    
  #Writing out Data
    #write.csv()
    write.csv(nhanes, "nhanes_copy.csv")
    
#Summarizing a Dataframe
  #View, head, tail
    View(nhanes)
    head(nhanes)
    tail(nhanes)
    
  #summary, etc.
    summary(nhanes)
    class(nhanes)
    
  #nrow, ncol, dim
    nrow(nhanes)
    ncol(nhanes)
    dim(nhanes)
    
#Accessing elements of a dataframe 
  #By Name
    nhanes$Gender
    nhanes["Income"]
    income_vec <- nhanes$Income
    income_vec
  #By Position
    nhanes[3]
    nhanes[c(2, 4, 5)]
    new_vec <- nhanes[c(1,5,8)]
    new_vec
    
#Using function on an element of a dataframe
  #mean, sd, etc.
    sd(nhanes$Testosterone)
    mean(nhanes$BPDia)
  #cor, sum, rank
    cor(nhanes$BPDia, nhanes$BPSys)
    new_sum <- sum(nhanes$Weight)
    
#Conditions
  #if (...) {...} else {...}
    if(nhanes$BPDia >= 70) {
      High_BPDia <- "Yes"
    } else {
      High_BPDia <- "No"
    }
  
# ABOUT TIDY DATA # 
  # Each variable in its own column
  # Each Observation in its own row

#DPLYR Stuff
  # filter
    filter(nhanes, Gender=="male" | BPDia >= 65)
  
  # select
    select(nhanes, BPDia, BPSys)
    new_df <- select(nhanes, BPDia, BPSys)
    new_df2 <- select(nhanes, -id)
    View(new_df2)
    
  # mutate
    mutate(nhanes, Testosterone_Squared = Testosterone * Testosterone)
    
  # summarize/ group_by
    summarize(nhanes, mean(Testosterone))
    summarize(group_by(nhanes, Gender), mean(Testosterone))


# The Pipe??????

#String Stuff 
  # (grep, paste, gsub, toupper, tolower)
  # Regular Expressions - Quick Look
  # Helpers
  # Detect Matches
  # Subset strings
  # Manage Lengths
  # Mutate Strings
  # Join and Split

#Merging/Appending/Reshaping Data
    # rbind, cbind
    new_var <- 1
    View(new_var)
    cbind(new_var, 1:7)
    
    rbind(new_var, 1:7)
    cbind(new_var, rbind(new_var, 1:7))
    
    
    # Full_join, etc.
    # Gather/Spread
    View(nhanes)
    nhanes <- select(nhanes, -PhysActive)
    nhanes <- select(nhanes, -PhysActiveDays)
    final_nhanes <- spread(nhanes, visit_num, visit_num, sep = "_")
    final_nhanes <- final_nhanes[, -grep("visit_num", colnames(final_nhanes))]

#Save Final CSV.
    write.csv(final_nhanes, "nhanes_final.csv")
    