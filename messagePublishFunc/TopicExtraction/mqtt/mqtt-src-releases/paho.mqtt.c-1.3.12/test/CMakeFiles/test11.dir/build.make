# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/cmake/1276/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1276/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12

# Include any dependencies generated for this target.
include test/CMakeFiles/test11.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test11.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test11.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test11.dir/flags.make

test/CMakeFiles/test11.dir/test11.c.o: test/CMakeFiles/test11.dir/flags.make
test/CMakeFiles/test11.dir/test11.c.o: test/test11.c
test/CMakeFiles/test11.dir/test11.c.o: test/CMakeFiles/test11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/test11.dir/test11.c.o"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/test11.dir/test11.c.o -MF CMakeFiles/test11.dir/test11.c.o.d -o CMakeFiles/test11.dir/test11.c.o -c /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test11.c

test/CMakeFiles/test11.dir/test11.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test11.dir/test11.c.i"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test11.c > CMakeFiles/test11.dir/test11.c.i

test/CMakeFiles/test11.dir/test11.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test11.dir/test11.c.s"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test11.c -o CMakeFiles/test11.dir/test11.c.s

# Object files for target test11
test11_OBJECTS = \
"CMakeFiles/test11.dir/test11.c.o"

# External object files for target test11
test11_EXTERNAL_OBJECTS =

test/test11: test/CMakeFiles/test11.dir/test11.c.o
test/test11: test/CMakeFiles/test11.dir/build.make
test/test11: src/libpaho-mqtt3a.so.1.3.12
test/test11: test/CMakeFiles/test11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test11"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test11.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test11.dir/build: test/test11
.PHONY : test/CMakeFiles/test11.dir/build

test/CMakeFiles/test11.dir/clean:
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && $(CMAKE_COMMAND) -P CMakeFiles/test11.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test11.dir/clean

test/CMakeFiles/test11.dir/depend:
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/CMakeFiles/test11.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test11.dir/depend

