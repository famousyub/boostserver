# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/user/Bureau/medshopp/webcpp/myapi1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Bureau/medshopp/webcpp/myapi1/src/build

# Include any dependencies generated for this target.
include server/src/infrastructure/CMakeFiles/libidgenerator.dir/depend.make

# Include the progress variables for this target.
include server/src/infrastructure/CMakeFiles/libidgenerator.dir/progress.make

# Include the compile flags for this target's objects.
include server/src/infrastructure/CMakeFiles/libidgenerator.dir/flags.make

server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o: server/src/infrastructure/CMakeFiles/libidgenerator.dir/flags.make
server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o: ../server/src/infrastructure/IncrementalConcurrentIdGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Bureau/medshopp/webcpp/myapi1/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o"
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o -c /home/user/Bureau/medshopp/webcpp/myapi1/src/server/src/infrastructure/IncrementalConcurrentIdGenerator.cpp

server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.i"
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/Bureau/medshopp/webcpp/myapi1/src/server/src/infrastructure/IncrementalConcurrentIdGenerator.cpp > CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.i

server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.s"
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/Bureau/medshopp/webcpp/myapi1/src/server/src/infrastructure/IncrementalConcurrentIdGenerator.cpp -o CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.s

# Object files for target libidgenerator
libidgenerator_OBJECTS = \
"CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o"

# External object files for target libidgenerator
libidgenerator_EXTERNAL_OBJECTS =

server/src/infrastructure/liblibidgenerator.a: server/src/infrastructure/CMakeFiles/libidgenerator.dir/IncrementalConcurrentIdGenerator.cpp.o
server/src/infrastructure/liblibidgenerator.a: server/src/infrastructure/CMakeFiles/libidgenerator.dir/build.make
server/src/infrastructure/liblibidgenerator.a: server/src/infrastructure/CMakeFiles/libidgenerator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Bureau/medshopp/webcpp/myapi1/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibidgenerator.a"
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && $(CMAKE_COMMAND) -P CMakeFiles/libidgenerator.dir/cmake_clean_target.cmake
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libidgenerator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/src/infrastructure/CMakeFiles/libidgenerator.dir/build: server/src/infrastructure/liblibidgenerator.a

.PHONY : server/src/infrastructure/CMakeFiles/libidgenerator.dir/build

server/src/infrastructure/CMakeFiles/libidgenerator.dir/clean:
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure && $(CMAKE_COMMAND) -P CMakeFiles/libidgenerator.dir/cmake_clean.cmake
.PHONY : server/src/infrastructure/CMakeFiles/libidgenerator.dir/clean

server/src/infrastructure/CMakeFiles/libidgenerator.dir/depend:
	cd /home/user/Bureau/medshopp/webcpp/myapi1/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Bureau/medshopp/webcpp/myapi1/src /home/user/Bureau/medshopp/webcpp/myapi1/src/server/src/infrastructure /home/user/Bureau/medshopp/webcpp/myapi1/src/build /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure /home/user/Bureau/medshopp/webcpp/myapi1/src/build/server/src/infrastructure/CMakeFiles/libidgenerator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/src/infrastructure/CMakeFiles/libidgenerator.dir/depend
