install.packages('factoextra')
install.packages('cluster')

library(factoextra)
library(cluster)

#load data
df <- read.csv('USArrests.csv')

#remove rows with missing values
df <- na.omit(df)

#scale each variable to have a mean of 0 and sd of 1
df <- scale(df[-1])

#view first six rows of dataset
head(df)

fviz_nbclust(df, kmeans, method = "wss")

#calculate gap statistic based on number of clusters
gap_stat <- clusGap(df,
                    FUN = kmeans,
                    nstart = 25,
                    K.max = 10,
                    B = 50)

#plot number of clusters vs. gap statistic
fviz_gap_stat(gap_stat)

#make this example reproducible
set.seed(1)

#perform k-means clustering with k = 4 clusters
km <- kmeans(df, centers = 4, nstart = 25)

#view results
km

#plot results of final k-means model
fviz_cluster(km, data = df)

#find means of each cluster
aggregate(USArrests, by=list(cluster=km$cluster), mean)

#add cluster assigment to original data
final_data <- cbind(USArrests, cluster = km$cluster)

#view final data
head(final_data)
