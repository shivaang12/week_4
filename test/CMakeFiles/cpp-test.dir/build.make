# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/royneal/eclipse-workspace/Week4/week_4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/royneal/eclipse-workspace/Week4/week_4

# Include any dependencies generated for this target.
include test/CMakeFiles/cpp-test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/cpp-test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/cpp-test.dir/flags.make

test/CMakeFiles/cpp-test.dir/main.cpp.o: test/CMakeFiles/cpp-test.dir/flags.make
test/CMakeFiles/cpp-test.dir/main.cpp.o: test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/royneal/eclipse-workspace/Week4/week_4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/cpp-test.dir/main.cpp.o"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-test.dir/main.cpp.o -c /home/royneal/eclipse-workspace/Week4/week_4/test/main.cpp

test/CMakeFiles/cpp-test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-test.dir/main.cpp.i"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/royneal/eclipse-workspace/Week4/week_4/test/main.cpp > CMakeFiles/cpp-test.dir/main.cpp.i

test/CMakeFiles/cpp-test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-test.dir/main.cpp.s"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/royneal/eclipse-workspace/Week4/week_4/test/main.cpp -o CMakeFiles/cpp-test.dir/main.cpp.s

test/CMakeFiles/cpp-test.dir/main.cpp.o.requires:

.PHONY : test/CMakeFiles/cpp-test.dir/main.cpp.o.requires

test/CMakeFiles/cpp-test.dir/main.cpp.o.provides: test/CMakeFiles/cpp-test.dir/main.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/cpp-test.dir/build.make test/CMakeFiles/cpp-test.dir/main.cpp.o.provides.build
.PHONY : test/CMakeFiles/cpp-test.dir/main.cpp.o.provides

test/CMakeFiles/cpp-test.dir/main.cpp.o.provides.build: test/CMakeFiles/cpp-test.dir/main.cpp.o


test/CMakeFiles/cpp-test.dir/test.cpp.o: test/CMakeFiles/cpp-test.dir/flags.make
test/CMakeFiles/cpp-test.dir/test.cpp.o: test/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/royneal/eclipse-workspace/Week4/week_4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/cpp-test.dir/test.cpp.o"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-test.dir/test.cpp.o -c /home/royneal/eclipse-workspace/Week4/week_4/test/test.cpp

test/CMakeFiles/cpp-test.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-test.dir/test.cpp.i"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/royneal/eclipse-workspace/Week4/week_4/test/test.cpp > CMakeFiles/cpp-test.dir/test.cpp.i

test/CMakeFiles/cpp-test.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-test.dir/test.cpp.s"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/royneal/eclipse-workspace/Week4/week_4/test/test.cpp -o CMakeFiles/cpp-test.dir/test.cpp.s

test/CMakeFiles/cpp-test.dir/test.cpp.o.requires:

.PHONY : test/CMakeFiles/cpp-test.dir/test.cpp.o.requires

test/CMakeFiles/cpp-test.dir/test.cpp.o.provides: test/CMakeFiles/cpp-test.dir/test.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/cpp-test.dir/build.make test/CMakeFiles/cpp-test.dir/test.cpp.o.provides.build
.PHONY : test/CMakeFiles/cpp-test.dir/test.cpp.o.provides

test/CMakeFiles/cpp-test.dir/test.cpp.o.provides.build: test/CMakeFiles/cpp-test.dir/test.cpp.o


test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o: test/CMakeFiles/cpp-test.dir/flags.make
test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o: app/pidController.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/royneal/eclipse-workspace/Week4/week_4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o -c /home/royneal/eclipse-workspace/Week4/week_4/app/pidController.cpp

test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-test.dir/__/app/pidController.cpp.i"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/royneal/eclipse-workspace/Week4/week_4/app/pidController.cpp > CMakeFiles/cpp-test.dir/__/app/pidController.cpp.i

test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-test.dir/__/app/pidController.cpp.s"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && /usr/bin/c++ -std=c++14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/royneal/eclipse-workspace/Week4/week_4/app/pidController.cpp -o CMakeFiles/cpp-test.dir/__/app/pidController.cpp.s

test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.requires:

.PHONY : test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.requires

test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.provides: test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/cpp-test.dir/build.make test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.provides.build
.PHONY : test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.provides

test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.provides.build: test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o


# Object files for target cpp-test
cpp__test_OBJECTS = \
"CMakeFiles/cpp-test.dir/main.cpp.o" \
"CMakeFiles/cpp-test.dir/test.cpp.o" \
"CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o"

# External object files for target cpp-test
cpp__test_EXTERNAL_OBJECTS =

test/cpp-test: test/CMakeFiles/cpp-test.dir/main.cpp.o
test/cpp-test: test/CMakeFiles/cpp-test.dir/test.cpp.o
test/cpp-test: test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o
test/cpp-test: test/CMakeFiles/cpp-test.dir/build.make
test/cpp-test: vendor/googletest/googletest/libgtest.a
test/cpp-test: test/CMakeFiles/cpp-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/royneal/eclipse-workspace/Week4/week_4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cpp-test"
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/cpp-test.dir/build: test/cpp-test

.PHONY : test/CMakeFiles/cpp-test.dir/build

test/CMakeFiles/cpp-test.dir/requires: test/CMakeFiles/cpp-test.dir/main.cpp.o.requires
test/CMakeFiles/cpp-test.dir/requires: test/CMakeFiles/cpp-test.dir/test.cpp.o.requires
test/CMakeFiles/cpp-test.dir/requires: test/CMakeFiles/cpp-test.dir/__/app/pidController.cpp.o.requires

.PHONY : test/CMakeFiles/cpp-test.dir/requires

test/CMakeFiles/cpp-test.dir/clean:
	cd /home/royneal/eclipse-workspace/Week4/week_4/test && $(CMAKE_COMMAND) -P CMakeFiles/cpp-test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/cpp-test.dir/clean

test/CMakeFiles/cpp-test.dir/depend:
	cd /home/royneal/eclipse-workspace/Week4/week_4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/royneal/eclipse-workspace/Week4/week_4 /home/royneal/eclipse-workspace/Week4/week_4/test /home/royneal/eclipse-workspace/Week4/week_4 /home/royneal/eclipse-workspace/Week4/week_4/test /home/royneal/eclipse-workspace/Week4/week_4/test/CMakeFiles/cpp-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/cpp-test.dir/depend

