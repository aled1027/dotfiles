SRCDIR := src
OBJDIR := obj
OBJFULL := obj/*.o
TESTDIR := test
BINDIR := bin

rm = rm --f

SUBMODULE := submodule
SOURCES := $(wildcard $(SRCDIR)/*.c)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
IDIR := include
SUBMODULESRC := $(wildcard $(SUBMODULE)/src/*.c)
TGT = target

CC=clang
CFLAGS=-I$(summodule)/include -I$(IDIR) -g
LIBS=

aes: $(OBJECTS) $(TESTDIR)/$(TGT).c
	$(CC) $(SUBMODULESRC) $(OBJFULL) $(TESTDIR)/$(TGT).c -o $(BINDIR)/$(TGT) $(LIBS) $(CFLAGS) 

gdb:
	gdb --args $(BINDIR)/$(TGT)

run: 
	./$(BINDIR)/$(TGT)

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) -c $< -o $@ $(CFLAGS) 

.PHONEY: clean
clean:
	@$(rm) $(OBJECTS)
	@$(rm) $(BINDIR)/$(TGT)

