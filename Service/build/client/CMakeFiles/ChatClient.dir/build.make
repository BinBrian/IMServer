# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1186/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1186/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/brian/WorkSpace/IMServer/Service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brian/WorkSpace/IMServer/Service/build

# Include any dependencies generated for this target.
include client/CMakeFiles/ChatClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include client/CMakeFiles/ChatClient.dir/compiler_depend.make

# Include the progress variables for this target.
include client/CMakeFiles/ChatClient.dir/progress.make

# Include the compile flags for this target's objects.
include client/CMakeFiles/ChatClient.dir/flags.make

client/CMakeFiles/ChatClient.dir/main.cpp.o: client/CMakeFiles/ChatClient.dir/flags.make
client/CMakeFiles/ChatClient.dir/main.cpp.o: /home/brian/WorkSpace/IMServer/Service/client/main.cpp
client/CMakeFiles/ChatClient.dir/main.cpp.o: client/CMakeFiles/ChatClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/WorkSpace/IMServer/Service/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client/CMakeFiles/ChatClient.dir/main.cpp.o"
	cd /home/brian/WorkSpace/IMServer/Service/build/client && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT client/CMakeFiles/ChatClient.dir/main.cpp.o -MF CMakeFiles/ChatClient.dir/main.cpp.o.d -o CMakeFiles/ChatClient.dir/main.cpp.o -c /home/brian/WorkSpace/IMServer/Service/client/main.cpp

client/CMakeFiles/ChatClient.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatClient.dir/main.cpp.i"
	cd /home/brian/WorkSpace/IMServer/Service/build/client && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brian/WorkSpace/IMServer/Service/client/main.cpp > CMakeFiles/ChatClient.dir/main.cpp.i

client/CMakeFiles/ChatClient.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatClient.dir/main.cpp.s"
	cd /home/brian/WorkSpace/IMServer/Service/build/client && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brian/WorkSpace/IMServer/Service/client/main.cpp -o CMakeFiles/ChatClient.dir/main.cpp.s

# Object files for target ChatClient
ChatClient_OBJECTS = \
"CMakeFiles/ChatClient.dir/main.cpp.o"

# External object files for target ChatClient
ChatClient_EXTERNAL_OBJECTS =

/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: client/CMakeFiles/ChatClient.dir/main.cpp.o
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: client/CMakeFiles/ChatClient.dir/build.make
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: lib/liblibservice.a
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: lib/liblibmyredis.a
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: /usr/lib/x86_64-linux-gnu/libhiredis.so
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: lib/liblibmodel.a
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: /usr/lib/x86_64-linux-gnu/libmysqlclient.so
/home/brian/WorkSpace/IMServer/Service/bin/ChatClient: client/CMakeFiles/ChatClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brian/WorkSpace/IMServer/Service/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/brian/WorkSpace/IMServer/Service/bin/ChatClient"
	cd /home/brian/WorkSpace/IMServer/Service/build/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client/CMakeFiles/ChatClient.dir/build: /home/brian/WorkSpace/IMServer/Service/bin/ChatClient
.PHONY : client/CMakeFiles/ChatClient.dir/build

client/CMakeFiles/ChatClient.dir/clean:
	cd /home/brian/WorkSpace/IMServer/Service/build/client && $(CMAKE_COMMAND) -P CMakeFiles/ChatClient.dir/cmake_clean.cmake
.PHONY : client/CMakeFiles/ChatClient.dir/clean

client/CMakeFiles/ChatClient.dir/depend:
	cd /home/brian/WorkSpace/IMServer/Service/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/WorkSpace/IMServer/Service /home/brian/WorkSpace/IMServer/Service/client /home/brian/WorkSpace/IMServer/Service/build /home/brian/WorkSpace/IMServer/Service/build/client /home/brian/WorkSpace/IMServer/Service/build/client/CMakeFiles/ChatClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client/CMakeFiles/ChatClient.dir/depend
