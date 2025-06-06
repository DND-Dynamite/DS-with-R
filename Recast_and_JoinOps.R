# recasting
# need to recast data frames
# Recast in 2 steps
# 1. Melt
# 2. Cast
# recast in 1 step -recast
# Joining of 2 dataframes
# Left join, Right join, Inner join

# Setting dataframe
pd = data.frame(
                  "Name"=c("Senthil", "Senthil", "Sam", "Sam"),
                  "Month"=c("Jan", "Feb", "Jan", "Feb"),
                  "BS"=c(141.2, 139.3, 135.2, 160.1),
                  "BP"=c(90,78,80,81)
                )
########################Output##################################################
# starting pd
# Name Month    BS BP
# 1 Senthil   Jan 141.2 90
# 2 Senthil   Feb 139.3 78
# 3     Sam   Jan 135.2 80
# 4     Sam   Feb 160.1 81

# Note: ctrl + shift + c will comment lines


# Recast in 2 steps
# 1. Melt 2. cast
# Identifier (Discrete type variables)
# Measurements (NUmeric type variables)

# First Step: Melt
# Loading reshape2 a external ilbrary to reshape the dataframe

library(reshape2)

Df = melt(pd, id.vars=c("Name", "Month"), measure.vars=c("BS", "BP"))

print(Df)

################################Output##########################################

# Name Month variable value
# 1 Senthil   Jan       BS 141.2
# 2 Senthil   Feb       BS 139.3
# 3     Sam   Jan       BS 135.2
# 4     Sam   Feb       BS 160.1
# 5 Senthil   Jan       BP  90.0
# 6 Senthil   Feb       BP  78.0
# 7     Sam   Jan       BP  80.0
# 8     Sam   Feb       BP  81.0

# Here id variables are same
# the measure variables are only in one row instead of 2, and the column row is taken as variabe name
# The name of the column is now a value in varibales column

# Second Step: cast
# function name dcast()
# dcast(data, formula, value.var = "col. with values")

Df2 = dcast(Df, variable+Month~Name, value.var="value")

print(Df2)

################################ Output#########################################
# variable Month   Sam     Senthil
# 1       BS   Feb 160.1   139.3
# 2       BS   Jan 135.2   141.2
# 3       BP   Feb  81.0    78.0
# 4       BP   Jan  80.0    90.0

# REcasting in Single step
# recast(dataframe, formulae, identifier variables)

Df3 = recast(pd, variable+Month~Name, id.var=c("Name", "Month"))

print(Df3)

# Add new variable to a dataframe based on existing ones
# Call a library "dplyr command using library() command
# Mutate command will add extra variable columns based on existing ones

library(dplyr)

pd2<-mutate(pd, log_BP = log(BP))

print(pd2)

############################ Output#############################################
# Name Month    BS BP   log_BP
# 1 Senthil   Jan 141.2 90 4.499810
# 2 Senthil   Feb 139.3 78 4.356709
# 3     Sam   Jan 135.2 80 4.382027
# 4     Sam   Feb 160.1 81 4.394449

# To combine 2 data frames we can use a dplyer library
# Syntax for dplyr library: function(df1, df2, by=id.variable)
# id.variable is same to both df's , it is a way to combine both
# The nature of combination depends on function to be used

# Various functions in dplyr language
# call the dplyr command using library() command
# The following commands would be used to combine datasets

# 1. left_join()
# 2. right_join()
# 3. inner_join()
# 4. full_join()
# 5. semi_join()
# 6. anti_join()

pd_new = data.frame(
                      "Name"=c("Senthil", "Ramesh", "Sam"),
                      "Department"=c("PSE", "Data Analytics", "PSE")
                    )
print(pd_new)

# 1. left_join() : left df is considered as base
pd_left_join1<-left_join(pd, pd_new, by="Name")

print(pd_left_join1)

######################################Output####################################
# Name Month    BS BP Department
# 1 Senthil   Jan 141.2 90        PSE
# 2 Senthil   Feb 139.3 78        PSE
# 3     Sam   Jan 135.2 80        PSE
# 4     Sam   Feb 160.1 81        PSE

# 2. left_join() : right df is considered as base
pd_right_join1<-right_join(pd, pd_new, by="Name")

print(pd_right_join1)

####################################Output######################################
# Name Month    BS BP     Department
# 1 Senthil   Jan 141.2 90            PSE
# 2 Senthil   Feb 139.3 78            PSE
# 3     Sam   Jan 135.2 80            PSE
# 4     Sam   Feb 160.1 81            PSE
# 5  Ramesh  <NA>    NA NA Data Analytics

# 3. inner_join() : merges and retains those rows with IDspresent in both dataframes
pd_inner_join1<-inner_join(pd, pd_new, by="Name")

print(pd_inner_join1)

###############################Output###########################################
# Name Month    BS BP Department
# 1 Senthil   Jan 141.2 90        PSE
# 2 Senthil   Feb 139.3 78        PSE
# 3     Sam   Jan 135.2 80        PSE
# 4     Sam   Feb 160.1 81        PSE


