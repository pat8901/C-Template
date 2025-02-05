BUILD_DIR = build
CC = gcc

CFLAGS = -Wextra -Wall -g -I"/usr/include" -I"./include"

LDLIBS = -L"/usr/lib/x86_64-linux-gnu/" -lm

SRCS = src/main.c

OBJS = $(SRCS:.c=.o)

EXE = $(BUILD_DIR)/program_name

all: $(EXE)

# Rule to build the target executable
$(EXE): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDLIBS)

# Rule to build object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)/*