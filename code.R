#Loading data
ghdata <- read_csv("C:/Users/Sai Praveen/Desktop/report/Exercise GoodHealthCo-20160921/GoodHealthCo-20160921/SBU_example_Surveydata_2014.csv")

#Data Cleaning
colnames(ghdata)

#Dropping the columns that are having only one value

ghdata <- subset(ghdata, select = - c(STATE,DENSTR2,WEIGHT2,HEIGHT3,CTYCODE1,ZIPCODE,HTIN4,HTM4,WTKG3))

#Dropping the columns that have general inforamation and not related to diabetes

ghdata <- subset(ghdata, select = - c(REPNUM, REPDEPTH,FMONTH,IDATE,IMONTH,IDAY,IYEAR,PSU,NATTMPTS,NRECSEL,NRECSTR))

#checking for null values

colSums(is.na(ghdata))

#Dropping column LADULT since 99% values are missing

ghdata <- subset(ghdata, select = - c(LADULT))


#For STATERES Column, changing the null values to 0 (Assuming blanks as "Non State residents")

table(ghdata$STATERES, exclude = NULL)

ghdata$STATERES[is.na(data$STATERES)] <- 0


