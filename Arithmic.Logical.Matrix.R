# Airthmatic Operators
# =,<-* Assignment
# + Additon
# - Subtraction
# * multiplication
# / division
# ^,** Exponent
# %% Remainder
# %/% Integer division

# Note : In R only assignment operator is arrow function , but in Rstudio = will also work

# Hierachy of Opersations
# >> is used to show the direction
# () >> **,^ >> / => * >> +, - 

# Logical Operators
# < less than
# <= less than equal to
# > greater than
# >= grater than equal to
# == Exactly equal to
# != Not equal
# ! not
# | or
# & and
# isTrue >> true if varible is true

# Matrix Operations
# 1. Open a curve bracket
A = matrix()

# Enter the subsequence
A=matrix(c(1,2,3,4,5,6,7,8,9))

# Specify the parameters
A=matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow = TRUE)

print(A)
##################################################OUTPUT########################
#       [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9

B=matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3)

print(B)
#################################################OUTPUT#########################
#       [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

# Creating a scalar
# Syntax = matrix(k, rows, cols)
C = matrix(4, 3, 5)

print(C)
#################################################OUTPUT#########################
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    4    4    4    4    4
# [2,]    4    4    4    4    4
# [3,]    4    4    4    4    4


# Diagonal Matric
# syntax = matrix(c(diagonal.elements), rows, columns)
D = diag(c(1,2,3,4), 4, 4)

print(D)
####################################################OUTPUT#######################
#       [,1] [,2] [,3] [,4]
# [1,]    1    0    0    0
# [2,]    0    2    0    0
# [3,]    0    0    3    0
# [4,]    0    0    0    4

# Finding the dim, nrows, ncols, length

print(dim(D)) # 4 4
print(nrow(D)) # 4
print(ncol(D)) # 4
print(length(D)) # 16

# Acessing, deleting, editing in elements of matrix
# Array/value before "," for accessing rows
# Array/Value before "," for accessing columns
# Use of - for removing columns and rows
# String can be assigned to the rows and columns using rownames(), colnames()

colnames(A)<-c("A", "B", "C")
rownames(A)<-c("D", "E", "F")

print(A)

#################################################OUTPUT##########################
# 
#   A B C
# D 1 2 3
# E 4 5 6
# F 7 8 9

print(A[,1:2])

#################################################OUTPUT##########################
#   A B
# D 1 2
# E 4 5
# F 7 8

print(A[,c("A", "C")])
#################################################OUTPUT##########################
#   A C
# D 1 3
# E 4 6
# F 7 9

print(A[c("D", "F"),])
#################################################OUTPUT##########################
#   A B C
# D 1 2 3
# F 7 8 9

# Accessing individual elements of a matrix A[row, column]
# print(A[2,3])

# to access a row A[3,]
print(A[2,])

#################################################OUTPUT##########################
# A B C 
# 4 5 6

# to access a  A[,1]
print(A[,1])

#################################################OUTPUT##########################
# D E F 
# 1 4 7 

# to delete a row or column use -

print(A[-3,])
print(A[,-3])

# colon operator to create a row matrix
print(1:20)

###############################################OUTPUT#############################
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

# similarly for 10:1

# Examples
print(A[1:3,1:2])
print(A[1:3,-3])
print(A[,1:2])
print(A[c(1,3), 1:2])

# Matrix concatenation - merging of rows and columns
# Concatenation of a row to a mtrix is done using rbind()
# concaetenation of a column is done using cbind()
# consitency should be checked before merging

# rbind
print(A)
row = c(10, 11, 12)
G=rbind(A,row)
rownames(G)=c("D", "E", "F", "G")
print(G)

# rcol
H = matrix(c(13, 14, 15, 16), nrow=4, ncol = 1)
print(H)
I=cbind(G,H)
print(I)

# MAtrix Algebra
# Additon or subtraction
J= matrix(1:9, nrow = 3, ncol = 3)
K= matrix(9:1, nrow = 3, ncol = 3)
print(J + K)
print(J - K)
print(J * K)
print(J / K) # element wise division between matrices J and K

