# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andronovdima/Desktop/serv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andronovdima/Desktop/serv/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/serv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serv.dir/flags.make

CMakeFiles/serv.dir/main.cpp.o: CMakeFiles/serv.dir/flags.make
CMakeFiles/serv.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/serv.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serv.dir/main.cpp.o -c /Users/andronovdima/Desktop/serv/main.cpp

CMakeFiles/serv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serv.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andronovdima/Desktop/serv/main.cpp > CMakeFiles/serv.dir/main.cpp.i

CMakeFiles/serv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serv.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andronovdima/Desktop/serv/main.cpp -o CMakeFiles/serv.dir/main.cpp.s

CMakeFiles/serv.dir/parser.cpp.o: CMakeFiles/serv.dir/flags.make
CMakeFiles/serv.dir/parser.cpp.o: ../parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/serv.dir/parser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serv.dir/parser.cpp.o -c /Users/andronovdima/Desktop/serv/parser.cpp

CMakeFiles/serv.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serv.dir/parser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andronovdima/Desktop/serv/parser.cpp > CMakeFiles/serv.dir/parser.cpp.i

CMakeFiles/serv.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serv.dir/parser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andronovdima/Desktop/serv/parser.cpp -o CMakeFiles/serv.dir/parser.cpp.s

CMakeFiles/serv.dir/server.cpp.o: CMakeFiles/serv.dir/flags.make
CMakeFiles/serv.dir/server.cpp.o: ../server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/serv.dir/server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serv.dir/server.cpp.o -c /Users/andronovdima/Desktop/serv/server.cpp

CMakeFiles/serv.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serv.dir/server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andronovdima/Desktop/serv/server.cpp > CMakeFiles/serv.dir/server.cpp.i

CMakeFiles/serv.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serv.dir/server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andronovdima/Desktop/serv/server.cpp -o CMakeFiles/serv.dir/server.cpp.s

CMakeFiles/serv.dir/instance.cpp.o: CMakeFiles/serv.dir/flags.make
CMakeFiles/serv.dir/instance.cpp.o: ../instance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/serv.dir/instance.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serv.dir/instance.cpp.o -c /Users/andronovdima/Desktop/serv/instance.cpp

CMakeFiles/serv.dir/instance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serv.dir/instance.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andronovdima/Desktop/serv/instance.cpp > CMakeFiles/serv.dir/instance.cpp.i

CMakeFiles/serv.dir/instance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serv.dir/instance.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andronovdima/Desktop/serv/instance.cpp -o CMakeFiles/serv.dir/instance.cpp.s

# Object files for target serv
serv_OBJECTS = \
"CMakeFiles/serv.dir/main.cpp.o" \
"CMakeFiles/serv.dir/parser.cpp.o" \
"CMakeFiles/serv.dir/server.cpp.o" \
"CMakeFiles/serv.dir/instance.cpp.o"

# External object files for target serv
serv_EXTERNAL_OBJECTS =

serv: CMakeFiles/serv.dir/main.cpp.o
serv: CMakeFiles/serv.dir/parser.cpp.o
serv: CMakeFiles/serv.dir/server.cpp.o
serv: CMakeFiles/serv.dir/instance.cpp.o
serv: CMakeFiles/serv.dir/build.make
serv: CMakeFiles/serv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable serv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serv.dir/build: serv

.PHONY : CMakeFiles/serv.dir/build

CMakeFiles/serv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serv.dir/clean

CMakeFiles/serv.dir/depend:
	cd /Users/andronovdima/Desktop/serv/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andronovdima/Desktop/serv /Users/andronovdima/Desktop/serv /Users/andronovdima/Desktop/serv/cmake-build-debug /Users/andronovdima/Desktop/serv/cmake-build-debug /Users/andronovdima/Desktop/serv/cmake-build-debug/CMakeFiles/serv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serv.dir/depend
