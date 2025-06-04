# Variable names
# Allowed Characters are alphanumeric '_' and '.'
# Always start with alphabets
# No Special Characters ??,@!

# Data Types
# Logical -> True or False
# Integer ->  set of all integers, z
# Numeric -> set of all real numbers
# Complex -> set of complex numbers
# Character -> "a", "b", "c" ...

# 1) to find typeof variable use typeof(object),
# typeof(122) returns the data_type
# 2) to find whether the variable is of certain type then is.data_type(object),
# is.Character("ani") returns logical operator
# 3) coverts/coerce data types using as.data_type(object) syntax,
# as.Numeric(2 + 0i) returns 2 here.

# Object DataTypes
# 1. Vector: Ordered collection of same data types
# 2. List: Ordered collection of objects
# 3. dataframes: Generic Tabular Objects

# vector Examples
X = c(2, 3, 4, 5)
print(X)

# List in R
# 1. a ordered collection of objects
# 2. A list can have anything from logical, matrix, complex vector, character array, a function and so on

# List Examples
ID = c(1, 2, 3, 4)
emp.name = c("Man", "Rag", "Sha", "Din")
num.emp = 4
emp.list = list(ID, emp.name, num.emp)
print(emp.list)
emp.list = list("Id" = ID, "Names" = emp.name, "Total staff" = num.emp)
print(emp.list$Names)
print(emp.list$`Total staff`)

# Accessing components
# 1. To access top level components, use double slicing operator "[[]]" or "[]"
# 2. For lower level components use "[]" along with "[[]]"

# get first row in list in emp.list

# print first object, here it is list
print(emp.list[[1]])
print(emp.list[[2]])

# print selected item from list
print(emp.list[[1]][3])
print(emp.list[[2]][4])

# returns NA as there is no specified data type
print(emp.list[[3]][3])

# To change values using brackets
emp.list["Total staff"] = 5
print(emp.list$`Total staff`)

# Adding object to list
emp.list[[2]][5] = "Nir"
print(emp.list$`Names`)

emp.list[[1]][5] = 5
print(emp.list$`Id`)

# Concatenation of lists
# 2 lists can be concatenated using the c() function
# if ages is not there when intializing say just with c() then we would have added ages to list
emp.ages = list( "ages" = c(28, 30, 40, 49, 60))
emp.list = c(emp.list, emp.ages)
print(emp.list) # last object is printed