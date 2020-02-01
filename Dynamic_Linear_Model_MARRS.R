library("readxl")
setwd("C:/Users/nisha/Downloads")
my_data <- read.csv("data for sample.csv")
View(my_data)
my_data
head(my_data)

#Get Response Variable
years <- my_data[,2]
TT <- length(years)
rev <- matrix(my_data[,4],nrow=1)

#Get Predictor Variable
sgna <- matrix(my_data[,5],nrow=1)
# number of regr params (slope + intercept)
m <- dim(sgna)[1] + 1

#Set up the appropriate matrices and vectors for MARSS
#For Process Eq
B <- diag(m)
U <- matrix(0,nrow=m,ncol=1)
Q <- matrix(list(0),m,m)
diag(Q) <- c("q.alpha","q.beta")
C <- matrix(c(0,"theta"),2,1)
ca <- matrix(my_data[,4],nrow=1)


#For Observation Eq
Z <- array(NA, c(1,m,TT))
Z[1,1,] <- rep(1,TT)
Z[1,2,] <- sgna
A <- matrix(0)
R <- matrix("r") #Observation Errors

# only need starting values for regr parameters
inits.list <- list(x0=matrix(c(0, 0), nrow=m))
# list of model matrices & vectors
mod.list <- list(B=B, U=U, Q=Q, Z=Z, A=A, R=R, C=C,c=ca)

# fit univariate DLM

install.packages("MARSS")
library(MARSS)
dlm1 <- MARSS(rev, inits=inits.list, model=mod.list)
dlm1$par
dlm1$states
dlm1$states.se
