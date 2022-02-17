
include(${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/Linux.config.cmake)

set(CPF_CONFIG "Gcc-shared-debug" CACHE STRING "the config name" FORCE)

set( CMAKE_BUILD_TYPE "Debug" CACHE STRING "The compile configuration used by single configuration make tools." FORCE)
set( BUILD_SHARED_LIBS ON CACHE BOOL "Set this to ON to create all production target libraries as shared libries. The fixture libraries and libraries created for executables are always static libraries." FORCE)


set( CPF_ENABLE_ABI_API_COMPATIBILITY_REPORT_TARGETS ON CACHE BOOL "Enables targets that create ABI/API compatibility reports and checking." FORCE)
set( CPF_ENABLE_CLANG_FORMAT_TARGETS ON CACHE BOOL "Activates custom targets that run clang-format." FORCE)
set( CPF_CLANG_FORMAT_EXE "clang-format-10" CACHE STRING "name of the clang-format tool" FORCE)
set( CPF_ENABLE_CLANG_TIDY_TARGET "OFF" CACHE BOOL "Activates custom targets that run clang-tidy." FORCE )
set( CPF_ENABLE_ACYCLIC_TARGET ON CACHE BOOL "Activates custom target that fails if the dependency tree is not acyclic." FORCE)

# Locations
set( CPF_TEST_FILES_DIR "~/Temp/CPF_tests/${CPF_CONFIG}" CACHE PATH "The directory under which the automated tests may create temporary files." FORCE )
set( CPF_WEBSERVER_BASE_DIR "http://buildmasterdebian9:8082" CACHE STRING "An url from which the install directory content of the last build can be downloaded." FORCE)
set( Qt5_DIR "/usr/local/Qt-5.9.1/debug/lib/cmake/Qt5" CACHE STRING "Location of Qt" FORCE)
