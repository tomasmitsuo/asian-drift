# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/kenji/github/asian-drift/trabalho_fcg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kenji/github/asian-drift/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cpp.o: /home/kenji/github/asian-drift/trabalho_fcg/src/main.cpp
CMakeFiles/main.dir/src/main.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/main.cpp.o -MF CMakeFiles/main.dir/src/main.cpp.o.d -o CMakeFiles/main.dir/src/main.cpp.o -c /home/kenji/github/asian-drift/trabalho_fcg/src/main.cpp

CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kenji/github/asian-drift/trabalho_fcg/src/main.cpp > CMakeFiles/main.dir/src/main.cpp.i

CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kenji/github/asian-drift/trabalho_fcg/src/main.cpp -o CMakeFiles/main.dir/src/main.cpp.s

CMakeFiles/main.dir/src/textrendering.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/textrendering.cpp.o: /home/kenji/github/asian-drift/trabalho_fcg/src/textrendering.cpp
CMakeFiles/main.dir/src/textrendering.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/textrendering.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/textrendering.cpp.o -MF CMakeFiles/main.dir/src/textrendering.cpp.o.d -o CMakeFiles/main.dir/src/textrendering.cpp.o -c /home/kenji/github/asian-drift/trabalho_fcg/src/textrendering.cpp

CMakeFiles/main.dir/src/textrendering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/textrendering.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kenji/github/asian-drift/trabalho_fcg/src/textrendering.cpp > CMakeFiles/main.dir/src/textrendering.cpp.i

CMakeFiles/main.dir/src/textrendering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/textrendering.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kenji/github/asian-drift/trabalho_fcg/src/textrendering.cpp -o CMakeFiles/main.dir/src/textrendering.cpp.s

CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o: /home/kenji/github/asian-drift/trabalho_fcg/src/tiny_obj_loader.cpp
CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o -MF CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o.d -o CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o -c /home/kenji/github/asian-drift/trabalho_fcg/src/tiny_obj_loader.cpp

CMakeFiles/main.dir/src/tiny_obj_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/tiny_obj_loader.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kenji/github/asian-drift/trabalho_fcg/src/tiny_obj_loader.cpp > CMakeFiles/main.dir/src/tiny_obj_loader.cpp.i

CMakeFiles/main.dir/src/tiny_obj_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/tiny_obj_loader.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kenji/github/asian-drift/trabalho_fcg/src/tiny_obj_loader.cpp -o CMakeFiles/main.dir/src/tiny_obj_loader.cpp.s

CMakeFiles/main.dir/src/stb_image.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/stb_image.cpp.o: /home/kenji/github/asian-drift/trabalho_fcg/src/stb_image.cpp
CMakeFiles/main.dir/src/stb_image.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/stb_image.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/stb_image.cpp.o -MF CMakeFiles/main.dir/src/stb_image.cpp.o.d -o CMakeFiles/main.dir/src/stb_image.cpp.o -c /home/kenji/github/asian-drift/trabalho_fcg/src/stb_image.cpp

CMakeFiles/main.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/stb_image.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kenji/github/asian-drift/trabalho_fcg/src/stb_image.cpp > CMakeFiles/main.dir/src/stb_image.cpp.i

CMakeFiles/main.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/stb_image.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kenji/github/asian-drift/trabalho_fcg/src/stb_image.cpp -o CMakeFiles/main.dir/src/stb_image.cpp.s

CMakeFiles/main.dir/src/glad.c.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/glad.c.o: /home/kenji/github/asian-drift/trabalho_fcg/src/glad.c
CMakeFiles/main.dir/src/glad.c.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/main.dir/src/glad.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/main.dir/src/glad.c.o -MF CMakeFiles/main.dir/src/glad.c.o.d -o CMakeFiles/main.dir/src/glad.c.o -c /home/kenji/github/asian-drift/trabalho_fcg/src/glad.c

CMakeFiles/main.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/src/glad.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kenji/github/asian-drift/trabalho_fcg/src/glad.c > CMakeFiles/main.dir/src/glad.c.i

CMakeFiles/main.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/src/glad.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kenji/github/asian-drift/trabalho_fcg/src/glad.c -o CMakeFiles/main.dir/src/glad.c.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cpp.o" \
"CMakeFiles/main.dir/src/textrendering.cpp.o" \
"CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o" \
"CMakeFiles/main.dir/src/stb_image.cpp.o" \
"CMakeFiles/main.dir/src/glad.c.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/src/main.cpp.o
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/src/textrendering.cpp.o
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/src/tiny_obj_loader.cpp.o
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/src/stb_image.cpp.o
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/src/glad.c.o
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/build.make
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libm.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /home/kenji/github/asian-drift/trabalho_fcg/lib-linux/libglfw3.a
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libGL.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libX11.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libXext.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libXrandr.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libXcursor.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libXinerama.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
/home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kenji/github/asian-drift/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable /home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: /home/kenji/github/asian-drift/trabalho_fcg/bin/Linux/main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/kenji/github/asian-drift/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kenji/github/asian-drift/trabalho_fcg /home/kenji/github/asian-drift/trabalho_fcg /home/kenji/github/asian-drift/build /home/kenji/github/asian-drift/build /home/kenji/github/asian-drift/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

