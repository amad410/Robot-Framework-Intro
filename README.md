# Introduction
This is a boilerplate project using Robot Framework.

Overview can be found at this resource [here](https://www.geeksforgeeks.org/robot-framework-in-python/). 

# Project Setup
Robot Framework is a common open-source automation framework for Acceptance Testing, Acceptance  Test-Driven Development (ATTD), and Robotic Process Automation (RPA). It uses a keyword-driven testing technology approach and the capabilities can be extended by testing libraries that can be implemented in Python or Java. 

Robot Framework has a modular architecture that can be bundled and expanded with self-declared libraries. When execution begins, the framework parses the data before it. It then uses the keywords provided by the libraries to interact with the destination system.

There are a bunch of standard libraries in the robot framework. Let’s discuss one by one

 - Builtin is a Robot Framework standard library that provides a set of common keywords that are needed very often so are automatically imported and always available.
 - Collection is a standard library that provides a set of keywords to handle python lists and dictionaries. The library has keywords to modify and derive values from lists and dictionaries.
 - DateTime is a robot framework that supports the creation and transformation of date and time values.
 - Dialogs is a Robot Framework standard library that provides a means to pause execution and receive input from users. The dialogs are a bit inconsistent depending on whether the tests are running or not.
 - OperatingSystem enables the various operating system-related tasks which are going to perform in the system when the robot framework is running. It can among other things executing commands, can also create and remove files directly as well.
 - Process is used for running processes, this library utilizes python submodules and its open class. The main use of the library is to wait for the running process in the system and compile using the run process keyword. we have start process on the background using start process and then we start the process or end process or terminate all process using wait for the process.
 - Screenshot is a test library for taking screenshots on the machine where the tests are being run.
 - String is a library used for string manipulations and verification.
 - Telnet provides communication over a telnet connection. The telnet library makes it possible to connect to a telnet server and execute commands over an open connection.
 - XML is also a robot framework text library for verifying and modifying XML documents.
 
It can be used on Web, Mobile, and Desktop applications. The supported browsers are Chrome, Firfox, and IE.  

## Installation
Before starting the install process, check to see what is already installed. At command line type to verify tool installation:
```
git version
python --version
robot --version
where python
pip --version

chromedriver --version
```
### Install Tools:
- [Install Git](https://git-scm.com/downloads)
- [Install python 3.8](https://www.python.org/downloads/)
- [Install pip](https://pip.pypa.io/en/stable/installing/) or [Pip3](https://www.activestate.com/resources/quick-reads/how-to-install-and-use-pip3/)
- [Install Robot Framework 4.0 or greater](https://pypi.org/project/robotframework/)
- [Install Requests Library](https://www.geeksforgeeks.org/how-to-install-requests-in-python-for-windows-linux-mac/)
- [Install SeleniumLibrary and WebDrivers](http://robotframework.org/SeleniumLibrary/)
- [Install Robot Framework RequestsLibrary](https://pypi.org/project/robotframework-requests/)

NOTE: You only need Pycharm if you are using their IDE. This project uses VSCode.

PIP is usually installed alongside Python. PIP is nothing more than a package manager. You will need to install the webdrivermanager library so that you can install the 
drivers. Once installed, you simply can install the drivers using the following command:
```
webdrivermanager chrome firefox --linkpath /usr/local/bin
```
NOTE: You will need to add Robot framework and WebDriverManager to system path. Once done
you should be able to check the installation, simply by performing. 

NOTE: In some cases, you may need to install a certain version of selenium. See more [here](https://github.com/robotframework/SeleniumLibrary/issues/1835). If so, peform:
```
pip install selenium==4.9.0
```

```
robotframework --version
chromedriver --version 
```

#### Setting up Your IDE
More information can be found [here](https://docs.robotframework.org/docs/getting_started/ide)

You'll need an IDE, here are some to choose from
- [Install VSCode](https://code.visualstudio.com/download)

Some extensions for VSCode that may be useful
```
robocorp.robotframework-lsp
ms-python.python
Robot Framework Language Server
```
##### Setup in Pycharm
Alternatively, you can setup and install Pycharm as the IDE and build your tests there. 
- [Pycharm](https://www.jetbrains.com/pycharm/)

Note: Make sure in the IDE for the Base Interpreter when creating a new project you select the appropriate python version EXE you used to setup in the terminal which is tied to all your packages. You can do this by navigating to File->Settings and then type in 'interpreter.'  Then navigate to Python Interpreter section.  To add a new interpreter, just click the gear icon and select a navigate to the corresponding location exe. Usually the version location is under C:\Program Files\Python38 or under the python folder in AppData. If it was done correctly, you will see all your packages.

However, building tests will be different. Using the following to refresh [here](https://medium.com/swlh/robot-framework-the-basics-dfeadc025bea)

###### Plugin to install for Intellisense
Then navigate to File->Settings->Plugins and install 'Hyper RobotFramework Support.' 

NOTE: Only compatible from Pycharm IDE version 2022+

## Quick Start Guide
In order to use Python for Robot Framework, you will need to refresh your skills in Python. Navigate to Python Readme [Python_README.md](Python_README.md).

In addition, you can visit the official Robot Framework documentation [here](https://docs.robotframework.org/docs) or [here](https://robotframework.org/) or [Applitools robot framework course](https://testautomationu.applitools.com/robot-framework-refesh)

## Running Tests

```
robot <testfile.robot>
```
## Settings
This is where external libraries and resources will go. Some things included
in this section include:
 - Resource:  Makes keywords and variables from another file available to this one.
 - Library: Makes keywords from a library available to this suite. Examples: SeleniumLibrary, Collections, String,RequestsLibrary.
 - Suite Setup/Teardown:  Run a keyword once before/after all tests in suite.
 - Test Setup/Teardown - Run a keyword before/after each test.

You can add settings to a file using the following syntax:

```
*** Settings ***
Library	SeleniumLibrary
Library RequestsLibrary
```

You can use the prebuilt or any custom built libraries. You can even pull python packages in here all using the _Library_ keyword.

### Settings - Suite Setup and Suite Teardown
The following are available as hooks to tests:
 - Suite Setup: runs specific keywords prior to all test cases in this suite
 - Suite Teardown: runs after all test cases in this suite
 - Test Setup
 - Test Teardown

You can create other settings hooks such as 
```
Suite Setup Run Keywords    Initialize Test Data    Navigate to HomePage
Suite Teardown Exit Selenium
```
 Consult builtin libraries [here](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html) for more information.

## Libraries
Libraries include packaged utilities and functional code that can be used for Robot Framework scripting. 
Some libraries are:
 - SeleniumLibrary
 - RequestsLibrary
 - String
 - Collections
 
Here is more libraries [here](https://docs.robotframework.org/docs/different_libraries/how_to_find_library)
Standard Libraries [here](https://robotframework.org/robotframework/)

### Built-In Libraries
Provides a set of often needed generic keywords. E.g. Should be equal, Should contains. Always automatically available without imports. These are imported automatically.You can find more information about the builtin libraries [here](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html). 

There are mainly four built-in tools that are used in robot framework that are:

 - Testdoc – Robot Framework generates high-level HTML documentation based on test cases. The created documentation is in HTML format. 
 - Rebot – Tools to generate logs and reports based on XML output and merge multiple outputs simultaneously. This is used automatically when test reports and logs are generated. XML output files can be post-processed afterwards by the Rebot tool.
 - Tidy – Robot Framework Tools for cleaning and changing the format of data files.
 - Libdoc – Tools for generating keyword documentation for libraries and resource files.  It can generate HTML documentation for humans as well as machines readable spec files in XML and JSON formats. 

### String Libraries
Library for generating, modifying and verifying strings. You can find more information about the string libraries 
[here](https://robotframework.org/robotframework/latest/libraries/String.html)

### Screenshot Libraries
Provides keywords to capture screenshots of the desktop. You can find more information about the screenshot libraries 
[here](https://robotframework.org/robotframework/latest/libraries/Screenshot.html)

### Selenium Libraries
You can find more information about the selenium libraries [here](https://docs.robotframework.org/docs/different_libraries/selenium) or 
[here](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

### Requests Libraries
You can find more information about the Requests libraries [here](https://docs.robotframework.org/docs/different_libraries/requests) or
[here](https://github.com/MarketSquare/robotframework-requests#readme)

### Collections Libraries
You can find more information anbout Collections libraries [here](https://robotframework.org/robotframework/latest/libraries/Collections.html). It is primarily used to manage data. 

### Pabot Tools
A parallel executor for Robot Framework tests and tasks. You can find more information
[here](https://github.com/mkorpela/pabot)

### DB Libraries
You can find more information about the selenium libraries [here](https://docs.robotframework.org/docs/different_libraries/database)

### Process Library
This Python's subprocess module and its Popopen class.  It waits for completion using Run Process keyword. It starts the processes in the background using the Start processes command. Waiting for started process to complete using Wait for process.  Stops with terminate process.

### Remote Library
This library allows Robot Framework test libraries to run as external processes. Running test libraries on different machines.  Possibilities are for distributed testing

### Dialogues Library
This library provides means for pausing the test or task execution and getting input from users. Long lines are wrapped automatically. Adding newlines using the \n character sequence. The limitation is that it canot be used with timeouts. 

### Operating System Library
This library enables various operating system related tasks to be performed in the system where Robot Framework is running. It can, among things, execute commands (run), creatre and remove files and directories, check whether files or directors exist or contain something (i.e., File Shoul Exist, Directory Should Be Empty)

### Database Library
You can find more information [here](https://docs.robotframework.org/docs/different_libraries/database). The Database Library is a Robot Framework library that provides keywords for interacting with databases.

### Appium Libraries
You can find more information about the Appium libraries [here](https://github.com/serhatbolsu/robotframework-appiumlibrary)

### Robot Framework Browser Libraries
You can find more information about the Robot Framework Browser libraries [here](https://github.com/MarketSquare/robotframework-browser)

## Resources
Resources are the files that you build.  You may have files that keywords in them. You may have some that have variables in them. There are lots of different ways to use the _Resource_ keyword. but it helps you keep your keywords in certain groups. For example, you can group together all navigation keywords into a file called _navigaton.robot_ or a page object in a file called _mainpage.robot_ or system keywords in a _system.robot_ or lastly _data.robot_ for managing some data. 

## Keywords
Contains the definitions for keywords. Keywords are executed when they are called (used) in a
test or another keyword. Some keywords are:
 - Comment
 - Open Browser
 - Input Text
 - Set Suite Variable
 - Set Selenium Speed
 - Page Should Contain Element
 - Click Link
 - Click Button
 - Create Session
 - Create WebDriver

 You can create your own keyword by simply creating a keyword section:

 ```
 *** Keywords ***
 Navigate to Home Page
    Open Browser    http://www.google.com   Chrome
    
 ```

 You can also return values using Keywords:
```
 *** Test Cases ***
 My Addition Calculation
    ${sum}=    Add 2   3
    Should be equal as integers    5   ${sum}

 *** Keywords ***
Add
    [Arguments] ${value1} ${value2}
    ${value}=   Evaluate    ${value1} + ${value2}
    [Return]    ${value}
    
 ```

 ### Specifying driver implicitely using WebDriver (Alternatively)
Alternatively, you can specify which driver to use and its location. 
 Create Webdriver [type] [executable_path=location]. Example shown below.

```
*** Test Case ***
    Create Webdriver Chrome executable_path=/Users/chromedriver
```

 See More [here](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Create%20Webdriver)

## Comments
Comments are used for documentation purposes, and can be specified using the keyword:

```
Comment some comment

```
## Locating Elements

More information can be found [here](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements)

### Storing element locators
You can create global element variables that store the locators. See Variables section. 

## Test Cases
This section contains more than one test, as it functions like a test suite. It
defines our test cases.  Test cases are run from top to bottom, and so are the steps. 

Example
```
*** Keywords ***
${errorMessage}     css:.alert-danger

```

You can add test cases to a file using the following syntax:

```
*** Test Case ***
Create an Invoice
```

## Variables
Variables are a way of storing information. They have a name and value. The variables are loaded and kept in memory for usage, but the variables have to be defined so that setting sections can use them as well.

There are essentially two types of variables:
 - Section Variables: defined in a variables section in a test as seen in one of the examples below
 - Inline Variables: defined in the test case along with its value

### Exammple Using Variables in Variable Section
```
*** Test Cases ***
Using Variables
    Log to Console  My name is ${name} and my favorite color is ${color}

*** Variables ***
${name} Jack
${color}    Green
```

### Exammple Using Variables Inline
```
*** Test Cases ***
Using Variables
    ${name}=    Set Variable    Jack
    ${color}=   Set Variable    Green
    Log to Console  My name is ${name} and my favorite color is ${color}
```

## Resources Files
Files used to store reusable functions and variables. 

## Parameterizing Tests with multiple data sets
You can use the Test Template library as outlined below

```
*** Settings ***
Documentation    This is a sample demo test class to validate a login form
Library     SeleniumLibrary
Test Setup      Navigate To Login Page
Test Teardown    Close The Browser
Test Template    Parameterize and Validate Invalid Login
Resource    resource.robot


*** Test Cases ***  username        password
Invalid username    dshashed        learning
Invalid password    rahulshetty     ploudg
special characters   @%%             leanring@@

*** Keywords ***

[Arguments]  ${username}  ${password}
    Fill the login Form ${username}  ${password}
    Wait for Error Message
    Verify Error Message is Correct

Fill the login Form
    [arguments]  ${username}  ${password}
    Input Text    id:username   ${username}
    Input Text    id:password   ${password}
    Click Button    id: signInBtn

```

## Data Driven Testing using Excel or CSV
You can install another separate library called 'RoboFramework-DataDriver' or 'RobotFramework-Exceldatadriver.' More info [here](https://github.com/Snooz82/robotframework-datadriver). In Pycharm,
1. Navigate to settings -> Python Interpreter
2. Add a new package
3. Install it
4. Import Library into test file
5. Install CSV editor plugin
6. Setup resources directory and create data.csv in there with comma delimitted values

This is how you import the library
```
Library  DataDriver  file=resources/data.csv  encoding=utf_8  dialect=unix
Test Template    Parameterize and Validate Invalid Login
```

Alternatively, you can run the command, before importing library


```
pip install --upgrade robotframework-datadriver

```
Alternatively, on MAC
```
pip3 install --upgrade robotframework-datadriver

```

Then create your test case. PLEASE NOT the parameterized columns must have the same name as the arguments (i.e. ${username} = ${username} in csv).

```

*** Test Cases ***
Parameterize and Validate Invalid Login  ${username} and password ${password}   Default UserData

*** Keywords ***

Parameterize and Validate Invalid Login
    [Arguments]  ${username}  ${password}
    Fill the login Form  ${username}  ${password}
    Wait for Error Message
    Verify Error Message is Correct

```
## Implementing Page Objects
You can do this by creating keywords in separate page based .robot files. What if the same keywords exist in multiple resource or page.robot files? You can implicitely declare a key word step in your test case to use a specific robot file or resource by:

```
LangingPage.Fill the login form  ${username1}  ${password1}

```
## Managing Test Data
Test data can be managed used a separate resource file (i.e., json, csv, excel) or within you test as a variable. 

## Screenshot Upon Failure
Screenshot are automatically captured on a failed keyword or test. 

## Running test by name
```
robot --t <testname> .
robot --t <partialtestname*> .

```
## Tags
### Creating Tags
```

*** Test Cases ***
Validate Successful Login
    [Tags]  Smoke
    Navigate To Login Page
    Submit Valid Credentials

```
### Running test by tag
```
robot --include <tagname1> .
robot --include Smoke .

```

### Running test by multiple tags

```

*** Test Cases ***
Validate Successful Login
    [Tags]  Smoke   REGRESSION
    Navigate To Login Page
    Submit Valid Credentials

```


```
robot --include <tagname1>AND<tagname2> .
robot --include <tagname1>OR<tagname2> .
robot --exclude <tagname1> .

```

## Running only failed tests
```
robot --rerunfailed output.xml .

robot --rerunfailed output.xml testdemo1.robot

```

## Running all tests from a folder
You can do this by giving the folder path, once you are in that directory. For example

```
robot .

```

## Running test suites
See information on running robot framework tests using suites [here](https://www.neovasolutions.com/2022/08/30/how-to-run-a-test-suite-in-robot-framework/)

### Running test suite
```
robot --suite <foldername>

```

## Running tests in parallel
This can be performed by using the pabot package [here](https://pabot.org/) or more information on its usage can be found [here](https://docs.robotframework.org/docs/parallel). It can be downloaded [here](https://github.com/mkorpela/pabot). With this package, you can multiple tests in a file parallely or multiple test files parallely. 

1. Navigate to settings -> Python Interpreter
2. Add a new package
3. Install it

OR

Perform the following command/ 
```
pip install -U robotframework-pabot
```

Alternatively on MAC, you have to run command
```
pip3 install -U robotframework-pabot
```

### Running the test files in parallel
```
pabot [path to tests]

pabot .

```

### Running the test in one file in parallel

#### Split execution on test level
```
pabot --testlevelsplit  [path to tests]

pabot --testlevelsplit  testdemo1.robot
```

#### Running same tests with two different configurations
```
pabot --argumentfile1 first.args --argumentfile2 second.args [path to tests]

```
## Cross Browser or Cross Platform
Make sure you have downloaded the corresponding drivers to you directory:
 - Chrome - ChromeDriver
 - Firefox - GeckoDriver
 - Edge - Microsoft Edge Driver

 Rename the executables accordingly.


```
***  Settings ***
Test Setup  Open the browser with url  Firefox

***  Keywords ***
Open the browser with the url
    [arguments]  ${browser}
    Create Webdriver  ${browser}  executable_path=resources/${browser}
```
### Setting variable values from Run time command line arguments to Robot Framework
This is only applicable to GLOBAL VARIABLES. This will come in handy when you want to decide on which browser you want to run against. Or which platform if you were running Appium tests. The intent is to parameterize those values and invoke them at run time. We can extend what we did in the Cross Browser section by adding a variable and value for the browser and then using that variable in the keyword statement that uses it to launch a browser. 

```
***  Settings ***
Test Setup  Open the browser with url

*** Variables ***
${browser}  Chrome

***  Keywords ***
Open the browser with the url
    Create Webdriver  ${browser}  executable_path=resources/${browser}
```

Now what if you want to drive this through the command line instead? You can do this through command line arguments. You simply provide the variable name and set its value. Then you tell which file you want to run. 

```
robot --variable browser:Firefox testdemo1.robot
robot --variable browser:Firefox --include SMOKE  testdemo1.robot

```

## Storing variable values From Results in Tests
```
***  Keywords ***
Verify error message is correct
    ${result} =  GET Text   ${Error_Message_Login}
    Should Be Equal As Strings  ${result}  Incorrect username/password.
    Element Text Should Be  ${Error_Message_Login}  Incorrect username/password.

```

## Set Global Variables: Sharing variable values with other keywords
You can share variables set in one keyword with other keywords, simply by setting that vairable as a global and then reusing it in another keyword.  However, when you set a global variable, an entry should also be created in the variables section

```
*** Variables ***
${email}

***  Keywords ***
Grab the Email Id in the Child Window
    ${email} =  GET From List ${words_2}
    Set Global Variable ${email}

Switch to Parent window and enter email
    switch window   MAIN
    Title Should Be LoginPage Practise | Rahul Shetty Academy
    Input Text  id:username ${email}
```

## How to get Selenium Robut Instance into your custom library file
If you had a custom class (i.e. *.py), you can use an instance of the Selenium Robot library by first using the import statement and then getting the instance. 

```
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class Shop:
    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")


```

## How to create custom keywords in your custom library file

```
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn

@library
class Shop:
    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def hello_world(self)
        print("hello")

    @keyword
    def add_items_to_cart_and_checkout(self, productList)
        # Get WebElements
        i=1
        productTitles = self.selLib.get_webelements(" css:card-title")
        for productsTitle in productsTitles:
            if productsTitle.text in productList:
                self.selLib.click_button("xpath:(//*[@class='card-footer'])["+str(i)+"]/button")

```

## Hooks
There are different types that should be maintained at test case or generic resource level:
1. Test Setup - will be ran before each test case in the file
2. Test Teardown - will be ran after each test case in the file
3. Suite Setup - will be ran once before execution of all test case in the file
4. Suite Teardown - will be ran after execution of all test case in the file

## Keyboard Shortcuts
RIDE Keyboard shortcuts can be seen [here](https://github.com/robotframework/RIDE/wiki/Keyboard-Shortcuts)

# Upgrading

## Updating chromedriver:
It is common that the chromedriver needs updating. Here is the command to update at the commandline (dos):
```
webdrivermanager update chrome  
```

## Updating PIP version:

You can update the package manager by performing the following:
```
 python.exe -m pip install --upgrade pip
```

## Upgrading Selenium Library
A shorthand way of upgrading the selenium library using PIP is:
```
pip install --upgrade robotframework-seleniumlibrary
```

## Setting up and Configuring Jenkins
Here are the general steps:
1. Go [here](https://jenkins.io/download) to download the appropriate jenkins.war file for your development environment.
2. Navigate to where the WAR file is and run the following command with a specific port to run the local server
    java -jar jenkins.war -httpPort=9090
3. Then go to the browser and go to 
    localhost:9090 or whatever the port you specified
4. Setup your username and password
5. Then login

### Integrate robot Framework with Jenkins Job
1. Create a new job using the New Item link
2. Enter the name of the Jenkns job
3. Select Free Style project
4. Give the path of your project. If it is managed by Git, go to Source Code Management under General Tab and select Git radio button and pass the URL. If it is in your local, select 'use Custom workspace' under General tab and provide the path of your local
5. Configure Build steps. You can choose 'Execute Shell' on MAC or 'Execute Windows' if you are on windows machine. Then provide command  navigating to directory where tests first as so, for example

```
cd tests
robot --variable browser:Firefox --include SMOKE  testdemo1.robot

```
6. Save the job
7. Build the job
8. You can review the report locally
9.  You can further extend and parameterize the browser and the tags also through Jenkins, by checking the box 'This project is parameterized' in the General tab.
10. Add parameter and enter any parameter name (i.e., browser) and (i.e., tags) and the choices (i.e., Chrome, Firefox, IE) and (i.e., SMOKE, REGRESSION). These configurations now get stored. 
11. Now modify build script to use parameter
```
cd tests
robot --variable browser:"$browser" --include "$tags"  testdemo1.robot

```
12. Build with parameters and select the parameter on which you want to run against

## Creating Dictionaries
In order to prepare for API testing, you must first understand the concept of key value pairs using dictionaries. Very similar to hashmaps, Dictionaries are used to store data values in key value pairs. It is also a collection which is ordered, changeable, and does not allow for duplicates. The result will be in JSON format.  More information can be found [here](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Create%20Dictionary) and collections [here](https://robotframework.org/robotframework/latest/libraries/Collections.html). 

```
*** Settings ***
Library     Collections

*** Test Cases ***
Play around with dictionaries
    &{data}=  Create Dictionary   name=rahulshetty    course=robot    website=rahulshettyacademy.com
    log ${data}
    Dictionary Should Contain Key    ${data}   name
```
### Retrieving Values from Dictionaries
There are multiple ways.

#### Logging 

```
*** Settings ***
Library     Collections

*** Test Cases ***
Play around with dictionaries
    &{data}=  Create Dictionary   name=rahulshetty    course=robot    website=rahulshettyacademy.com
    log ${data}[name]

 ```

 #### Get from Dictionary Keyword In Collections Library

```
*** Settings ***
Library     Collections

*** Test Cases ***
Play around with dictionaries
    &{data}=  Create Dictionary   name=rahulshetty    course=robot    website=rahulshettyacademy.com
    ${example_name} =  Get From Dictionary  ${data}  name
    log  ${example_name}

 ```

## Creating Lists
More information can be found [here](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Create%20List)

```

*** Test Cases ***
Play around with dictionaries
    ${data}=  Create List   1    2    3
    log ${data}

```


## API Testing
To  perform any sort of API testing, you will need to use a library called 'RequestsLibrary.'  More info can be found [here](https://github.com/MarketSquare/robotframework-requests#readme). First install it either through insalling it using Python Interpreter in preferences or settings. OR throgh command line. 

```
pip install robotframework-requests
```

Perform the alternative if on MAC

```
pip3 install robotframework-requests
```
More information on the library [here](https://docs.robotframework.org/docs/different_libraries/requests). 
### POST
```
*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BaseURI}  https://rahulshettyacademy.com


*** Test Cases ***
Add Book to Library Database
    &{req_body}=  Create Dictionary    name=RobotFramework    isbn=98433  aisle=32433  author=antwan
    POST    ${BaseURI}/Library/Addbook.php  json=${req_body}    expected_status=200


```

#### Retrieving Data

API responses return the status code. And The response JSON returns a data type of dictionary.
```
*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BaseURI}  https://rahulshettyacademy.com


*** Test Cases ***
Add Book to Library Database
    &{req_body}=  Create Dictionary    name=RobotFramework    isbn=98433  aisle=32433  author=antwan
    ${response}=  POST    ${BaseURI}/Library/Addbook.php  json=${req_body}    expected_status=200
    log   ${response.json()}
    Dictionary Should Contain Key    ${response.json()}  ID
    ${book_id}=  Get From Dictionary    ${response.json()}  ID
    log   ${book_id}
    Should Be Equal As Strings    Book Already Exists  ${response.json()}[Msg]
    Status Should Be    200  ${response}


```

### GET

```
*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BaseURI}  https://rahulshettyacademy.com
${book_id}
${book_name}  Terrence Crawford 2

*** Test Cases ***
Add Book to Library Database
    &{req_body}=  Create Dictionary    name=${book_name}    isbn=90411  aisle=30531  author=antwan
    ${response}=  POST    ${BaseURI}/Library/Addbook.php  json=${req_body}    expected_status=200
    log   ${response.json()}
    Dictionary Should Contain Key    ${response.json()}  ID
    ${book_id}=  Get From Dictionary    ${response.json()}  ID
    Set Global Variable    ${book_id}
    log   ${book_id}
    Should Be Equal As Strings    successfully added  ${response.json()}[Msg]
    Status Should Be    200  ${response}

Get Book Details
    ${response}=  GET    ${BaseURI}/Library/GetBook.php  params=ID=${book_id}  expected_status=200
    # The response here will be a dictionary in a List so you will have to retrieve the contents
    # like you do a list by accessing the index
    # [{'book_name': 'Jordan', 'isbn': 93922, 'aisle': 32455', 'author': 'antwan'}]
    log  ${response.json()}
    Should Be Equal As Strings    ${book_name}  ${response.json()}[0][book_name]
```

NOTE: You will need the entire file or set of test cases together.  

### DELETE

# Other References
 - [User Guide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html) or [here](https://github.com/robotframework/QuickStartGuide/blob/master/QuickStart.rst)
 - [Cheat Sheet](https://robocorp.com/docs/languages-and-frameworks/robot-framework/cheat-sheet)
 - [Intro to Robot Framework]()(https://yusufsariyildiz35.medium.com/introduction-to-robot-framework-and-selenium-for-test-automation-6d983b0f751c)
 - [Intro to Robot Framework from Test Automation University](https://testautomationu.applitools.com/robot-framework-refresh/)
 - [Robot Framework Tutorial](https://www.tutorialspoint.com/robot_framework/index.htm)
 - [Parallel Execution](https://docs.robotframework.org/docs/parallel)
 = [Test Suites](https://www.neovasolutions.com/2022/08/30/how-to-run-a-test-suite-in-robot-framework/)
 - [Robot Framework tests in GitLab]()
 - [Robot Framework tests in Jenkins]()
 - [Robot Framework Environment variables](https://robocorp.com/docs/development-guide/variables-and-secrets/configuring-robots-using-environment-variables)
 - [Robot Framework and Control APIs](https://robocorp.com/docs/control-room/apis-and-webhooks)
 - [Handling waits in Robot Framework](https://www.neovasolutions.com/2022/08/12/how-to-handle-waits-implicit-and-explicit/)
 - [Robot Framework tests in Azure]()
 - [Robot Framework tests in GitHub Actions]()
 - [Robot Frameworl Udemy Course](https://www.udemy.com/course/complete-guide-to-robot-framework-beginner-to-expert/)
 - [Python Requests Tutorial](https://www.youtube.com/watch?v=tb8gHvYlCFs)
 - [BDD Cucumber for Python](https://www.youtube.com/watch?v=7YTzvkmz4sE)
 - [Writing Tests in Pycharm](https://medium.com/swlh/robot-framework-the-basics-dfeadc025bea)
 - [Cheat Sheet](https://robocorp.com/docs/languages-and-frameworks/robot-framework/cheat-sheet) or [here](https://dev.to/rubnvaz/robot-framework-cheat-sheet-3b17)
 - [Robot Framework API Testing udemy](https://www.udemy.com/course/robot-framework-api-testing-with-json-schema-basic-course/?utm_source=adwords&utm_medium=udemyads&utm_campaign=LongTail_la.EN_cc.US&utm_content=deal4584&utm_term=_._ag_81829991707_._ad_532193666393_._kw__._de_c_._dm__._pl__._ti_dsa-1007766171312_._li_1015222_._pd__._&matchtype=&gclid=Cj0KCQjwz8emBhDrARIsANNJjS4sussHV7RJT6dAusZQJDXfwLglsRXu9W9RrWrsehZZ2xQdKMAX1CsaAqfuEALw_wcB)
 - [Robot Framework API testing Part 1](https://fmgprado.medium.com/api-testing-with-robot-framework-part-1-997a3cb5bffe)
  - [Robot Framework API testing Part 2](https://fmgprado.medium.com/api-testing-with-robot-framework-part-2-a1b80eae4208)
  - [Robot Framework API Testing Youtube Tutorial Playlist](https://www.youtube.com/playlist?list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ)
  - [Cucumber for Robot Framework](https://pypi.org/project/gherkin2robotframework/)
  - [WebDriver Manager Implementation](https://haibgit.blogspot.com/2021/06/how-to-use-webdrivermanager-in.html)
  - [Requests Library in Robot Framework](https://supanidaplangmanothirakul.medium.com/robot-framework-with-requestslibrary-1456295c8175)
   - [GitLab and Robot Framework](https://pradappandiyan.medium.com/running-a-robot-framework-test-on-gitlab-and-deploying-the-report-db2ea18cc082)
 - [Robot Framework Gitlab Pipeline](https://medium.com/@fx_s/gitlab-ci-cd-and-robot-framework-d0ffbd2a76da)
 - [Robot Framework Tests in GitLab CI/CD](https://qaautomation.expert/2023/06/06/run-robot-framework-tests-in-gitlab-ci-cd/#step-9-run-the-tests-in-the-gitlab-pipeline)
 - [Robot Framework Gitlab CI/CD example](https://github.com/robotframework/ci-cd-examples/blob/main/.gitlab-ci.yml)
