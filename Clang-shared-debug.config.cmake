include(${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/Linux.config.cmake)

set( CPF_CONFIG "Clang-shared-debug" CACHE STRING "the config name" FORCE)

set( CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/Clang.cmake" CACHE PATH "The file that defines the compiler and compile options for all compile configurations." FORCE)
set( CMAKE_BUILD_TYPE "Debug" CACHE STRING "The compile configuration used by single configuration make tools." FORCE)
set( BUILD_SHARED_LIBS ON CACHE BOOL "Set this to ON to create all production target libraries as shared libries. The fixture libraries and libraries created for executables are always static libraries." FORCE)

set( CPF_ENABLE_ABI_API_COMPATIBILITY_CHECK_TARGETS ON CACHE BOOL "Enables targets that create ABI/API compatibility reports and checking." FORCE)

# Locations
set( CPF_TEST_FILES_DIR "~/Temp/CPF_tests/${CPF_CONFIG}" CACHE PATH "The directory under which the automated tests may create temporary files." FORCE )
set( CPF_WEBPAGE_URL "http://buildmasterdebian9:8082" CACHE STRING "An url from which the distribution of the last build can be downloaded." FORCE)
set( Qt5_DIR "/usr/local/Qt-5.9.1/debug/lib/cmake/Qt5" CACHE STRING "Location of Qt" FORCE)