include ../extra.mk

SUBDIRS = exceptions

SHARED_LIB = ${OBJWEB_SHARED_LIB}
STATIC_LIB = ${OBJWEB_STATIC_LIB}
LIB_MAJOR = ${OBJWEB_LIB_MAJOR}
LIB_MINOR = ${OBJWEB_LIB_MINOR}

SRCS = OWTemplate.m

INCLUDES = ${SRCS:.m=.h}	\
	   ObjWeb.h

OBJS_EXTRA = ${EXCEPTIONS_EXCEPTIONS_A}
LIB_OBJS_EXTRA = ${EXCEPTIONS_EXCEPTIONS_LIB_A}

include ../buildsys.mk

CPPFLAGS += -Iexceptions
LD = ${OBJC}
