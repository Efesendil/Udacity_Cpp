# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/efesendil/Desktop/CppND-Capstone-Snake-Game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/efesendil/Desktop/CppND-Capstone-Snake-Game/build

# Include any dependencies generated for this target.
include CMakeFiles/SnakeGame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SnakeGame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SnakeGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SnakeGame.dir/flags.make

CMakeFiles/SnakeGame.dir/src/main.cpp.o: CMakeFiles/SnakeGame.dir/flags.make
CMakeFiles/SnakeGame.dir/src/main.cpp.o: /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/main.cpp
CMakeFiles/SnakeGame.dir/src/main.cpp.o: CMakeFiles/SnakeGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SnakeGame.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnakeGame.dir/src/main.cpp.o -MF CMakeFiles/SnakeGame.dir/src/main.cpp.o.d -o CMakeFiles/SnakeGame.dir/src/main.cpp.o -c /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/main.cpp

CMakeFiles/SnakeGame.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeGame.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/main.cpp > CMakeFiles/SnakeGame.dir/src/main.cpp.i

CMakeFiles/SnakeGame.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeGame.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/main.cpp -o CMakeFiles/SnakeGame.dir/src/main.cpp.s

CMakeFiles/SnakeGame.dir/src/game.cpp.o: CMakeFiles/SnakeGame.dir/flags.make
CMakeFiles/SnakeGame.dir/src/game.cpp.o: /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/game.cpp
CMakeFiles/SnakeGame.dir/src/game.cpp.o: CMakeFiles/SnakeGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SnakeGame.dir/src/game.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnakeGame.dir/src/game.cpp.o -MF CMakeFiles/SnakeGame.dir/src/game.cpp.o.d -o CMakeFiles/SnakeGame.dir/src/game.cpp.o -c /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/game.cpp

CMakeFiles/SnakeGame.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeGame.dir/src/game.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/game.cpp > CMakeFiles/SnakeGame.dir/src/game.cpp.i

CMakeFiles/SnakeGame.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeGame.dir/src/game.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/game.cpp -o CMakeFiles/SnakeGame.dir/src/game.cpp.s

CMakeFiles/SnakeGame.dir/src/controller.cpp.o: CMakeFiles/SnakeGame.dir/flags.make
CMakeFiles/SnakeGame.dir/src/controller.cpp.o: /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/controller.cpp
CMakeFiles/SnakeGame.dir/src/controller.cpp.o: CMakeFiles/SnakeGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SnakeGame.dir/src/controller.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnakeGame.dir/src/controller.cpp.o -MF CMakeFiles/SnakeGame.dir/src/controller.cpp.o.d -o CMakeFiles/SnakeGame.dir/src/controller.cpp.o -c /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/controller.cpp

CMakeFiles/SnakeGame.dir/src/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeGame.dir/src/controller.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/controller.cpp > CMakeFiles/SnakeGame.dir/src/controller.cpp.i

CMakeFiles/SnakeGame.dir/src/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeGame.dir/src/controller.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/controller.cpp -o CMakeFiles/SnakeGame.dir/src/controller.cpp.s

CMakeFiles/SnakeGame.dir/src/renderer.cpp.o: CMakeFiles/SnakeGame.dir/flags.make
CMakeFiles/SnakeGame.dir/src/renderer.cpp.o: /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/renderer.cpp
CMakeFiles/SnakeGame.dir/src/renderer.cpp.o: CMakeFiles/SnakeGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SnakeGame.dir/src/renderer.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnakeGame.dir/src/renderer.cpp.o -MF CMakeFiles/SnakeGame.dir/src/renderer.cpp.o.d -o CMakeFiles/SnakeGame.dir/src/renderer.cpp.o -c /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/renderer.cpp

CMakeFiles/SnakeGame.dir/src/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeGame.dir/src/renderer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/renderer.cpp > CMakeFiles/SnakeGame.dir/src/renderer.cpp.i

CMakeFiles/SnakeGame.dir/src/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeGame.dir/src/renderer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/renderer.cpp -o CMakeFiles/SnakeGame.dir/src/renderer.cpp.s

CMakeFiles/SnakeGame.dir/src/snake.cpp.o: CMakeFiles/SnakeGame.dir/flags.make
CMakeFiles/SnakeGame.dir/src/snake.cpp.o: /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/snake.cpp
CMakeFiles/SnakeGame.dir/src/snake.cpp.o: CMakeFiles/SnakeGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SnakeGame.dir/src/snake.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SnakeGame.dir/src/snake.cpp.o -MF CMakeFiles/SnakeGame.dir/src/snake.cpp.o.d -o CMakeFiles/SnakeGame.dir/src/snake.cpp.o -c /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/snake.cpp

CMakeFiles/SnakeGame.dir/src/snake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SnakeGame.dir/src/snake.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/snake.cpp > CMakeFiles/SnakeGame.dir/src/snake.cpp.i

CMakeFiles/SnakeGame.dir/src/snake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SnakeGame.dir/src/snake.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/efesendil/Desktop/CppND-Capstone-Snake-Game/src/snake.cpp -o CMakeFiles/SnakeGame.dir/src/snake.cpp.s

# Object files for target SnakeGame
SnakeGame_OBJECTS = \
"CMakeFiles/SnakeGame.dir/src/main.cpp.o" \
"CMakeFiles/SnakeGame.dir/src/game.cpp.o" \
"CMakeFiles/SnakeGame.dir/src/controller.cpp.o" \
"CMakeFiles/SnakeGame.dir/src/renderer.cpp.o" \
"CMakeFiles/SnakeGame.dir/src/snake.cpp.o"

# External object files for target SnakeGame
SnakeGame_EXTERNAL_OBJECTS =

SnakeGame: CMakeFiles/SnakeGame.dir/src/main.cpp.o
SnakeGame: CMakeFiles/SnakeGame.dir/src/game.cpp.o
SnakeGame: CMakeFiles/SnakeGame.dir/src/controller.cpp.o
SnakeGame: CMakeFiles/SnakeGame.dir/src/renderer.cpp.o
SnakeGame: CMakeFiles/SnakeGame.dir/src/snake.cpp.o
SnakeGame: CMakeFiles/SnakeGame.dir/build.make
SnakeGame: CMakeFiles/SnakeGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable SnakeGame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SnakeGame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SnakeGame.dir/build: SnakeGame
.PHONY : CMakeFiles/SnakeGame.dir/build

CMakeFiles/SnakeGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SnakeGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SnakeGame.dir/clean

CMakeFiles/SnakeGame.dir/depend:
	cd /home/efesendil/Desktop/CppND-Capstone-Snake-Game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/efesendil/Desktop/CppND-Capstone-Snake-Game /home/efesendil/Desktop/CppND-Capstone-Snake-Game /home/efesendil/Desktop/CppND-Capstone-Snake-Game/build /home/efesendil/Desktop/CppND-Capstone-Snake-Game/build /home/efesendil/Desktop/CppND-Capstone-Snake-Game/build/CMakeFiles/SnakeGame.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SnakeGame.dir/depend

