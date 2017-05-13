# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')
dataset

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, dataset$Country, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, dataset$Country, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)

#My code
dataset$Age = ifelse(is.na(dataset$Age),mean(dataset$Age, na.rm = TRUE), dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),mean(dataset$Salary, na.rm = TRUE), dataset$Salary)
dataset
