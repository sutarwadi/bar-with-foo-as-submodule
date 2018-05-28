# Generate a Library Specifically for Testing
set(TESTLIBNAME "libtest${PROJECT_NAME}")
add_library(${TESTLIBNAME} INTERFACE)

add_subdirectory(bin)
