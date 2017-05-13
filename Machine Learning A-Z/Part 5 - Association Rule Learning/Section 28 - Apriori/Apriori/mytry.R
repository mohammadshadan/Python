##DAILY_SALE RETAIL_540_2013.xls

library(readxl)
sales <- read_excel("DAILY_SALE RETAIL_540_2013.xls", sheet="Sheet2")
?read_excel
dim(sales)
names(sales)

library(dplyr)
s <- select(sales, INV_NO,ITEM_CODE)
dim(s)
length(unique(s$INV_NO))
length(unique(s$ITEM_CODE))
s <- (arrange(s, INV_NO,ITEM_CODE))

s <- head(s,300)

s %>% group_by(INV_NO) %>% paste(collapse=",")
g<-group_by(s, INV_NO)
head(g)
u <- unique(g$ITEM_CODE)
u
t<-tapply(g$ITEM_CODE, g$INV_NO, function(df1)paste(df1,collapse = ","))
class(t)
t[1:5]
td <- data.frame(t)
head(td)
class(td)
tail(td)
dim(td)
names(td)<- "desc"
library(tidyr)
final <- separate(td, desc, c("invoice", "itmes"), sep=" ")
head(final)
h <- paste(g$ITEM_CODE, collapse = ",")
length(h)
head(s,20)
head(sales)

grocery <- read.csv("Groceries_dataset.csv")
head(grocery)
td <- grocery %>% group_by(c("Member_number","Date"))

t<-tapply(grocery$itemDescription, grocery$Member_number, function(df1)paste(df1,collapse = ","))
t
class(t
    )
f <- data.frame(t)
head(f)


################################
Hence, detach dplyr package first and then load the package
if(sessionInfo()['basePkgs']=="dplyr" | sessionInfo()['otherPkgs']=="dplyr"){
  detach(package:dplyr, unload=TRUE)
}
library(plyr)
The next step is to actually convert the dataframe into basket format, based on the Member_number and Date of transaction
df_itemList <- ddply(df_groceries,c("Member_number","Date"), 
                     function(df1)paste(df1$itemDescription, 
                                        collapse = ","))
#################################

head(grocery)
arrange(grocery, Member_number, Date)
group_by(grocery, Member_number, Date)
?summarize
names(grocery)
data(Groceries)
head(Groceries)
inspect(Groceries)
class(Groceries)

a <- airquality
names(a)[colMeans(is.na(a))>0]



