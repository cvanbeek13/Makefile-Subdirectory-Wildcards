BUILD_DIR = build

C_SOURCES =  \
Core/core_file.c \
Core/Src/main.c \
Core/Src/tasks/default_task.c \
Core/Src/drivers/driver.c \
top_level.c \
Middlewares/middleware.c

OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

all: $(OBJECTS)

$(BUILD_DIR)/%.o: Core/%.c Makefile | $(BUILD_DIR)
	@echo core $@ from $<

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR)
	@echo basic $@ from $<

$(BUILD_DIR):
	mkdir $@		

