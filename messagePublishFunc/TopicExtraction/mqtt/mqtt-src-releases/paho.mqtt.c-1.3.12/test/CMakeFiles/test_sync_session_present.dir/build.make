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
include test/CMakeFiles/test_sync_session_present.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_sync_session_present.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_sync_session_present.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_sync_session_present.dir/flags.make

test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o: test/CMakeFiles/test_sync_session_present.dir/flags.make
test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o: test/test_sync_session_present.c
test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o: test/CMakeFiles/test_sync_session_present.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o -MF CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o.d -o CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o -c /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test_sync_session_present.c

test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.i"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test_sync_session_present.c > CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.i

test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.s"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/test_sync_session_present.c -o CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.s

# Object files for target test_sync_session_present
test_sync_session_present_OBJECTS = \
"CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o"

# External object files for target test_sync_session_present
test_sync_session_present_EXTERNAL_OBJECTS =

test/test_sync_session_present: test/CMakeFiles/test_sync_session_present.dir/test_sync_session_present.c.o
test/test_sync_session_present: test/CMakeFiles/test_sync_session_present.dir/build.make
test/test_sync_session_present: src/libpaho-mqtt3c.so.1.3.12
test/test_sync_session_present: test/CMakeFiles/test_sync_session_present.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_sync_session_present"
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_sync_session_present.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_sync_session_present.dir/build: test/test_sync_session_present
.PHONY : test/CMakeFiles/test_sync_session_present.dir/build

test/CMakeFiles/test_sync_session_present.dir/clean:
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test && $(CMAKE_COMMAND) -P CMakeFiles/test_sync_session_present.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_sync_session_present.dir/clean

test/CMakeFiles/test_sync_session_present.dir/depend:
	cd /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12 /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/CMakeFiles/test_sync_session_present.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_sync_session_present.dir/depend

