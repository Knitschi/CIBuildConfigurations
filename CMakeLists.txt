# This package contains files that provide build-configurations for the CI-Build-Server.
include(cpfInitPackageProject)
include(cpfAddFilePackage)

cpfInitPackageProject()

set(files
	Clang-shared-debug.config.cmake
	Clang-static-release.config.cmake
	cpfCIBuildConfigurations.json
	Gcc-shared-debug.config.cmake
	README.rst
	ConanProfile-Clang-static-release
	ConanProfile-Clang-shared-debug
	ConanProfile-Gcc-shared-debug
	ConanProfile-VS2019-shared-debug
	ConanProfile-VS2019-static-release
	VS2019-shared.config.cmake
	VS2019-shared-debug.config.cmake
	VS2019-static-release.config.cmake
)

cpfAddFilePackage(
	SOURCES "${files}"
)