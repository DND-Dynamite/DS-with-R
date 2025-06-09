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