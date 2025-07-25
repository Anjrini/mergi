rm(list = ls())

# the function below will consider z as fixed column after which we would like
# to put the newly moved columns of y and keep the rest as is

mergi<-function(df,y,z){
  l1<- 1:dim(df)[2] # vector containing the whole columns
  l2<- l1[-y]       # vector containing all expect the y vector of our choice
  z1<- l2[l2<z]     # getting the columns before the cutting point
  z2<- l2[l2>=z]    # getting the columns after the cutting point
  return(df[,c(z1,y,z2)])
}

# let's do an example
df<- mtcars # loading the data frame
z<-1        # the position of our interests
y<-c(6,9)   # y vector to be moved to our new position

mergi(df,y,z) # applying the function


