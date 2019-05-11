# get data from csv file
data <- read.csv("hw1_data.csv")

# In the dataset provided for this Quiz, what are the column names of the dataset?
colnames(data)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
data[1:2,]

# How many observations (i.e. rows) are in this data frame?
tail(data)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
data[152:153,]

# What is the value of Ozone in the 47th row? 
data[47,1]
# row first, columm

# How many missing values are in the Ozone column of this data frame?
missingOzone<- is.na(data$Ozone)
as.numeric(missingOzone)
sum(missingOzone)

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
Ozone <- na.omit(data$Ozone)
mean(Ozone)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
dataO1 <- data[data$Ozone > 31 ,, drop =FALSE]
dataT <- dataO1[dataO1$Temp > 90,, drop =FALSE]
data01<- na.omit(dataT)
mean(data01$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6?
data.June <- data[data$Month == 6,,drop = FALSE]
data.juneAveTemp <- mean(data.June$Temp)

# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
data.May <- data[data$Month == 5 ,, drop = FALSE]
data.MayO <- na.omit(data.May$Ozone)
data.MaxOzone <- max(data.MayO)