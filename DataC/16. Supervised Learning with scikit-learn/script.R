getwd()
# df <- read.table("house-votes-84.data") #start with this
df <- read.table("house-votes-84.data", sep=",", na.strings = "?", stringsAsFactors = FALSE)
class(df)
col_names = c('party', 'infants', 'water', 'budget', 'physician', 'salvador',
             'religious', 'satellite', 'aid', 'missile', 'immigration', 'synfuels',
             'education', 'superfund', 'crime', 'duty_free_exports', 'eaa_rsa')
names(df) <- col_names
head(df)

class(df)
str(df)

df[is.na(df)]<-0
head(df)

library(mlbench)
data(HouseVotes84)
head(HouseVotes84)

mtcars[1:2,3:5]


head(mtcars)
apply(mtcars,1, mean)
apply(mtcars,2, mean)
apply(mtcars,2, var)