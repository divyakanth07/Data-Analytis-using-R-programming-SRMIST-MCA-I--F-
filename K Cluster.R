mydata<-read.csv("C:/divyakanth/USArrests.csv")
library("factoextra")
library("ggplot2")
USdata<-scale(mydata[,-1])
kmeans.cluster_2<-kmeans(USdata,centers=2,nstart=20)
kmeans.cluster_3<-kmeans(USdata,centers=3,nstart=20)
kmeans.cluster_4<-kmeans(USdata,centers=4,nstart=20)
kmeans.cluster_5<-kmeans(USdata,centers=5,nstart=20)
kmeans.cluster_2$cluster
kmeans.cluster_3$cluster
kmeans.cluster_4$cluster
kmeans.cluster_5$cluster

print(fviz_cluster(kmeans.cluster_2,data=USdata))
print(fviz_cluster(kmeans.cluster_3,data=USdata))
print(fviz_cluster(kmeans.cluster_4,data=USdata))
print(fviz_cluster(kmeans.cluster_5,data=USdata))

print(fviz_nbclust(USdata, FUN=kmeans, method="silhouette"))
