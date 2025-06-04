# DataFrames
# DataFrames: Create a Datafrane

vec1 = c(1, 2, 3)
vec2 = c("birds", "cats", "dogs")
vec3 = c("for prototyping", "for prototying", NA)

df =  data.frame(vec1, vec2, vec3)#, stringsAsFactors = F)

print(df)

# Create a Dataframe using data from a file
#newDf = read.table(path="Path of the file")

# Note the file path seperater varies based on OS
# To avoid confusion use the below command
sep = '/'
# newDf = read.table(path="Path of the file", sep)

# df=[val1, val2] represents 2 collumns for a data frame
# val1 or val2 can also be something like 1:2 or c(1,3)
# df[val2] = just refers to val2

print(df[1, 2])

# Accessing first & second column
print(df[1:2,])

# my example of priting 1,3 with above syntax
print(df[,1:2])


#Subset

pd = data.frame(
                  "Name" = c("Senthil", "Senthil", "Sam", "Sam"),
                  "Month" = c("Jan", "Feb", "Jan", "Feb"),
                  "BS" = c(140 , 139, 138, 160),
                  "BP"= c(90, 78, 80, 81)
                )

# creating a subset
pd2 = subset(pd, Name == "Senthil" | BS > 150)
print(pd2)

# Editing Data Frames
df = data.frame(vec1, vec2, vec3)
print(df)
edit = df[[2]][2]
print(edit)

# Editing Tables
mytable = data.frame()

# The below table will open a table like excel that can be edited
mytable = edit(mytable)

# To add a row we use rbind
df = rbind(df, data.frame(vec1=4, vec2="Aligator", vec3="security"))
print(df)
# To add a column we use cbind
df = cbind(df, data.frame(vec4=c(10,40,50,30)))
print(df)

# Deleting rows and columns
# many ways to delete a row and column
# Negative side to delete the attribute
# first is the row
# Second is the column
# Both are seperated by ,
df2 = df[-3, -1]
print(df2)

# Conditional deletion
df3 =  df[,!names(df)%in%c("vec3")]
print(df3)

# Deleting rows and columns
df4 = df[!df$vec1==3,]
print(df4)

# maipulationg rows  factor issue
# when character columns are created in a data.frame they become factors
# Factor variable are those whose charcaater column is split into categories or factor levels
df[3,1] = 3.1
df[3,3] = "Others"
print(df)

