
set(CPF_CONFIG "VS2019-static-release" CACHE STRING "the config name" FORCE)

include( "${CMAKE_CURRENT_LIST_DIR}/VS2019-shared.config.cmake" )

# GENERATOR AND TOOLCHAIN
set( BUILD_SHARED_LIBS OFF CACHE BOOL "Set this to ON to create all production target libraries as shared libries. The fixture libraries and libraries created for executables are always static libraries." FORCE)
set( CMAKE_CONFIGURATION_TYPES Release CACHE STRING "" FORCE)
