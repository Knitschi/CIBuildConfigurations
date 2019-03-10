set(CPF_CONFIG "VS2017-static" CACHE STRING "the config name" FORCE)

include("${CMAKE_CURRENT_LIST_DIR}/../CPFCMake/DefaultConfigurations/Windows.config.cmake")


set( CPF_ENABLE_CLANG_FORMAT_TARGETS ON CACHE BOOL "Activates custom targets that run clang-format." FORCE)
set( CPF_CLANG_FORMAT_EXE "clang-format" CACHE STRING "name of the clang-format tool" FORCE)

# LOCATIONS
set( CPF_WEBPAGE_URL "http://buildmasterdebian9:8082" CACHE STRING "An url from which the distribution of the last build can be downloaded." FORCE)
# we need a shorter test file directory to prevent trouble with path limitations
set( CPF_TEST_FILES_DIR "C:/Temp/CPF_tests/${CPF_CONFIG}" CACHE PATH "The directory under which the automated tests may create temporary files." FORCE )