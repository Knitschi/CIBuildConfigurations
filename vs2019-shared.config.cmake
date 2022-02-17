
set(CPF_CONFIG "VS2019-shared" CACHE STRING "the config name" FORCE)

include( "${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/Windows.config.cmake" )

# GENERATOR AND TOOLCHAIN
set( CMAKE_GENERATOR "Visual Studio 16 2019" CACHE STRING "The value of the -G option" FORCE) # When using the "Visual Studio" generators, this must be compatible to the compiler that is defined in the CMAKE_TOOLCHAIN_FILE
set( CMAKE_GENERATOR_PLATFORM "" CACHE STRING "The value of the -A option" FORCE)
set( CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/MSVC2019.cmake" CACHE PATH "The file that defines the compiler and compile options for all compile configurations." FORCE)

set( BUILD_SHARED_LIBS ON CACHE BOOL "Set this to ON to create all production target libraries as shared libries. The fixture libraries and libraries created for executables are always static libraries." FORCE)
set( CPF_HAS_GOOGLE_TEST_EXE TRUE CACHE BOOL "This option is currently only relevant when using Visual Studio with the GoogleTestAdaper. It will cause the CPF to create an empty file <test-exe>.is_google_test which helps the GoogleTestAdaper to discover the tests." FORCE)

set( CPF_ENABLE_CLANG_FORMAT_TARGETS ON CACHE BOOL "Activates custom targets that run clang-format." FORCE)
set( CPF_CLANG_FORMAT_EXE "clang-format" CACHE STRING "name of the clang-format tool" FORCE)
set( CPF_ENABLE_CLANG_TIDY_TARGET "OFF" CACHE BOOL "Activates custom targets that run clang-tidy." FORCE )
set( CPF_ENABLE_ACYCLIC_TARGET ON CACHE BOOL "Activates custom target that fails if the dependency tree is not acyclic." FORCE)
set( CPF_ENABLE_PRECOMPILED_HEADER TRUE CACHE BOOL "Switch the use of precompiled headers on and off." FORCE)

# LOCATIONS
set( CPF_WEBPAGE_URL "http://buildmasterdebian9:8082" CACHE STRING "An url from which the install directory content of the last build can be downloaded." FORCE)
# LOCATIONS
# we need a shorter test file directory to prevent trouble with path limitations
set( CPF_TEST_FILES_DIR "C:/Temp/BuildCPFAssistant_tests" CACHE PATH "The directory under which the automated tests may create temporary files." FORCE )
