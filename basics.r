#Following http://www.cyclismo.org/tutorial/R
#setwd("Programming/R")
##########################################
# Read and summarize plain csv data file #
##########################################
simpleData <- read.csv("simple.csv",header=TRUE,sep=",")
summary(simpleData)
tree <- read.csv(file="trees91.csv",header=TRUE,sep=",")
attributes(tree)
# Print header-/"column" names
names(tree)

# Vector
v <- c(1,2,3,4)
meanV <- mean(v)
# Summarize factor levels
summary(tree$CHBR)
# Make tree$C factor
tree$C <- factor(tree$C)
# Now summary works properly
summary(tree$C)
# Show factors
levels(tree$C)

# Basic data frame
a <- c(1,2,3,4)
b <- c(1,3,17,96)
levels <- factor(c("A","B","A","B"))
df <- data.frame(first=a,
                      second=b,
                      f=levels)

df
summary(df)

# Table
f <- factor(c("A","A","B","A","B","B","C","A","C"))
tabAggr <- table(f)
tabAggr

attributes(tabAggr)
summary(tabAggr)

# Matrix
basicMat <- matrix(c(1,2,3,4,5,6,7,8,9),ncol = 3,nrow = 3,byrow = TRUE)
basicMat

sexsmoke <- matrix(c(70,120,65,140),ncol=2,byrow=TRUE)
rownames(sexsmoke) <- c("male","female")
colnames(sexsmoke) <-c ("smoke","nosmoke")
sexsmoke <- as.table(sexsmoke)
sexsmoke

# Basic operations
a <- c(1,2,3,4)
b <- a - 10
c <- (a + sqrt(a))/(exp(2)+1)
d <- (a+3)/(sqrt(1-b)*2-1)
# list data environment
ls()
# scalar minimum
min(a,b)
# pairwise minimum
pmin(c,d)

# Basic statistics
leafBiomass <- tree$LFBM
mean(leafBiomass)
media(leafBiomass)
quantile(leafBiomass)
min(leafBiomass)
max(leafBiomass)
var(leafBiomass)
sd(leafBiomass)

# Sorting
randSeq <- runif(20,min=0,max = 100) 
sort(randSeq)
sort(randSeq,decreasing = TRUE)
