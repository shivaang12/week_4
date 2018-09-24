# C++ Boilerplate
[![Build Status](https://travis-ci.org/shivaang12/week_4.svg?branch=master)](https://travis-ci.org/shivaang12/week_4)
[![Coverage Status](https://coveralls.io/repos/github/shivaang12/week_4/badge.svg?branch=master)](https://coveralls.io/github/shivaang12/week_4?branch=master)
---

## TODO
1. Implement compute_step method for PID Controller.
2. Implement compute method which calls compute_step method and update state.

## Roles

Shivang - Driver
Royneel - Navigator

Part 2: Robert Dumont (Solo)

## Discussion Comments
The hardest part of getting the test to pass had more to do with Control Theory then programming.  The PID constants as originally given were unstable for the given test case.  This made it impossible to pass the test case with a valid implementation that did not exploit knowledge of the limited test cases.

Additionally, nowhere in the UML diagrams of the documentation for the class nor in the header file was it mentioned that certain methods were expected to throw exceptions for invalid input.  The only way to determine this was by looking at the test case failure.  

The default constructor in the initial design seems useless as it creates a controller with all zero constants and does not provide any setter functions to modify the state of the class. It's unclear what the purpose of the output clipping is supposed to serve as it is independent of the PID calculation. 

One change I would make to the original design would be to make the time delta configurable so the PIDController can be used a different rates or even dynamic rates if the sampling is not periodic.  Additional tests that could be added would a test for a large change in the set_point value as well as a small change to complement the existing test that have more moderate changes or no change.  

The biggest change I would make to the test cases is to choose a different set of parameters that creates a stable control loop and reduce the accpetable range of the result.  Currently it accepts such a wide range the set point may not be hit and the test will still pass

## Overview

Simple starter C++ project with:

- cmake
- googletest

## Standard install via command-line
```
git clone --recursive https://github.com/dpiet/cpp-boilerplate
cd <path to repository>
mkdir build
cd build
cmake ..
make
Run tests: ./test/cpp-test
Run program: ./app/shell-app
```

## Building for code coverage (for assignments beginning in Week 4)
```
sudo apt-get install lcov
cmake -D COVERAGE=ON -D CMAKE_BUILD_TYPE=Debug ../
make
make code_coverage
```
This generates a index.html page in the build/coverage sub-directory that can be viewed locally in a web browser.

## Working with Eclipse IDE ##

## Installation

In your Eclipse workspace directory (or create a new one), checkout the repo (and submodules)
```
mkdir -p ~/workspace
cd ~/workspace
git clone --recursive https://github.com/dpiet/cpp-boilerplate
```

In your work directory, use cmake to create an Eclipse project for an [out-of-source build] of cpp-boilerplate

```
cd ~/workspace
mkdir -p boilerplate-eclipse
cd boilerplate-eclipse
cmake -G "Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug -D CMAKE_ECLIPSE_VERSION=4.7.0 -D CMAKE_CXX_COMPILER_ARG1=-std=c++14 ../cpp-boilerplate/
```

## Import

Open Eclipse, go to File -> Import -> General -> Existing Projects into Workspace -> 
Select "boilerplate-eclipse" directory created previously as root directory -> Finish

# Edit

Source files may be edited under the "[Source Directory]" label in the Project Explorer.


## Build

To build the project, in Eclipse, unfold boilerplate-eclipse project in Project Explorer,
unfold Build Targets, double click on "all" to build all projects.

## Run

1. In Eclipse, right click on the boilerplate-eclipse in Project Explorer,
select Run As -> Local C/C++ Application

2. Choose the binaries to run (e.g. shell-app, cpp-test for unit testing)


## Debug


1. Set breakpoint in source file (i.e. double click in the left margin on the line you want 
the program to break).

2. In Eclipse, right click on the boilerplate-eclipse in Project Explorer, select Debug As -> 
Local C/C++ Application, choose the binaries to run (e.g. shell-app).

3. If prompt to "Confirm Perspective Switch", select yes.

4. Program will break at the breakpoint you set.

5. Press Step Into (F5), Step Over (F6), Step Return (F7) to step/debug your program.

6. Right click on the variable in editor to add watch expression to watch the variable in 
debugger window.

7. Press Terminate icon to terminate debugging and press C/C++ icon to switch back to C/C++ 
perspetive view (or Windows->Perspective->Open Perspective->C/C++).


## Plugins

- CppChEclipse

    To install and run cppcheck in Eclipse

    1. In Eclipse, go to Window -> Preferences -> C/C++ -> cppcheclipse.
    Set cppcheck binary path to "/usr/bin/cppcheck".

    2. To run CPPCheck on a project, right click on the project name in the Project Explorer 
    and choose cppcheck -> Run cppcheck.


- Google C++ Sytle

    To include and use Google C++ Style formatter in Eclipse

    1. In Eclipse, go to Window -> Preferences -> C/C++ -> Code Style -> Formatter. 
    Import [eclipse-cpp-google-style][reference-id-for-eclipse-cpp-google-style] and apply.

    2. To use Google C++ style formatter, right click on the source code or folder in 
    Project Explorer and choose Source -> Format

[reference-id-for-eclipse-cpp-google-style]: https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-cpp-google-style.xml

- Git

    It is possible to manage version control through Eclipse and the git plugin, but it typically requires creating another project. If you're interested in this, try it out yourself and contact me on Canvas.
