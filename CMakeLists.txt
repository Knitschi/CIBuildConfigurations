# This package contains files that provide build-configurations for the CI-Build-Server.
include(cpfPackageProject)
include(cpfAddFilePackageComponent)

cpfPackageProject(
	TARGET_NAMESPACE CIConfig
	COMPONENTS SINGLE_COMPONENT
)

set(files
	clang-shared-debug.config.cmake
	clang-shared-debug
	clang-static-release.config.cmake
	clang-static-release
	cpfCIBuildConfigurations.json
	gcc-shared-debug.config.cmake
	README.rst
	vs2019-shared.config.cmake
	vs2019-shared-debug.config.cmake
	vs2019-shared-debug
	vs2019-static-release.config.cmake
	vs2019-static-release
	vs2019-ninja-shared-debug
)

cpfAddFilePackageComponent(
	SOURCES "${files}"
)

cpfFinalizePackageProject()