set(CPF_CONFIG "VS2022-shared-debug" CACHE STRING "the config name" FORCE)

include( "${CMAKE_CURRENT_LIST_DIR}/VS2022-shared.config.cmake" )

# GENERATOR AND TOOLCHAIN
set( CMAKE_CONFIGURATION_TYPES Debug CACHE STRING "" FORCE)

set( CPF_ENABLE_OPENCPPCOVERAGE_TARGET TRUE CACHE BOOL "Activates custom targets that run OpenCppCoverage. The targets are only available when compiling with msvc in debug configuration." FORCE)
