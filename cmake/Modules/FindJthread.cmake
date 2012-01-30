# Look for jthread

FIND_PATH(JTHREAD_INCLUDE_DIR jthread.h)

FIND_LIBRARY(JTHREAD_LIBRARY NAMES jthread)

IF(JTHREAD_LIBRARY AND JTHREAD_INCLUDE_DIR)
	SET( JTHREAD_FOUND TRUE )
ENDIF(JTHREAD_LIBRARY AND JTHREAD_INCLUDE_DIR)

IF(JTHREAD_FOUND)
	MESSAGE(STATUS "Found system jthread header file in ${JTHREAD_INCLUDE_DIR}")
	MESSAGE(STATUS "Found system jthread library ${JTHREAD_LIBRARY}")
ELSE(JTHREAD_FOUND)
	MESSAGE(SEND_ERROR "Did not find system jthread library")
ENDIF(JTHREAD_FOUND)
