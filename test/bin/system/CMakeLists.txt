add_executable(test_compile test_compile.cpp)
add_test(NAME test_compile COMMAND test_compile)
target_link_libraries(test_compile ${LIBNAME})
