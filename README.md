# USArrest-K-Mean

## What is K-Means Clustering?

K-means clustering is a technique in which we place each observation in a dataset into one of K clusters.

The end goal is to have K clusters in which the observations within each cluster are quite similar to each other while the observations in different clusters are quite different from each other.

In practice, we use the following steps to perform K-means clustering:

### 1. Choose a value for K.
First, we must decide how many clusters we’d like to identify in the data. Often we have to simply test several different values for K and analyze the results to see which number of clusters seems to make the most sense for a given problem.

### 2. Randomly assign each observation to an initial cluster, from 1 to K.
### 3. Perform the following procedure until the cluster assignments stop changing.

For each of the K clusters, compute the cluster centroid. This is simply the vector of the p feature means for the observations in the kth cluster.
Assign each observation to the cluster whose centroid is closest. Here, closest is defined using Euclidean distance.
