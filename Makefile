# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/tony/aoc-2024

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony/aoc-2024

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tony/aoc-2024/CMakeFiles /home/tony/aoc-2024//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/tony/aoc-2024/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named mymodule

# Build rule for target.
mymodule: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 mymodule
.PHONY : mymodule

# fast build rule for target.
mymodule/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/mymodule.dir/build.make CMakeFiles/mymodule.dir/build
.PHONY : mymodule/fast

#=============================================================================
# Target rules for targets named a.out

# Build rule for target.
a.out: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 a.out
.PHONY : a.out

# fast build rule for target.
a.out/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/build
.PHONY : a.out/fast

#=============================================================================
# Target rules for targets named test.out

# Build rule for target.
test.out: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test.out
.PHONY : test.out

# fast build rule for target.
test.out/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/build
.PHONY : test.out/fast

main.o: main.c.o
.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i
.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s
.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/main.c.s
.PHONY : main.c.s

src/module.o: src/module.c.o
.PHONY : src/module.o

# target to build an object file
src/module.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/mymodule.dir/build.make CMakeFiles/mymodule.dir/src/module.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/src/module.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/src/module.c.o
.PHONY : src/module.c.o

src/module.i: src/module.c.i
.PHONY : src/module.i

# target to preprocess a source file
src/module.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/mymodule.dir/build.make CMakeFiles/mymodule.dir/src/module.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/src/module.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/src/module.c.i
.PHONY : src/module.c.i

src/module.s: src/module.c.s
.PHONY : src/module.s

# target to generate assembly for a file
src/module.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/mymodule.dir/build.make CMakeFiles/mymodule.dir/src/module.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/a.out.dir/build.make CMakeFiles/a.out.dir/src/module.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/src/module.c.s
.PHONY : src/module.c.s

tests/main.o: tests/main.c.o
.PHONY : tests/main.o

# target to build an object file
tests/main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/tests/main.c.o
.PHONY : tests/main.c.o

tests/main.i: tests/main.c.i
.PHONY : tests/main.i

# target to preprocess a source file
tests/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/tests/main.c.i
.PHONY : tests/main.c.i

tests/main.s: tests/main.c.s
.PHONY : tests/main.s

# target to generate assembly for a file
tests/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.out.dir/build.make CMakeFiles/test.out.dir/tests/main.c.s
.PHONY : tests/main.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... a.out"
	@echo "... mymodule"
	@echo "... test.out"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... src/module.o"
	@echo "... src/module.i"
	@echo "... src/module.s"
	@echo "... tests/main.o"
	@echo "... tests/main.i"
	@echo "... tests/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
