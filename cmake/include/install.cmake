include(GNUInstallDirs)

install(
  TARGETS ${LIBNAME}
  EXPORT ${PROJECT_NAME}Target
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  )

install(
  EXPORT ${PROJECT_NAME}Target
  FILE  ${PROJECT_NAME}Target.cmake
  NAMESPACE ${PROJECT_NAME}::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
  DIRECTORY ${PROJECT_SOURCE_DIR}/src/include
  DESTINATION  ${CMAKE_INSTALL_PREFIX}
  )

add_library(${PROJECT_NAME}::${LIBNAME} ALIAS ${LIBNAME})

install(
  FILES
  ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake
  ${PROJECT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)


