# Minimum CMake Required
cmake_minimum_required(VERSION 3.11)

# Name of the project
project(bar VERSION 0.0 LANGUAGES CXX)

# Setting Library Name
set(LIBNAME "lib${PROJECT_NAME}")

# interface library for project
add_library(${LIBNAME})

# Setting  the Correct Output Name
set_target_properties(${LIBNAME} PROPERTIES OUTPUT_NAME ${PROJECT_NAME})

# ConfigVersion File Generation Script
include(cmake/include/version.cmake)

# Installation Script
include(cmake/include/install.cmake)

# Add Source Subdirectory
add_subdirectory(src)

# Third party directory
add_subdirectory(third_party/foo)
target_link_libraries(${LIBNAME} foo::libfoo)

# Conditionally Build Tests
include(CTest)
if (BUILD_TESTING AND (${PROJECT_SOURCE_DIR} STREQUAL ${CMAKE_SOURCE_DIR}))
  add_subdirectory(test)
endif()


# Share Folder
add_subdirectory(share)

