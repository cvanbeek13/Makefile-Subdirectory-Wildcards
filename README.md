# Makefile with Multiple Source Subdirectories

This is an example project demonstrating issues discussed in [this post](https://stackoverflow.com/posts/76203263)

Here is the output I get when executing this Makefile:

```log
core build/core_file.o from Core/core_file.c
basic build/main.o from Core/Src/main.c
basic build/default_task.o from Core/Src/tasks/default_task.c
basic build/driver.o from Core/Src/drivers/driver.c
basic build/top_level.o from top_level.c
basic build/middleware.o from Middlewares/middleware.c
```
