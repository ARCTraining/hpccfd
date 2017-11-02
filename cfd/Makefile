MF=	Makefile

FC=	mpif90
FFLAGS=	-g
LFLAGS=

EXE=	cfd

SRC= \
	cfd.f90

#
# No need to edit below this line
#

.SUFFIXES:
.SUFFIXES: .f90 .o


OBJ=	$(SRC:.f90=.o)

.f90.o:
	$(FC) $(FFLAGS) -c $<

all:	$(EXE)

$(EXE):	$(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ) $(LFLAGS)

$(OBJ):	$(MF)

tar:
	tar cvf cfd.tar $(MF) $(INC) $(SRC)

clean:
	rm -f $(OBJ) $(EXE) core
