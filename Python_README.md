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

```
class Father(): 
    def gardening(self):
        print("I enjoy gardening")

class Mother(): 
    def cooking(self):
        print("I enjoy cooking")

class Child(Father, Mother):
    def sports(self):
        print("I enjoy sports")

c = Child()
c.gardening()
c.cooking()
c.sports()

```

## Raise Exceptions and Finally

### Raising builtin Exception

More information on exceptions [here](https://docs.python.org/3/library/exceptions.html). All classes are derived from class Exception. However, it is best practice to handle the specific exception under context. 

```
try:
    raise MemoryError('memory error')

except MemoryError as e:
    print(e)


```


### Raising user defined Exceptions

```
class CustomException(Exception):
    def__init__(self,msg):
        self.msg = msg
    def handle(self):
        print("User defined exception: ", self.msg)

try:
    raise CustomException('crash between items')

except CustomException as e:
    e.handle()


```

### Finally

```
def process_file()
    try:
        f=open("c:\\code\\data.txt")
        x=1/0
    except FileNotFoundError as e:
        print("inside except")
    finally:
        print("closing file")
        f.close()


```



## Iterator Class

```

class RemoteControl():

    def__init__(self):
        self.channels = ["HBO","CNN", "ABC", "ESPN"]
        self_index = -1
    
    
    def __iter__(self):
        return self

    def __next__(self):
        self.index +=1

        if self.index == len(self.channels):
            raise StopIteration
        return self.channels[self.index]


r = RemoteControl()
itr = iter(r)
print(next(itr))
print(next(itr))
print(next(itr))
print(next(itr))
print(next(itr))

```

output

```
HBO
CNN
ABC
ESPN
StopIteration

```

## Generators
Generator is a simple way of creating iterator

```
def remote_control_next():
    yield "cnn"
    yield "espn"

itr = remote_control_next()

next(itr)
next (itr)


for c in remote_control_next():
    print(c)

```

output:
```
cnn
espn


cnn
espn

```

## Functions

```

def greeting():
    return "hello"

print(greeting())

```
### Parameters and Arguments

```
def greet(first_name, last_name):
    print(f"Hi {first_name} {last_name}")

greet("Moses", "Malone")
```

### Number of Arguments using asterix and **args

If you are passing multiple arguments, you can use an asterix to denote multiple arguments

```

def numbers(*numbers)
    print(numbers)

numbers(2,3,4,5)

```

We could also do

```
def multiply(*numbers)
    total = 1
    for number in numbers:
        total = total * number
    return total

numbers(2,3,4,5)

```
You can also the **args to pass multiple keyword arguments

```
def save_user(**user)
    print(user)

save_user(id=1,name="john", age=22)

```

output:
```
{'id': 1, 'name': 'John', 'age': 22}

```
### Return Statement

```

def cube(num):
    return num * num * num

calculation = cube(3)
print(calculation)

```

### Optional Parameters

```
def increment(number, by=1):
    return number * by

print(increment(2))

```

## Importing Modules
You can import custom modules

```
import module_name

# then you can use the module's functions

module_name.[function]


```
or you can short the name of modules you are using (i.e., numpy, etc.)
```
import module_name as mm

# then you can use the module's functions

mm.[function]


```

or you can import the specific function of that module itself

```
# importing a specific function of that module
from module_name import find_index

# then you can use the specific module's functions

find_index()

```

```
# importing a specific functions of that module
from module_name import find_index, test

# then you can use the specific module's functions

find_index()
test()

```

You can also import everything


```
# importing everything in that module
from module_name import *

# then you can use the specific module's functions

find_index()
test()

```

You can import other out of the box modules too:
 - datetime
 - calendar
 - math
 - random
 - os
 - hashlib
 - webbrowser

## Map, Filter, Reduce Functions

## Decorators


## Lambda Expressions Functions
Suppose you want to write a function that computes the value 3x+1, you would nornally create a function. Labda functions are useful when you need a short throwaway function, and where you would only use it once. Common application are sorting and filtering data. 

```
def f(x):
    return 3 * x + 1

f(2)

```
Output

```
7

```

Now we will do this using an anonymous function or lambda expression

```

g = lambda x: 3*x + 1

g(2)


```
Output

```
7

```
### Lambda expression with multiple inputs
More information can be found [here](https://youtu.be/Ob9rY6PQMfI).  Here are some examples

```

getfullname = lambda full,last: full.strip().title() + " " + last.strip().title()

getfullname("  John", "Smith")


```
Output

```
'John Smith'

```

You can also do

```
def build_quadratic_function(a,b,c):
    # Returns the function f(x) = ax^2 + bx + c
    return lambda x: a*x**2 + b*x + c

f = build_quadratic_function(2,3,-5)


```

### Sorting a list of tuples using Lambda
```
list1 = [('honey', 9.70), ('eggs',4.25)]
list1.sort(key = lambda x: x[0])
print(list1)
```

output:
```
[('eggs',4.25), ('honey', 9.70)]
```

### Sorting a list of Dictionaries using Lambda

```
list1 = [{'make': 'Ford', 'model': 'Focus', 'year': 2012},{make': 'Tesla', 'model': 'x', 'year': 1999}]
list2 = sorted(list1, key = lambda x: x['year'])
print(list2)
```

output:
```
[{make': 'Tesla', 'model': 'x', 'year': 1999}, {'make': 'Ford', 'model': 'Focus', 'year': 2012}]
```

### Finding even numbers using Lambda

```
list1 = [1,2,3,4,5,6]
list2 = list(filter(lambda x: x%2 == 0, list1))
print(list2)
```

output:
```
[2,4,6]
```

### Finding odd numbers using Lambda

```
list1 = [1,2,3,4,5,6]
list2 = list(filter(lambda x: x%2 == 1, list1))
print(list2)
```

output:
```
[1,3,5]
```

### Map Function on a List using Lambda

```
list1 = [1,2,3,4,5,6]
list2 = list(map(lambda x: x**2, list1))
print(list2)
```

output:
```
[1,4,9,16,25,36]
```

## Map, Filter, and Reduce Functions
You may work a lot with lists, Python provides functions to streamline working with these data types.  The functions simplify the process in working with list, tuples, and other forms of iteratable data.

### Map
Suppose you want to compute the area of different circles with radius 'r'.  You may first start out by defining a function for computing the area. Then create a list of radii and then loop through the raddii and passing it the to the area function to get result and append it to a new list.


```
import Math

def area(r):
    """Area of a circle with radius 'r'."""
    return math.pi * (r**2)

radii [2,5,7.1,0.3,10]

# Method 1: Direct method

areas = []
for r in radii:
    a = area(r)
    areas.append(a)

print(areas)



```
output:

```
[12.56393939393, 78.93930939393, 158.00220200229, 0.2823030303, 314.159939323929]
```

BUT with the Map function, you can accomplish this with a single line of code taking in two arguments. The first is a function. The second is your list, tuple, or other iteratable object.  With this method, you can apply a function over a collection of each piece of iteratable data.

Data: a1, a2, ..., 
Function: f
map(f, data):
    Returns iterator over
    f(a1), f(a2), ...,

```

# Method 2: Map method

map(area, radii)
list(map(area, radii))

```

output:

```
<map object at 0x01DA1EB0>
[12.56393939393, 78.93930939393, 158.00220200229, 0.2823030303, 314.159939323929]

```

An example would be in coverting the degrees from celcius to farenheight using tuple data using this formual

F = 9/5 * C + 32

```
temps = [("Berlin", 29), ("Cairo", 36), ("Buenos Aires", 19)]

c_to_f = lambda data: (data[0], (9/5)*data[1] + 32)

list(map(c_to_f, temps))


```
output:
```
[("Berlin", 84.2), ("Cairo", 96.8), ("Buenos Aires", 66.2)]

```
### Filter Function
Used to select certain pieces of data from a list, tuple, or collection of data. Example would be in finding all data above the average.  Just like map(), the first argument is a function. The second argument is the data. The filter function will only return the data for which the function is true. 

```
import statistics

data = [1.3,2.7, 0.8, 4.1, 4.3, -0.1]
avg = statistics.mean(data)
print(avg)

filter(lambda x: x > avg, data)
print(list(filter(lambda x: x > avg, data)))

```

output:
```
2.18333333333

<filter object at 0x01DA1EB0>
[2.7, 4.1, 4.3]

```

Another example is in removing missing data
```

countries = ["", "Argentina", "", "Brazil"]

print(list(filter(None, countries)))


```
output:
```
["Argentina", "Brazil"]
```

### Reduce Function
NOTE: In Python 3+, it is no longer a builtin function. It has been moved to 'functools' module. Use functools.reduce() if you really need it; however, 99% of the time an explicit for loop is more readable. 

Data: [a1, a2, a3,....]
Function: f(x,y)

reduce(f, data):
    Step1: va11 = f(a1, a2)
    Step2: val2 = f(val1, a3)
    Step3: val3 = f(val2, a4)
    .
    .
    .
    Step n-1: valn -1 = f(valn-2, a..)

In each step, it applies f to the previous output value and the next term in sequence. Once it has reached the last piece of data it will return the final value

Let's use it
```
from functools import reduce

# Multiply all numbers in a list

product = 1
for x in data:
    product = product * x

print(product)


# Using reduce function


data = [2,3,5,7,11,13,17, 19, 23,29]
multiplier = lambda x, y: x * y
print(reduce(multiplier, data))

```

output:
```
646969320

646969320

```

## Managing secrets
Never put secrets (i.e., username and password credentials, secrety token keys, database access keys, etc) directly in code. 

### Using Environment Variable
There are many ways to store secrets starting with using environment variables.

Once you have setup the environment variable, for example in Windows, you can retrieve the environment variable in code as such:

```
import os

db_user = os.environ.get('DB_USER')
db_password = os.environ.get('DB_PASSWORD')

```

Alternatively, you could convert variable you have stored as secrets using the export command

```
export DB_USER=amad

export DB_PASSWORD=1234

```

Then you can type _env_ in command line to see these environment variables
```
env
```

Then import the OS module and start accessing the keys

```
import os

db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')

```

However, the problem is if you run this the first time the environments will be accessible.  But spawning a new terminal and running the code the environments go away and you will have to reapply the environment variables using the export command again


### Creating a separate custom python file
You create a separate _creds.py_ file containing the secrets, and then import that into the file that would use them. 

### Python ENV file
Another way is to use a .env file.

Installing using windows
```
pip install python-dotenv

```

Installing using MAC
```
pip3 install python-dotenv

```
Then you can create a _.env_ file and store secrets there. Then import it. 

```
from dotenv import load_dotenv
import os

#LOADING SECRETS
def configure():
    load_dotenv()

api_key = is.getenv("API_KEY")

url = f"https://api.openweathermap.org.data/2.5/weather?q=LosAngeles&appid={api_key}"

print(url)
```
NOTE: This would not be saved on the server repo, but primarily used for development. You would just need to replicate this on any server you wanted to run this code on.  Please make sure you include the env file in the gitignore file

```
.env
```

### Managing Multiple ENV file
Say for example we have multiple environments (testing, production, etc.), and we want to be able to switch between the secrets we use for the different environments. Using _dotenv_values_ means we can store secrets as a dictionary and use them in our python package

```
from dotenv import dotenv_values

secrets=dontenv_values(".env")

print(secrets["API_KEY"])
```

Now we mentioned multiple environemnts. We can create multiple .env files corresponding to an environemnt 
 - .env.dev
 - .env.qa

 For dev environment secrets

```
from dotenv import dotenv_values

secrets=dontenv_values(".env.dev")

print(secrets["API_KEY"])
```

For qa environment secrets

```
from dotenv import dotenv_values

secrets=dontenv_values(".env.qa")

print(secrets["API_KEY"])
```

## JSON in Python
JSON is identical to a Python dictionary, and is shorter than XML making it quicker to parse on browsers. This makes it an ideal datasource to share between client and server. Python has a JSON library to send and receive JSON data packets.  Sample JSON data

```
{
    "title": "Gattaca", 
"release_year": 1997
"is_awesome": true,
"won_oscar": false,
"actors": ["Ethan Hawke", "Uma Thurman", "Alan Arkin"
            "Loren Dean"],
"budget": null,
"credits": {
     "director": "Andrew Niccol",
        "writer": "Andrew Nicol",
        "composer": Michael Nyman"
    }
       
}

```
To interact with JSON, you need for first import the JSON library
```
import json

```

### Methods
The load method allows you to load JSON data from a file or file like object.
 
json.load(f)

The loads method allows you to load JSON data from a string.

json.loads(s)

The dump method will write JSON object to file of file like object.

json.dump(j,f)

The dumps method will output JSON object as a string

json.dumps(j)

#### Loading
```
json_file = open("F:/data/movies.txt", "r", encoding="uft-8")

movie = json.load(json_file)
json_file.close()

print(movie)
print (movie["title"])
print (movie["actors"])

```

 - First open the JSON file passing in the path, and since we are only reading just put 'r.'
 - Use the load method passing the path to the opened file
 - close the json file
 - when you print the output, it will be a dictionary of data
 - because it is a dictionary you can access the data by key. 

```

value = """
{
    "title": "Gattaca", 
"release_year": 1997
"is_awesome": true,
"won_oscar": false,
"actors": ["Ethan Hawke", "Uma Thurman", "Alan Arkin"
            "Loren Dean"],
"budget": null,
"credits": {
     "director": "Andrew Niccol",
        "writer": "Andrew Nicol",
        "composer": Michael Nyman"
    }
       
}"""

tron = json.loads(value)
print(tron)

```
- use the loads function if the JSON data arrives in a form of a string. 

### Dumping
To convert the dictionary output of JSON to valid string, you would use the dumps method

```
json_file = open("F:/data/movies.txt", "r", encoding="uft-8")

movie = json.load(json_file)
json_file.close()

json.dumps(movie, ensure_ascii=False)

```
- to avoid unusual double strokes for non ascii characters, pass in 'ensure_ascii' and set it to false to allows for unicode characters.


To dump the JSON data to file, lets declare a new JOSN object

```
movies2 = {}
movies2["title"]= "Gattaca", 
movies2["release_year"]= 1997
movies2["is_awesome"]= True,


file2 = open("F:/data/movies2.txt", "w", encoding="uft-8")
json.dump(movies2, file2, ensure_ascii=False)

```
- The create the file and its location
- Then perform a dump passing in the JSON object and the file.



## Connecting to SQL Server using Python

There are different libraries that can be used. One of which is _pypyodbc_.  

Install it on Windows:
```
pip install pypyodbc

```

Install it on MAC:
```
pip3 install pypyodbc

```
Then import and use. If you need to provide a user name and password, they are additional items you need to include in connection string. If not, then dont use. 

```
import pypyodbc as odbc

DRIVER_NAME = 'SQL SERVER'
SERVER_NAME = 'servername'
DB_NAME = 'databasename'

connection_string = f"""
    DRIVER={{{DRIVER_NAME}}};
    SERVER={SERVER_NAME};
    DATABASE={DB_NAME};
    Trust_Connection=yes;
    uid=<username>;
    pwd=<password>
"""

connection = odbc.connect(connection_string)
print(connection)

```

### Connect to MySQL using Python

Install it on Windows:
```
pip install mysql-connector

```

Install it on MAC:
```
pip3 install mysql-connector

```
Then import and use. If you need to provide a user name and password, they are additional items you need to include in connection string. If not, then dont use.   Alternatively, you may need to provide the port. 

```
import mysql.connector

mydb = mysql.connector.connect(host="", user="", password="", )

mycursor = mydb.cursor()
mycursor.execute("show databases")

for i in mycursor
    print(i)

mycursor.execute("select * from student")

```

output:
```
('information_schema',)
('mysql',)
('performance_schema',)
('sys',)
('world',)
('telusko',)


```


```
import mysql.connector

mydb = mysql.connector.connect(host="", user="", password="", databas="telusko" )

mycursor = mydb.cursor()

mycursor.execute("select * from student")
result = mycursor.fetchall()
# result = mycursor.fetchone()  //will fetch only 1 result

for i in result
    print(i)

```

output:
```
navin
vsit

```
# Resources
 - [OpenAI for Python](https://www.geeksforgeeks.org/openai-python-api/)
 - [Data Analysis](https://www.geeksforgeeks.org/data-analysis-tutorial/)
 - [Pandas AI: The Generative AI Library](https://www.geeksforgeeks.org/pandas-ai/)
 - [Python Linters](https://geekflare.com/python-linter-platforms/)
 - [Handling Secrets in Python](https://blog.gitguardian.com/how-to-handle-secrets-in-python/)
 - [Formatting string using F string](https://realpython.com/python-f-strings/)