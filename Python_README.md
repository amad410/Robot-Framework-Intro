# Introduction

This is an introduction of Python for test automation programming.

# Variables & Assignments

Variable values are case sensitive. 

1. Boolean (i.e., isTrue = True)
2. Float (i.e., amount = 4.90)
3. Int (i.e., age = 15)
4. String (i.e., name='sally')

Variable can be reassigned as long as it is of the same type. 

## Variable Naming Rules

1. Variables cannot have a number at the start of its name (i.e., 4callingBirds)
2. Variables cannot have a space (i.e., not okay)
3. Variables cannot use special characters (i.e., $please.avoid)
4. Variables can use camelCase (i.e., camelCase)
4. Variables can use snakeCase to separate every word that makes up a variables name by an underscore (i.e., snake_case_variable)
5. Variables can use numbers in a variables name (i.e., numb3rsOk4yAfter1st)

## Basic Data Types
1. Floats (i.e., 1.2345, -1.24)
2. Int (i.e., 7, 45)
3. Boolean (i.e., True, False)

# Comments and Math and Assignment Operators

## Comments
To create a comment, simply add a hashtag

```

# this is a comment

```

## Math Operators

In Python you can use basic expressions and math operations to perform calculations

1. addition = 4 + 5
2. subtraction = 5 -2
3. division = 7 / 2
4. multiplication = 3 * 8
5. exponentation = 4 ** 4
6. floor_division = 16 // 5
7. modulo = 7 % 3

## Assignment Operators
An assignment is an operator that is used for reassignment
1. add_assign = 5
2. add_assign +=7

## Operator Precedence
When it comes to the operators that takes precedence in an expression, it follows this order:
1. parenthesis
2. exponentation
3. modulo, division, floor division, and multiplication
4. Addition and subtraction

# Print
Print can be used whenever you want something to displayed in the output of your program. 

```
print('hello world')

```

# Floats
When working with floats in python, you will often get approximation errors like this below:

```
print(1.23 + 2.80)
```

```
output: 4.02999999999
```

It should be just 4.03. How do we get around this. There are two ways:
1. Use integers instead

```
ex = (123 + 480 ) / 100
print(ex)
```

```
output: 4.03
```

2. use the round function

You can use the round function to take in the expression or variable value, and the number of decimal places you want to round to. 

```
ex = 1.23 + 2.80
print(round(ex, 2))
```

```
output: 4.03
```
## Int() and FLoat()

The int() and float() functions allows you to change a number to an integer or float. However there are some things that cannot be done:
1. Int and float functions cannot be used on strings
2. Int function cannot be used on string floats
3. float function cannot be used on string int

# Strings
A string is just a sequence of characters.  
```
ex = 'This is it'
ex2 = '1234'
ex3 = "Live Long"
ex4 = ""
ex5 = "!393##$$"
```

In a string, each character is assign an index (zero-based)

## Accessing by index

```
ex = 'orange'

print(ex[2])
```
```
output: a
```

## String slicing
You can get slices of a string and assign them to variables and then print them.
```
ex = 'orange'

print(ex[:2])
print(ex[2:5])
print(ex[4:])
```
```
output: ora
output: ange
output: ge
```

## Concatenation

```
print("Tommy" + " " + "Hillfiger")

```
```
output: Tommy Hillfiger
output: ange
output: ge
```

## Type() and str()
The type() function allows you to find out the data type

```
ex = False

print (type(ex))

```
```
output: bool
```

The str() function converts whatever is put in parenthesis to a string
```
ex = False

print (str(ex))

```
```
output: False
```

## Escape Sequences
Are special characters used in strings to insert quotes or make different parts of strings appear on different lines in output
1. tab (i.e., \t)
2. newline (i.e., \n)
3. quotes (i.e., \' and \") you can either use single or double quote sequences
4. backslash for when you want to add backslash to a string (i.e., \\)

## Input()
The input function allows you to get and enter information from your user

```
name = input('Please enter name:')
```
# Functions
The main point of functions is to give programmers the ability to reuse code and avoid duplication. Creating a function involves 5 parts:

```
def function_name(): 
    code 
```

Then after you define a function you should have two blanks after it to comply to the practice to python style guides. 

```
def prints_fourTimes():
    print("this")
    print("is")
    print("an")
    print("example")


print(prints_fourTimes())
```
```
output:
this
is
an 
example
```
## Functions with parameters
A 6th element of a function is taking parameters. 

```
def prints_result(parameter1, parameter2):
    print(parameter1 = parameter2)


print(prints_result(2,5))
```
```
output:7

```
### Default parameters

```
def prints_result(parameter1, parameter2 = 5):
    print(parameter1 = parameter2)


print(prints_result(2))
```
```
output:7
```
### Return Values

```
def prints_result(parameter1, parameter2 = 5):
    return parameter1 = parameter2


ex = print_result(2)
print(ex)
```
```
output:7
```

# Importing Modules
Modules contain sets of functions that can be useful for many different things. To use them, you must import them. There are 3 different ways to do that
1. Generic Import
2. Function Import
3. Universal Import

## Generic Import
Start by typing import followed by module name. As you can see i am importing the random module that contains functions for creating random things, such as floats or integers. Then use the module by calling the module name and its function. 

```
import random

print (random.randint(1,10))

```
```
output: 4
```

## Function Import
Is when a specific function is imported from a module. To do this, you must start with the 'from' followed by the module and then 'import' followed by the function
```
from random import randint

print (randint(10,20))

```
```
output: 11
```

## Universal Import
Is when you import every function from a module so that when we call any function from that module you dont need to type the module's name.

```
from random import *

print (randint(10,20))
print (random())

```
```
output: 11
output: 0.124449595449
```

# Control Flow

## Comparison Operators
There are six comparison operators:
 - less than (<)
 - greater than (>)
 - greater than or equal to (>=)
 - less than or equal to (<=)
 - Is Not Equal to (!=)
 - Is Equal to (==)


## Boolean Operators
Boolean operators are:
 - and
 - or
 - not: makes evaluates the opposite for whatever is put after it

 example:

 ```
 print(not 6482 > 0)  #not true
 print (not "Python" != "Python") # not false

 ```

## If statements
There are four things an if statement must have:
 - IF keyword
 - colon
 - the condition
 - code for the if statement if evaluates to true (indented by 4 spaces)
 
 The if statement syntax looks like this:

```
if True:
    "Do something here"
```

### Else Statements

An else statement looks like this. 

```
if True:
    "Do something here"
else:
    "Do something here"
```


### Nested IF and Else Statements

An nested and elseif statement looks like this. 

```
if gpa > 3.7:
    "Do something here"
    if age == 16
        "Do something here"
    elif age > 16
        "Do something here"
    else
        "Do something here"
elif gpa >= 3.7:
    "Do something here"
else:
    "Do something here"
 
```

## truthy and falsy values

The line below will work because of truthy and falsy values. 
```
strings_example = input("Enter any string other than an empty one here")

if string_example:
    print("Thank you for entering something")
else
    print("You did not enter a string")

```

# Loops
Loops are good when you want a piece of code to run on every item in a collection that has indexes. 

## While Loop

```
counter = 0

while counter < 3:
    print("The counter is " + counter)
    counter+=1
```

## For Loop

```
word = "house"

for letter in word:
    print(letter)
```

## Range
Range is function that returns a sequence of numbers, and is usually used with a for loop. It can take 3 arguments:
 - start
 - stop
 - step

### Range with 1 argument
This will start at 0 and move in increments of 1 until 1 less than the argment is reached. 
```
one_input = range(5)

for num in one_input:
    print(num)
```
```
output:
0
1
2
3
4
```

### Range with 2 arguments
This will start at the first argument and move in increments of 1 until 1 less than the second argment is reached. 
```
one_input = range(5,10)

for num in one_input:
    print(num)
```
```
output:
5
6
7
8
9
```

### Range with 3 arguments
This will start at the first argument and move in increments based on 3rd argument until 1 less than the second argment is reached. 
```
one_input = range(1,20,3)

for num in one_input:
    print(num)
```
```
output:
1
4
7
10
13
16
19
```

# Strings: Part II

## String Methods
These methods allow you to perform useful operations with strings. Such as splitting them or changing their case so that they can be used with non case sensitive comparisons.

### Upper & Lower

```
convert_to_upper = "Convering to upper case"
print(convert_to_upper.upper())
print(convert_to_upper.isupper())

```

output:
```
CONVERTING TO UPPER CASE
False
```

```
convert_to_upper = "Convering to lower case"
print(convert_to_upper.lower())
print(convert_to_upper.islower())

```

output:
```
converting to lower case
False
```

NOTE: You chain islower() with lower() and isupper() with upper().

### Other String methods

There are also other methods, such as:
 - .isalpha()  Only letters 
 -  .isalnum()  Only numbers and letters 
 -  .isspace()  Only spaces 
 -  .istitle()  Only titlecase  
 -  .startsWith(param)  Only if string starts with parameter 
 -   .endsWith(param)  Only if string ends with parameter  
 -  .join([param, param])  Combines strings you want to join together 
 -  .split()  splits the string and returns the list in the string 

 ### Split()

```
 print("Eggs, Milk, Waffles".split())

```
output
```
['Eggs','Milk','Waffles']

```

```
 print("Eggs, Milk, Waffles".split(","))

```
output
```
[' Eggs',' Milk',' Waffles']

```

```
 print("Eggs, Milk, Waffles".split(", "))

```
output
```
['Eggs','Milk','Waffles']
```
## Len()
The length method lets you get the length of a string (returning the number of characters in a string).

```
 print(len("Eggs"))

```
output
```
4
```
## Format()

```
 name = input(What is your name?")
job = input(What is your job?")
print("{} is the name, and {} is his or her job".format(name, job))

```
output
```
What is your name? John
What is your job? SDET
John is the name, and SDET is his or her job
```
# Lists

```
example_list = [1,2,3,4]
print(example_list)

example_list2 = ["Car", "Bike"]
print(example_list2)
```

output
```
[1,2,3,4]
['Car, Bike']
```
## .list()
This .list() takes an iteratable data types such as a string and coverts it to a list. 

```
print(list("blah"))

```

output
```
['b','l','a','h']
```
## in and not in operators

The in and not in operators can be used to check if values are in a list
```
example_list = [1,2,3,4]
print(1 in example_list)
print(8 in example_list)
print(8 not in example_list)

```
output
```
True
False
True
```
## indexes and list slicing
### accessing by index

```
example_list = ["Car", "Bike"]
print(example_list2[1])

example_list3 = [[1,2,3], [4,5,6]]
print(example_list3[1][2])

example_list4 = ["Carpet", "Hardwood"]
print(example_list4[1][2])
```

output
```
Bike
5
r
```
### Negative Indexes

```
example_list3 = [1,2,3]
print(example_list3[-1])
print(example_list3[-2])
```

output
```
3
2
```

### Using items accessed by indexes

```
mixed = [False, 365, 4.24, "this is a string"]
print("I have just printed " + mixed[3])
print(mixed[1] + 200)
```
output
```
I have just printed this is a string
565
```
### List slicing

```
sliced = [1,2,3,4,5,6,7,8,9]
print(sliced[:4])
print(sliced[3:8])
print(sliced[6:])\

```

output
```
[1,2,3,4]
[4,5,6,7,8]
[7,8,9]
```
### Reassign items in a list

```
example = [2,3,4,5,6,0]
print(example)
example[3] = 10
print(example)
example[1:4] = [3,2,1]
print(example)
```

output
```
[2,3,4,5,6,0]
[2,3,4,10,6,0]
[2,3,2,1,0]

```

## del and list methods

## del
Allows you to remove values from a list by index

```
planets = ["pluto", "venus", "mars"]
del planets[0]
print(planets)
```

output
```
["venus", "mars"]
```
## remove
Allows you to remove values from a list by value

```
planets = ["pluto", "venus", "mars"]
planets.remove("pluto")
print(planets)
```

output
```
["venus", "mars"]
```

if you try to remove multiple instances of a value in a list using remove, it will only remove the first instance. 

## append
Allows you to append values to a list, and that item will go to the end of the list

```
planets = ["pluto", "venus", "mars"]
planets.append("mercury")
print(planets)
```

output
```
["pluto", "venus", "mars", mercury]
```

## insert
Insert takes two arguments where the first argument is the index, and the other argument is the item

```
planets = ["pluto", "venus", "mars"]
planets.insert(1,"Uranus")
print(planets)
```

output
```
["pluto", "Uranus", "venus", "mars"]
```

## sort
Can be used to sort list made up of numbers or strings. 

```
planets = ["pluto", "venus", "mars"]
print(planets.sort())
print(planets.sort(reverse=True))
```

output
```
["mars", "pluto", "venus"]
["venus", "pluto", "mars"]
```

## Get Index

```
metals = ["copper", "silver", "iron"]
print(metals.index("silver"))
```

output
```
1
```

## Pop

```
metals = ["copper", "silver", "iron"]
End = metals.pop()
print(End)

print(metals.pop(1))
```

output
```
iron
silver
```
## List versus Strings

 - Lists = mutable (its values can be changed, removed, or added)
 - Strings = immutable (cannot be changed. The only way it can be changed is through reassignment of an entire new value)
 - You should create new strings from old strings as a best practice

 ### deepcopy

 ```
 import copy

 ex12 = [1,2]
 ex13 = copy.deepcopy(ex12)
 print(ex12)
 print(ex13)

 ```

 output
 ```
 [1,2]
 [1,2]
 ```
# Dictionaries
Dictionaries are a data type that can store a collection values like a list. It is different in that instead of having each item assigned to an index they are assigned to keys which can be different data types which can be floats or strings. 

Dictionaries are immutable types, like lists, which means variables that have been assigned to dictionaries also hold references to dictionaries not the dictionary values themselves. In essence, if you try to make a copy of a dictionary and assign it to a new variable and then make changes to the new variable it will also affect the previous dictionary because it makes reference to the same dictionary

```
consoles = {"nintendo" : "wii", "sony" : "playstation", "microsoft" : "xbox"}

print(consoles[nintendo])

mixed = {9: "copper", 10: "diamond"}
print(mixed[9])
```

output
```
wii
copper
```

## Dictionaries are unordered

For dictionaries to be considered equal, they need to have the same key value pairs. Dictionaries are unordered, unlike lists.

```
print([2,4,5] == [2,4,5])
print([2,4,5] == [5,4,2])
first = {0: 2.1, 1: 2.2}
second = {1: 2.2, 0: 2.1}

print(first==second)

```

output
```
True
False
True
```

## in and not in

```
first = {0: 2.1, 1: 2.2}
second = {1: 2.2, 0: 2.1}

print(2.1 in first)
print(2.1 not in first)

```

output
```
True
False
```
## Dictionary Methods

### .keys()

The keys method allows you to get all of the keys from a dictionary

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.keys())

You could also use a forloop to iterate through the keys
for key in birthyears.keys():
    print(key)


```

output
```
dict_keys([1994,1969,1982])

1994
1969
1982
```

### .values()
Is a method that allows you get all of the values from a dictionary

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.values())

You could also use a forloop to iterate through the values
for value in birthyears.values():
    print(value)


```

output
```
dict_values(["bill","tammy","Antwan"])

bill
tammy
Antwan
```

### .items()
Oftentimes, you may want to get the keys and values at same time. It will return a tuple, which is like a list but immutable and enclosed in a parenthesis and brackets.

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.items())

You could also use a forloop to iterate through the items
for key, value in birthyears.items():
    print(key, value)

converting to list
print(list(birthyears.items()))

print("bill" in birthyears.values())

```

output
```
dict_items([(1994,'bill'), (1969,'tammy'), (1982,'Antwan')])

1994 bill
1969 tammy
1982 Antwan

[(1994, 'bill'),(1969, 'tammy'), (1982, 'Antwan')]

True
```

### .get()
This method allows us to look for and get a key from a dictionary and return something other than an error message in the case where the key is not found. This reduces the time consuming effort of handling errors in our control flow (aka. IF statement) statements. It reduces the lines of code with just 1 line. 

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.get(1965, "1965 is not a key"))

```

output
```
1965 is not a key

```

### len()

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(len(birthyears))

```

output
```
4

```

### .fromkeys()
Returns a dictionary using the two values it was given as an argument. The first argument is the key and second is the value. When you call fromkeys(), it should be used on an empty dictonary which is represented by a set of empty brackets. Use an iteratable as the first argument, which will become a key in the dictionary. If the first argument was a string, then each character would become a key.  With these two arguments, it will generate a dictionary with a key value pair. 

```
birthyears0 = {}.fromkeys(["address"],"5227 Creekmur Drive")

print(birthyears0)

birthyears1 = {}.fromkeys("add","5227 Creekmur Drive")

print(birthyears1)

birthyears2 = {}.fromkeys([brand])

print(birthyears2)

```

output
```
{'address': '5227 Creekmur Drive'}

{'a': '5227 Creekmur Drive', 'd': '5227 Creekmur Drive'}

{'brand': 'none'}

```
### .pop()
Removes an item in a dictionary, just like a list, where an item is a key value pair. However, there is a bit of a difference since you cant just call it without a key because it is unordered. The .pop() method also will return the value that was removed, if you assign it a variable.

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.pop(1982))

ex1 = birthyears.pop(1994)

print(ex1)

```

output
```
{1994: 'bill', 1969: 'tammy'}
bill

```

### .popitem()
This methods allows you to remove the last key value pair from a dictionary without giving it an argument. 

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.popitem())

```

output
```
{1994: 'bill', 1969: 'tammy'}

```

### .clear()
The clear() method just removes everything from a dictionary resulting in an empty dictionary.

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

print(birthyears.clear())

```

output
```
{}
```

### .copy()
You may recall that when you normally create a new variable and assign it a dictionary, you are actually created a reference to the dictionary. If you change the dictionary values using the newly assigned variable you change the values in original dictionary. To get around that you can use the copy() method which returns an exact copy of a dictionary with its own reference. Therefore values can be changed without affecting the original dictionary that the new dictionary was copied from. 

```
birthyears = {1994: "bill", 1969: "tammy", 1982: "Antwan"}

newbirthyears = birthyears.copy()
print(newbirthyears.clear())

```

output
```
{1994: 'bill', 1969: 'tammy', 1982: 'Antwan'}
```

### .update()
Allows to add key value pairs from one dictionary to another or overrite the values of existing keys in a dictionary with values from another dictonary. 
```
city_info = {"country": "canada", "province": "Ontario"}
population = {"population": 239000}

city_info(update(population))
print(city_info)

city_info["population"] = 300000
print(city_info)

city_info(update(population))
print(city_info)


```

output
```
{"country": "canada", "province": "Ontario", "population": 239000}

{"country": "canada", "province": "Ontario", "population": 300000}

{"country": "canada", "province": "Ontario", "population": 239000}
```

### setdefault()
This method is useful when you are looking for keys, but you find that certain keys do not exist. It allows you to give values to keys if they are not found in a dictionary. Without it, you will just get an error message. 

```
computers = {"Google": "Chromebook", "Apple": Mac"}

if "Lenovo" not in computers:
    computers["Lenovo"] = "ThinkPad"

print(computers)

An easier way it to use the setdefault method.

computers.setdefault("Microsoft", "Surface Pro")

print(computers)

```

output

```
{"Google": "Chromebook", "Apple": Mac", "Lenovo": "ThinkPad"}

{"Google": "Chromebook", "Apple": Mac", "Lenovo": "ThinkPad", "Microsoft": "Surface Pro"}

```

### dict()
The .dict() method gives you an alternative way to create a dictionary in python.

```
empty = dict()
print(empty)

with_values = dict(1982="Antwan, 1969="John")
print(with_values)

```

output

```
{}

{1982: "Antwan", 1969: "John"}

```

# Tuples
Are a data type made up of a collection of items. Similar to lists, but different in that they are enclosed in parenthesis instead of square brackets. Tuples when you want to have a collection of data that will never change later in the program, since they cannot be changed. For example, days of week, seasons, or letters in the alphabet. In addition, tuples take less space in memory. You can have multiple instances of the same item in a tuple.  
There are essentially two ways to create a tuple. The first is in using parenthesis

```
tuple_1 = ("a","b","c")
tuple_2 = ("2.718","b","c")
tuple_3 = ("2.11",True,[1,2,3])
tuple_4 = (1,1,0,0,0)


```

The other way is by using the tuple function, which returns a tuple and must take in one item that must be of an interative data type (A list or string).  

```

tuple_1 = tuple("abdccc")
tuple_2 = tuple([1,2,3,4])

print(tuple_1)
print(tuple_2)

You can a dictionary as an argument to the tuple function, but only the keys will be made into a tuple.

tuple_3 = tuple({1982: "Antwan", 1979: "Cheryl"})

print(tuple_3)

```

output
```
(a,b,d,c,c,c)
(1,2,3,4)
('1982', '1979')


```

## Index in tuple
Each item in a tuple has an index just like a list. 

```
tuple_3 = tuple(1,2,3)

print(tuple_3[0])

```
output

```
1
```

## slicing of tuples
Works the same way when slicing lists. 

```
tuple_3 = tuple(1,2,3)

print(tuple_3[0:1])

```
output

```
(1,2)
```

## Tuple assignments
Tuples do not support item assignment

## Memory in bytes

```
tuple_3 = tuple(1,2,3)

print(tuple_3__sizeof__())

```
output

```
48
```

## Tuple looping
Iterating works the same as in a list. 

```
tuple_3 = tuple(1,2,3)

for item in tuple: 
    print (item)


count = 0

while count < len(tuple)
    print (tuple[count])
    count+=1


```
output

```
1
2
3


1
2
3


```

## Slicing with step

```

ints = (1,2,3,4,5,6,7,8,9,10)

print(ints[::3])    # stride length of 3
print(ints[1::2])   # evens only
print(ints[7::-1])  #backwards from 8
print(ints[8::-2])  # odds only backwards
```

output
```
(1,4,7,10)
(2,4,6,8,10)
(8,7,6,5,4,3,2,1)
(9,7,5,3,1)
```
## Tuple Methods

### Nested Tuples
In Python you can nested tuples. 

```
nested = (1,2,3,(4,5,6), (7,8,9))
print(nested[4])
print(nested[5][1])


```

output
```
(7,8,9)
11
```

### .count()
This method returns the number of times a value appears in the collection

```
repeat = (7,3,4,0,0,7,0)
print(repeat.count(7))
print(repeat.count(3))
print(repeat.count(0))


```

output
```
2
1
3
```
### .index()
You can get the index of a tuple using the .index() method.
```
repeat = (7,3,4,0,0,7,0)
print(repeat.index(7))
print(repeat.index(3))
print(repeat.count(0))


```

output
```
0
1
```

# Sets
A set is a data type that contains of items much like a list, but differs in that A) it cannot have duplicate values in them B) the items are unordered. There are two basic ways to create sets. The first is using curly brackets (a set literal). The second is in using the set function.  If there duplicat items in a set, they will be ignored. You will have to use the set function to create an empty set. A set can hold items of different data types. One thing to note, items in a set cannot be accessed by index. If you want to do that use a for loop.

Overall, sets are useful when you want to create a collection of items, but you dont want duplications and you dont care about the order of the items. 

```
set_1 = {9,8,7,6}
print(set_1)

set_2 = set({"a","b","c","d","e"})
print(set_2)

set_3 = set()
print(set_3)

set_4 = set(range(1,12,2))
print(set_4)

for item in set_4:
     print(item)

print(12 in set_4)
```



output
```
{8,9,6,7}
{'a','d','e','c','b'}
set()
{1,3,5,7,9,11}

1
3
5
7
9
11

False
```

## Set Methods

### .add()

```
set_1 = {9,8,7,6}
print(set_1.add(10))

```

output
```
{10,8,7,6,9}
```
### .remove()

```
set_1 = {9,8,7,6}
print(set_1.remove(6))

```

output
```
{8,7,9}
```

### .discard()
The difference is if this method is used on an item that is not in a set, it will do nothing instead of throwing an error message
```
set_1 = {9,8,7,6}
print(set_1.discard(10))

```

output
```
{8,7,6,9}
```

### .clear()

```
set_1 = {9,8,7,6}
print(set_1.clear())

```

output
```
{}
```

### .copy()
Will copy a set into a new variable with its own reference.
```
set_1 = {9,8,7,6}
set_2 = set_1.copy()
print(set_2)

The two variables contain the same data, but are ordered differently.
print(set_2 is set_1) 

```

output
```
{8,7,6,9}
False
```

### .union()
Combines the items in two different sets into a single set
```
set_1 = {9,8,7,6}
set_2 = {1,2,3}
set_3 = set_1.union(set_2)
print(set_3)

An alternative would be to use the pipe character
set_3 = set_1 | set_2
print(set_3) 

```

output
```
{8,7,6,9,2,1,3}
{8,7,6,9,2,1,3}
```

### intersection
Allows you find out the items two sets have in common.

```
set_1 = {4,5,6,7,8}
set_2 = {6,7,8,9,10}
print(set_1.intersection(set_2))

An alternative would be to use the ampersand character
set_3 = set_1 & set_2
print(set_3) 


```

output
```
{8,6,7}
{8,6,7}
```

### difference
You can substract one set from another based on the items that make up their intersection or what they have in common

```
set_1 = {4,5,6,7,8}
set_2 = {6,7,8,9,10}
print(set_2 - set_1)
print(set_1 - set_2)

An alternative would be to use the difference method
print(set_2.difference(set_1))
print(set_1.difference(set_2))

```

output
```
{9,10}
{4,5}

{9,10}
{4,5}
```

## Set comprehensions

```
 comp_1 = {even+2 for even in range(2,11,2)}
 print(comp_1)

 ```
Output

```
 {4,6,8,10,12}

 ```
## Creating classes in Python
```
class Human:
    def__init__(self): 
        self.name = ""
        self.occupation = ""

```
- the init method is like a constructor that get called whenever you create an instance. You can pass arguments that will take in parameters when an instance is created. 
- self means this class itself, and it also how you further define the properties of the class.  Here we defined name and occupation as properties.

```
class Human:
    def__init__(self, nm, occ): 
        self.name = nm
        self.occupation = occ
    
    def do_work(self):
        if self.occupation == "tennis player":
            print(self.name, "plays tennis")
        elif self.occupation == "actor"
            print(self.name, "shoots film")

    def speaks(self):
        print(self.name, "says how are you")


tom = Human("tom","tennis player")
tom.do_work()
tom.speaks()

```
- here we created methods where 1 controls execution based on a condition, but both are using the properties.

## Inheritance
There are three primary benefits of inheritance:
1. Code Reuse
2. Extensibility
3. Readabiliy

```
class Vehicle:
    def general__usage(self): 
        print("general use: transportation")

class Car(Vehicle)
    def__init__(self):
        print("i'm car")
        self.wheels = 4
        self.has_roof = True

    def specific_usage(self):
        print("specific use: Commute to work, vacation with family")

class Motorcycle(Vehicle)
    def__init__(self):
        print("i'm motorcycle")
        self.wheels = 2
        self.has_roof = False

    def specific_usage(self):
        print("specific use: Roadtrip and racing")  

c = Car()
c.general_usage()
c.specific_usage()

m = Motorcycle()
m.general_usage()
m.specific_usage()

isinstance(c,Car)        # will be True
issubclass(Car, Vehicle) # will be true
isinstance(m,Motorcycle)  # will be True

```
- You make inheritance by adding the parent class in parenthesis as you declare the sub class

## Multiple Inheritance


## Raise Exceptions

## Iterators


## Generators


## Control Flow

## Loops


## Return Statement

# Resources
 - [OpenAI for Python](https://www.geeksforgeeks.org/openai-python-api/)
 - [Data Analysis](https://www.geeksforgeeks.org/data-analysis-tutorial/)
 - [Pandas AI: The Generative AI Library](https://www.geeksforgeeks.org/pandas-ai/)