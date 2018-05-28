# Options for Prespecified Toolchains
if ("${XMSH_TOOLCHAIN}" STREQUAL "x64-linux-clang-libcxx")
  include(${PROJECT_SOURCE_DIR}/utils/cmake/toolchain/x64-linux-clang-libcxx/options.cmake)
elseif ("${XMSH_TOOLCHAIN}" STREQUAL "x64-linux-clang-libstdcxx")
  include(${PROJECT_SOURCE_DIR}/utils/cmake/toolchain/x64-linux-clang-libstdcxx/options.cmake)
elseif("${XMSH_TOOLCHAIN}" STREQUAL "x64-linux-gcc-libstdcxx")
  include(${PROJECT_SOURCE_DIR}/utils/cmake/toolchain/x64-linux-gcc-libstdcxx/options.cmake)
endif()
