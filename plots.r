# Plots
# setwd("R-cheat-sheet")
w1 <- read.csv(file="w1.dat",sep=",",head=TRUE)
tree <- read.csv(file="trees91.csv",sep=",",head=TRUE)
# Strip chart
stripchart(w1$vals)
stripchart(w1$vals,method="stack")
stripchart(w1$vals,method="jitter")
stripchart(w1$vals,vertical = TRUE,method="jitter")
stripchart(w1$vals,method="stack",
           main='Leaf BioMass in High CO2 Environment',
           xlab='BioMass of Leaves')

# Add plot titles
plot(w1$vals)
title('Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')

# Histogram
hist(w1$vals,main="Distribution of w1",xlab="w1")
hist(w1$vals,breaks=2)
hist(w1$vals,breaks=4)
hist(w1$vals,breaks=8)
hist(w1$vals,breaks=16)

hist(w1$vals,breaks=12,xlim=c(0,10))
hist(w1$vals,breaks=12,xlim=c(-1,2))
hist(w1$vals,breaks=12,xlim=c(0,2))
hist(w1$vals,breaks=12,xlim=c(1,1.3))
hist(w1$vals,breaks=12,xlim=c(0.9,1.3))

hist(w1$vals,
     main='Leaf BioMass in High CO2 Environment',
     xlab='BioMass of Leaves')

# Adding strip chart to histogram
hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves',ylim=c(0,16))
stripchart(w1$vals,add=TRUE,at=15.5,method = "jitter")

# Boxplots
boxplot(w1$vals)
boxplot(w1$vals,
        main='Leaf BioMass in High CO2 Environment',
        xlab='BioMass of Leaves',
        horizontal=TRUE)

# Combination of histogram, boxplot and stripchart
hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves',ylim=c(0,16))
boxplot(w1$vals,horizontal=TRUE,at=16,add=TRUE,axes=FALSE)
stripchart(w1$vals,add=TRUE,at=15)

tree$C <- factor(tree$C)
tree$N <- factor(tree$N)
boxplot(tree$STBM,
        main='Stem BioMass in Different CO2 Environments',
        ylab='BioMass of Stems')
# Generate boxplots for different levels -> otherwise comparison of apples and oranges
boxplot(tree$STBM~tree$C)

# Scatter plots
plot(tree$STBM,tree$LFBM)
# Linear correlation
cor(tree$STBM,tree$LFBM)
# Generate a normal quantile plot
qqnorm(w1$vals)
# Add theoretical line for normal disitibution
qqline(w1$vals)
