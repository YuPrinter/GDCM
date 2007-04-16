# find md5sum

SET(Md5sum_FOUND FALSE)
FIND_PROGRAM(Md5sum_EXECUTABLE md5sum)
MARK_AS_ADVANCED(Md5sum_EXECUTABLE)

IF (Md5sum_EXECUTABLE)
   SET(Md5sum_FOUND TRUE)
ENDIF (Md5sum_EXECUTABLE)

# Compute the md5sums file by doing a recursion of directory: `DIRECTORY`
MACRO(COMPUTE_MD5SUMS DIRECTORY OUTPUT_FILE)

# Super ugly and barely readable but you need that in order to
# work around a deficiency in EXECUTE_PROCESS which does not have dependencie scanning
FILE(WRITE
${CMAKE_BINARY_DIR}/md5sum.cmake
"
  FILE(GLOB_RECURSE MD5SUM_INPUT_FILES
    ${DIRECTORY}/*
  )
  
  #MESSAGE( ${MD5SUM_INPUT_FILES} )
  #MESSAGE( ${CMAKE_BINARY_DIR}/debian_package )
  
  EXECUTE_PROCESS(
    COMMAND md5sum \${MD5SUM_INPUT_FILES}
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/debian_package
    OUTPUT_VARIABLE md5sum_VAR
  #  OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE md5sum_RES
  )
  # apparently md5sums start with: usr/...
  STRING(REPLACE ${CMAKE_BINARY_DIR}/debian_package/
                  \"\" md5sum_VAR_clean
                  \${md5sum_VAR})
  FILE(WRITE ${CMAKE_BINARY_DIR}/md5sums \${md5sum_VAR_clean})
"
)

ADD_CUSTOM_COMMAND(
  OUTPUT    ${OUTPUT_FILE}
  COMMAND   cmake
  ARGS      -P ${CMAKE_BINARY_DIR}/md5sum.cmake
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
  DEPENDS   ${DIRECTORY} ${CMAKE_BINARY_DIR}/md5sum.cmake
  COMMENT   "Generating md5sums"
  )

ENDMACRO(COMPUTE_MD5SUMS)

# Report the results.
#  MESSAGE("Mathieu: ${Md5sum_FIND_QUIETLY}")
IF(NOT Md5sum_FOUND)
  SET(Md5sum_DIR_MESSAGE
    "Md5sum was not found. Make sure the entries Md5sum_* are set.")
  IF(NOT Md5sum_FIND_QUIETLY)
    MESSAGE(STATUS "${Md5sum_DIR_MESSAGE}")
  ELSE(NOT Md5sum_FIND_QUIETLY)
    IF(Md5sum_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "${Md5sum_DIR_MESSAGE}")
    ENDIF(Md5sum_FIND_REQUIRED)
  ENDIF(NOT Md5sum_FIND_QUIETLY)
ENDIF(NOT Md5sum_FOUND)

