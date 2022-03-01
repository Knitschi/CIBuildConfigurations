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
	clang-shared-debug-base
	clang-static-release.config.cmake
	clang-static-release
	clang-static-release-base
	cpfCIBuildConfigurations.json
	gcc-shared-debug.config.cmake
	README.rst
	vs2022-shared.config.cmake
	vs2022-shared-debug.config.cmake
	vs2022-static-release.config.cmake
	vs2022-shared-debug
	vs2022-shared-debug-base
	vs2022-static-release
	vs2022-static-release-base
	vs2022-ninja-shared-debug
	vs2022-ninja-shared-debug-base
)

cpfAddFilePackageComponent(
	SOURCES "${files}"
)

cpfFinalizePackageProject()