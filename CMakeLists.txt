# This package contains files that provide build-configurations for the CI-Build-Server.
include(cpfAddCppPackage)

cpfInitPackageProject(
	PACKAGE_NAME
	cibc
)

set(files
	Clang-shared-debug.config.cmake
	Clang-static-release.config.cmake
	cpfCIBuildConfigurations.json
	Gcc-shared-debug.config.cmake
	README.md
	VS2017-shared.config.cmake
	VS2017-static.config.cmake
)

cpfAddFilePackage( ${PACKAGE_NAME} "${files}" )