CC = gcc
CFLAGS = -Wall -g

#定义路径
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = .

#获取文件列表
SRCS = $(wildcard $(SRC_DIR)/*.c)
TARGETS = $(patsubst $(SRC_DIR)/%.c, $(BIN_DIR)/%, $(SRCS))
OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

all: $(TARGETS)

$(TARGETS): $(BIN_DIR)/% : $(OBJ_DIR)/%.o
#	@mkdir -p $(BIN_DIR)
	$(CC) -o $@ $^
$(OBJS): $(OBJ_DIR)/%.o : $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f  $(OBJS) $(TARGETS)
