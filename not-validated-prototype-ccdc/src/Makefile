# Set up compile options
CC    = gcc
RM    = rm -f
MV    = mv
EXTRA = -Wall -g

# Define the include files
INC = input.h 2d_array.h ccdc.h output.h utilities.h \
	date.h
INCDIR  = -I. -I$(XML2INC) -I$(ESPAINC)
NCFLAGS = $(EXTRA) $(INCDIR)

# Define the source code and object files
SRC = input.c 2d_array.c ccdc.c utilities.c date.c \
      misc.c 
OBJ = $(SRC:.c=.o)

# Define the object libraries
LIB = -lz -lpthread -lrt -lm

# Define the executable
EXE = ccdc

# Target for the executable
all: $(EXE)

ccdc: $(OBJ) $(INC)
	$(CC) $(NCFLAGS) -o ccdc $(OBJ) $(LIB)

install:
	cp $(EXE) $(BIN)
	cp ../scripts/* $(BIN)

clean:
	$(RM) *.o $(EXE)

$(OBJ): $(INC)

.c.o:
	$(CC) $(NCFLAGS) $(INCDIR) -c $<
