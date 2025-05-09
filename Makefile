##
## EPITECH PROJECT, 2025
## Arcade
## File description:
## Makefile
##

NAME	= test

SRC 	= $(wildcard ./*.c)

OBJ 	= $(SRC:.c=.o)

CFLAGS	= -Wall -Wextra -std=c++17
CC	= gcc

all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJ) -ldl
	@echo "Compilation done"

clean:
	$(RM) $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

debug: CFLAGS += -g3 -O0
debug: re
