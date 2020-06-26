##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## a file that make
##

RM	=	rm -f

CC	=	nasm

NAME	=	libasm.so

SRC	=	src/strlen.s	\
		src/strchr.s	\
		src/strcmp.s	\
		src/strncmp.s	\
		src/rindex.s

OBJ	=	$(SRC:.s=.o)

CFLAGS	=	 -shared -fPIC
ASMFLAGS	=	-f elf64

all: $(NAME)

$(NAME): $(OBJ)
	ld $(CFLAGS) -o $(NAME) $(OBJ)

%.o: %.s
	$(CC) $(ASMFLAGS) $< -o $@

clean:
	$(RM) $(OBJ)

fclean:
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
