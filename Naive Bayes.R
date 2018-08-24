diabetes <- read.csv("E:/Naivebayes/diabetes.csv")
library(e1071)
installed.packages('MASS')
library(MASS)
installed.packages('klaR')
library(klaR)
table(diabetes$Outcome)
data<-sample(2,nrow(diabetes),replace = TRUE,prob = c(0.67,0.33))
train<-diabetes[data==1,]
testD<-diabetes[data==2,]
nrow(train)
nrow(testD)
installed.packages('igraph')
library(igraph)
install.packages('rminer')
installed.packages('rminer')
library(rminer)
md<-naiveBayes(Outcome ~ .,data=train)
md
aprediction<-predict(md,testD)
mmetric(testD$Outcome,aprediction,c("ACC","PRECISION","TRP","F1"))

