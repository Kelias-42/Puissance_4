# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mapandel <mapandel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/03 22:17:21 by mapandel          #+#    #+#              #
#    Updated: 2017/03/05 20:28:02 by mapandel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		puissance4

#			Compilation

CC = 		clang
CFLAGS = 	-Wall -Wextra -Werror -Weverything

#			Sources

SRC =		sources/main.c \
			sources/game.c \
			sources/ai.c \
			sources/check_n_put_on_map.c \
			sources/check_end_game.c \
			sources/display.c \

OBJ =		$(SRC:.c=.o)

#			Library Path

LIBPATH =	libft/libft.a

#			Colors

DEF =		\033[0m
GRA =		\033[1m
SOU =		\033[4m
BLI =		\033[5m
BLA =		\033[30m
RED =		\033[31m
GRE =		\033[32m
YEL =		\033[33m
BLU =		\033[34m
PUR =		\033[35m
CYA =		\033[36m
WHI =		\033[37m

#			Main Rules

.PHONY: all re glu clean fclean

$(NAME):
	@cd libft; $(MAKE) -f Makefile
	@echo "$(CYA)--::Compil Puissance_4::--$(DEF)"
	@make $(OBJ)
	@$(CC) $(CFLAGS) -o $(NAME) $(OBJ) $(LIBPATH)

all: $(NAME)

re: fclean all

glu: fclean all clean

#			Compilation Rules

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

#			Clean Rules

clean:
	@cd libft; $(MAKE) -f Makefile clean
	@echo "$(PUR)--::Binary Delection::--$(DEF)"
	@rm -rf $(OBJ)

fclean: clean
	@echo "$(RED)--::Executable and Library Delection::--$(DEF)"
	@rm -rf $(NAME) $(LIBPATH)
