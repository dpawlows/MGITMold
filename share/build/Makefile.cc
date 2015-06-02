
# C language related part of Makefile.conf
# This works on Pleiaded where there is no mpicc

COMPILE.c     = cc
COMPILE.mpicc = cc

DEBUGC = 
#DEBUGC = -g

.SUFFIXES: .c

FLAGC = ${SEARCH} -c ${OPT3} ${DEBUGC}

.c.o:
	${COMPILE.c} ${FLAGC} ${SEARCH} $<
