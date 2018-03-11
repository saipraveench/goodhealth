#Loading data
data <- read_csv("C:/Users/Sai Praveen/Desktop/report/Exercise GoodHealthCo-20160921/GoodHealthCo-20160921/SBU_example_Surveydata_2014.csv")

#Data Cleaning
colnames(data)

#Dropping the columns that are having only one value

data <- subset(data, select = - c(STATE,DENSTR2,WEIGHT2,HEIGHT3,CTYCODE1,ZIPCODE,HTIN4,HTM4,WTKG3))

#Dropping the columns that have general inforamation and not related to the diabetes

