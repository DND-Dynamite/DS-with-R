# You can find the Global Options in the Tools menu of RStudio.
# Click on Global Options menu choice.
# The Global Options dialog will open.
# Once the Global Options dialog opens look for the Default Working Directory option.

# Functions
# a space to do repeatitive task
# a function accepts input arguments and produces output by executing valid R commands present
# in the function
# Function and filename needs not be same
# A file can have one or more functions
# A file can have one or more function definitions
# functions are created using the command function()

# source will load the file but doesnot executes any
# return should be wrapped in round braces

# arguments follow the path in which they are called
# arguments can be called randomly using the argument name
# If nothing is present then default values are taken

# lazy functions: these are the functions are lazy evaluated which 
# means they work even when extra arguments are passed as lon we donot use them



f = function(arguments) {
  print("function")
}

volcylinder = function(dia = 5, len = 10) {
  vol = pi * dia ^ 2 * len / 4
  return (vol)
}

v1 = volcylinder(5,10)
print(v1) # 1963.495 cm^3

v2 = volcylinder()
print(v2) # 1963.495 cm^3

v3 = volcylinder(len = 10, dia = 5)
print(v3) # 1963.495 cm^3

v4 = function(len, dia, rad) {
  vol = pi*dia^2*len/4
  return (vol)
}
print(v4(dia = 5, len = 10))


# Multiple output is not supported by R , but we can do so by storing them in a list and returning the list
v5 = function(dia, len) {
  vol = pi*dia^2*len/4
  surface_area = pi*dia*len
  result = list("volume"=vol, "surface_area"=surface_area)
  return(result)
}

print(v5(10, 5))

# In line function
func = function(x) x^2 + 4*x + 4
print(func(2))

# Looping over objects
# 1. apply: Apply the function over margins of an array or matrix
# 2. lapply: apply a function over a list or a vector
# 3. tapply: apply a function over ragged array
# 4. mapply: multivariant vesion of lappy
# 5. xxply: plye package

# apply
# x: determines the input array including matrix.
# margin: If the margin is 1 function is applied across row, 
# if the margin is 2 it is applied across the column.
# function: determines the function that is to be applied on input data.

sample_matrix <- matrix(C<-(1:10),nrow=3, ncol=10)

print(apply(sample_matrix, 2, sum))

print(apply(sample_matrix, 1, mean))

# lapply
# x: determines the input vector or an object.
# fun: determines the function that is to be applied to input data.

A1 = matrix(1:9,3,3)
B1 = matrix(10:18,3,3)
mylist = list(A1, B1)
det_result = lapply(mylist, det)
print(det_result)

# mapply
# apply functions across lists

v6 = function(dia, len) {
  result = pi*(dia/2)^2*len
  return(result)
}

dia = c(1:4)
len = c(7, 4, 3, 2)

volume = mapply(v6, dia, len)
print(volume)

# tapply
# tapply is used to apply a function over subset of vectors given by a combination of factors

Id = c(1,1,1,1,2,2,2,3,3)
Values = (1:9)
tapply(Values,Id, sum)