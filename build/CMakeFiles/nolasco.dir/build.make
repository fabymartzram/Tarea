# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/cindy/Documentos/proyectos_opengl/t_materiales

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cindy/Documentos/proyectos_opengl/t_materiales/build

# Include any dependencies generated for this target.
include CMakeFiles/nolasco.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nolasco.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nolasco.dir/flags.make

CMakeFiles/nolasco.dir/esfera.cpp.o: CMakeFiles/nolasco.dir/flags.make
CMakeFiles/nolasco.dir/esfera.cpp.o: ../esfera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cindy/Documentos/proyectos_opengl/t_materiales/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/nolasco.dir/esfera.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nolasco.dir/esfera.cpp.o -c /home/cindy/Documentos/proyectos_opengl/t_materiales/esfera.cpp

CMakeFiles/nolasco.dir/esfera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nolasco.dir/esfera.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/cindy/Documentos/proyectos_opengl/t_materiales/esfera.cpp > CMakeFiles/nolasco.dir/esfera.cpp.i

CMakeFiles/nolasco.dir/esfera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nolasco.dir/esfera.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/cindy/Documentos/proyectos_opengl/t_materiales/esfera.cpp -o CMakeFiles/nolasco.dir/esfera.cpp.s

CMakeFiles/nolasco.dir/esfera.cpp.o.requires:
.PHONY : CMakeFiles/nolasco.dir/esfera.cpp.o.requires

CMakeFiles/nolasco.dir/esfera.cpp.o.provides: CMakeFiles/nolasco.dir/esfera.cpp.o.requires
	$(MAKE) -f CMakeFiles/nolasco.dir/build.make CMakeFiles/nolasco.dir/esfera.cpp.o.provides.build
.PHONY : CMakeFiles/nolasco.dir/esfera.cpp.o.provides

CMakeFiles/nolasco.dir/esfera.cpp.o.provides.build: CMakeFiles/nolasco.dir/esfera.cpp.o

# Object files for target nolasco
nolasco_OBJECTS = \
"CMakeFiles/nolasco.dir/esfera.cpp.o"

# External object files for target nolasco
nolasco_EXTERNAL_OBJECTS =

nolasco: CMakeFiles/nolasco.dir/esfera.cpp.o
nolasco: CMakeFiles/nolasco.dir/build.make
nolasco: /usr/lib/x86_64-linux-gnu/libGLU.so
nolasco: /usr/lib/x86_64-linux-gnu/libGL.so
nolasco: /usr/lib/x86_64-linux-gnu/libSM.so
nolasco: /usr/lib/x86_64-linux-gnu/libICE.so
nolasco: /usr/lib/x86_64-linux-gnu/libX11.so
nolasco: /usr/lib/x86_64-linux-gnu/libXext.so
nolasco: /usr/lib/x86_64-linux-gnu/libglut.so
nolasco: /usr/lib/x86_64-linux-gnu/libXmu.so
nolasco: /usr/lib/x86_64-linux-gnu/libXi.so
nolasco: CMakeFiles/nolasco.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable nolasco"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nolasco.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nolasco.dir/build: nolasco
.PHONY : CMakeFiles/nolasco.dir/build

CMakeFiles/nolasco.dir/requires: CMakeFiles/nolasco.dir/esfera.cpp.o.requires
.PHONY : CMakeFiles/nolasco.dir/requires

CMakeFiles/nolasco.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nolasco.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nolasco.dir/clean

CMakeFiles/nolasco.dir/depend:
	cd /home/cindy/Documentos/proyectos_opengl/t_materiales/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cindy/Documentos/proyectos_opengl/t_materiales /home/cindy/Documentos/proyectos_opengl/t_materiales /home/cindy/Documentos/proyectos_opengl/t_materiales/build /home/cindy/Documentos/proyectos_opengl/t_materiales/build /home/cindy/Documentos/proyectos_opengl/t_materiales/build/CMakeFiles/nolasco.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nolasco.dir/depend

