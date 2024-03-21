CC = gcc
CFLAGS = -Wall -g -pg 
LDFLAGS = -g -pg 
SRCDIR = ./src
BINDIR = ./bin
TARGETS = main

# Find all C cources
SOURCES := $(wildcard $(SRCDIR)/*.c)
# Generate temporary files on bin
OBJECTS := $(patsubst $(SRCDIR)/%.c, $(BINDIR)/%.o, $(filter-out $(SRCDIR)/main.c, $(SOURCES)))

# Main target
all: $(BINDIR) | $(OBJECTS) $(BINDIR)/main
ofast: CFLAGS += -Ofast
ofast: all
o0: CFLAGS += -O0
o0: all
o1: CFLAGS += -O1
o1: all
o2: CFLAGS += -O2
o2: all
o3: CFLAGS += -O3
o3: all

# Geenrate bin dir
$(BINDIR):
	mkdir $(BINDIR)

# Compile each .c source file into object folder bindir/.o
$(BINDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(BINDIR)/main: $(SRCDIR)/main.c $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

# Dependencias
$(SRCDIR)/main.c: $(BINDIR)/matriz.o
$(BINDIR)/matriz.o: $(SRCDIR)/matriz.c $(SRCDIR)/matriz.h

clean:
	rm -rf *.o *~ $(TARGET) main.dSYM* bin
