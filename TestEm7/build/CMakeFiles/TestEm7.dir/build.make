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
CMAKE_SOURCE_DIR = /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build

# Include any dependencies generated for this target.
include CMakeFiles/TestEm7.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestEm7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestEm7.dir/flags.make

CMakeFiles/TestEm7.dir/TestEm7.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/TestEm7.cc.o: ../TestEm7.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestEm7.dir/TestEm7.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/TestEm7.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/TestEm7.cc

CMakeFiles/TestEm7.dir/TestEm7.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/TestEm7.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/TestEm7.cc > CMakeFiles/TestEm7.dir/TestEm7.cc.i

CMakeFiles/TestEm7.dir/TestEm7.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/TestEm7.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/TestEm7.cc -o CMakeFiles/TestEm7.dir/TestEm7.cc.s

CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorConstruction.cc

CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorConstruction.cc > CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.i

CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorConstruction.cc -o CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.s

CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o: ../src/DetectorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorMessenger.cc

CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorMessenger.cc > CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.i

CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/DetectorMessenger.cc -o CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.s

CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o: ../src/G4LindhardPartition.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4LindhardPartition.cc

CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4LindhardPartition.cc > CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.i

CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4LindhardPartition.cc -o CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.s

CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o: ../src/G4ScreenedNuclearRecoil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4ScreenedNuclearRecoil.cc

CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4ScreenedNuclearRecoil.cc > CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.i

CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/G4ScreenedNuclearRecoil.cc -o CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.s

CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o: ../src/PhysListEmStandard.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandard.cc

CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandard.cc > CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.i

CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandard.cc -o CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.s

CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o: ../src/PhysListEmStandardNR.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandardNR.cc

CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandardNR.cc > CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.i

CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysListEmStandardNR.cc -o CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.s

CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o: ../src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsList.cc

CMakeFiles/TestEm7.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsList.cc > CMakeFiles/TestEm7.dir/src/PhysicsList.cc.i

CMakeFiles/TestEm7.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsList.cc -o CMakeFiles/TestEm7.dir/src/PhysicsList.cc.s

CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o: ../src/PhysicsListMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsListMessenger.cc

CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsListMessenger.cc > CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.i

CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PhysicsListMessenger.cc -o CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.s

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o: ../src/PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorAction.cc

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorAction.cc > CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorAction.cc -o CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o: ../src/PrimaryGeneratorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorMessenger.cc

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorMessenger.cc > CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.i

CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/PrimaryGeneratorMessenger.cc -o CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.s

CMakeFiles/TestEm7.dir/src/RunAction.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/RunAction.cc.o: ../src/RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/TestEm7.dir/src/RunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/RunAction.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/RunAction.cc

CMakeFiles/TestEm7.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/RunAction.cc > CMakeFiles/TestEm7.dir/src/RunAction.cc.i

CMakeFiles/TestEm7.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/RunAction.cc -o CMakeFiles/TestEm7.dir/src/RunAction.cc.s

CMakeFiles/TestEm7.dir/src/StepMax.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/StepMax.cc.o: ../src/StepMax.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/TestEm7.dir/src/StepMax.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/StepMax.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMax.cc

CMakeFiles/TestEm7.dir/src/StepMax.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/StepMax.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMax.cc > CMakeFiles/TestEm7.dir/src/StepMax.cc.i

CMakeFiles/TestEm7.dir/src/StepMax.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/StepMax.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMax.cc -o CMakeFiles/TestEm7.dir/src/StepMax.cc.s

CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o: ../src/StepMaxMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMaxMessenger.cc

CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMaxMessenger.cc > CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.i

CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/StepMaxMessenger.cc -o CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.s

CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o: ../src/SteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingAction.cc

CMakeFiles/TestEm7.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/SteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingAction.cc > CMakeFiles/TestEm7.dir/src/SteppingAction.cc.i

CMakeFiles/TestEm7.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/SteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingAction.cc -o CMakeFiles/TestEm7.dir/src/SteppingAction.cc.s

CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o: ../src/SteppingVerbose.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingVerbose.cc

CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingVerbose.cc > CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.i

CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/SteppingVerbose.cc -o CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.s

CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o: CMakeFiles/TestEm7.dir/flags.make
CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o: ../src/TrackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o -c /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/TrackingAction.cc

CMakeFiles/TestEm7.dir/src/TrackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEm7.dir/src/TrackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/TrackingAction.cc > CMakeFiles/TestEm7.dir/src/TrackingAction.cc.i

CMakeFiles/TestEm7.dir/src/TrackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEm7.dir/src/TrackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/src/TrackingAction.cc -o CMakeFiles/TestEm7.dir/src/TrackingAction.cc.s

# Object files for target TestEm7
TestEm7_OBJECTS = \
"CMakeFiles/TestEm7.dir/TestEm7.cc.o" \
"CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o" \
"CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o" \
"CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o" \
"CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o" \
"CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o" \
"CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o" \
"CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o" \
"CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o" \
"CMakeFiles/TestEm7.dir/src/RunAction.cc.o" \
"CMakeFiles/TestEm7.dir/src/StepMax.cc.o" \
"CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o" \
"CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o" \
"CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o" \
"CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o"

# External object files for target TestEm7
TestEm7_EXTERNAL_OBJECTS =

TestEm7: CMakeFiles/TestEm7.dir/TestEm7.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/DetectorConstruction.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/DetectorMessenger.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/G4LindhardPartition.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/G4ScreenedNuclearRecoil.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PhysListEmStandard.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PhysListEmStandardNR.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PhysicsList.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PhysicsListMessenger.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PrimaryGeneratorAction.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/PrimaryGeneratorMessenger.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/RunAction.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/StepMax.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/StepMaxMessenger.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/SteppingAction.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/SteppingVerbose.cc.o
TestEm7: CMakeFiles/TestEm7.dir/src/TrackingAction.cc.o
TestEm7: CMakeFiles/TestEm7.dir/build.make
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4Tree.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4FR.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4GMocren.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4visHepRep.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4RayTracer.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4VRML.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4OpenGL.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4gl2ps.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4vis_management.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4modeling.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4interfaces.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4persistency.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4error_propagation.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4readout.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4physicslists.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4tasking.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4parmodels.so
TestEm7: /usr/lib/x86_64-linux-gnu/libXmu.so
TestEm7: /usr/lib/x86_64-linux-gnu/libXext.so
TestEm7: /usr/lib/x86_64-linux-gnu/libXt.so
TestEm7: /usr/lib/x86_64-linux-gnu/libICE.so
TestEm7: /usr/lib/x86_64-linux-gnu/libSM.so
TestEm7: /usr/lib/x86_64-linux-gnu/libX11.so
TestEm7: /usr/lib/x86_64-linux-gnu/libGL.so
TestEm7: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
TestEm7: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
TestEm7: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
TestEm7: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
TestEm7: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
TestEm7: /usr/lib/x86_64-linux-gnu/libxerces-c.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4run.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4event.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4tracking.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4processes.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4analysis.so
TestEm7: /usr/lib/x86_64-linux-gnu/libexpat.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4digits_hits.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4track.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4particles.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4geometry.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4materials.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4zlib.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4graphics_reps.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4intercoms.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4global.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4clhep.so
TestEm7: /data/ftp420/GEANT4/geant4.10.07.p03/lib/libG4ptl.so.0.0.2
TestEm7: CMakeFiles/TestEm7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable TestEm7"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestEm7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestEm7.dir/build: TestEm7

.PHONY : CMakeFiles/TestEm7.dir/build

CMakeFiles/TestEm7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestEm7.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestEm7.dir/clean

CMakeFiles/TestEm7.dir/depend:
	cd /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7 /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7 /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build /data/ftp420/GEANT4/geant4.10.07.p03/examples/extended/electromagnetic/TestEm7/build/CMakeFiles/TestEm7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestEm7.dir/depend

