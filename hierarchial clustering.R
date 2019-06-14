iris <- read.csv("E:/teachers project/iris.csv")
irisNew = iris

#removing class
irisNew$species <- NULL
View(irisNew)

d <- dist(as.matrix(irisNew))
hc <- hclust(d)
hc
plot(hc)
#height adjustment for the plot
#The fraction of the plot height by which labels should hang below the rest of the plot. A negative value will cause the labels to hang down from 0.
plot(hc,hang = 0.5)


# highlighting corresponding clusters
#cutting at hieght h
rect.hclust(hc,h=3)
# forming k clusters
rect.hclust(hc,k=2)
# adding some color to your division
rect.hclust(hc,border = "blue",k=3)
rect.hclust(hc,border = "green",k=4)


# hierarchial clustering with single linkage(min distance)
hc.min <- hclust(d,method = "single")
plot(hc.min)

# hierarchial clustering with complete linkage(max distance)
hc.max <- hclust(d,method = "complete")
plot(hc.max)

# hierarchial clustering with average linkage(avg distance)
hc.avg <- hclust(d,method = "average")
plot(hc.avg)

# hierarchial clustering with ward
hc.wd <- hclust(d,method = "ward.D")
plot(hc.wd)

# hierarchial clustering with wardD2
hc.wd2 <- hclust(d,method = "ward.D2")
plot(hc.wd2)




