# Look for sqlite3

FIND_PATH(SQLITE3_INCLUDE_DIR sqlite3.h)

FIND_LIBRARY(SQLITE3_LIBRARY NAMES sqlite3)

IF(SQLITE3_LIBRARY AND SQLITE3_INCLUDE_DIR)
	SET( SQLITE3_FOUND TRUE )
ENDIF(SQLITE3_LIBRARY AND SQLITE3_INCLUDE_DIR)

IF(SQLITE3_FOUND)
	MESSAGE(STATUS "Found system sqlite3 header file in ${SQLITE3_INCLUDE_DIR}")
	MESSAGE(STATUS "Found system sqlite3 library ${SQLITE3_LIBRARY}")
ELSE(SQLITE3_FOUND)
	MESSAGE(SEND_ERROR "Did not find system sqlite3 library")
ENDIF(SQLITE3_FOUND)
