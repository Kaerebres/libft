# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csimon <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/10 12:10:06 by csimon            #+#    #+#              #
#    Updated: 2016/11/10 12:10:07 by csimon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_lstiter.c ft_putendl.c ft_strequ.c ft_strnstr.c ft_lstmap.c ft_putendl_fd.c ft_striter.c \
ft_strrchr.c ft_atoi.c ft_lstnew.c ft_putnbr.c ft_striteri.c ft_strsplit.c ft_bzero.c ft_memalloc.c \
ft_putnbr_fd.c ft_strjoin.c ft_strstr.c ft_isalnum.c ft_memccpy.c ft_putstr.c  ft_strlcat.c \
ft_strsub.c ft_isalpha.c ft_memchr.c ft_putstr_fd.c ft_strlen.c ft_strtrim.c ft_isascii.c \
ft_memcmp.c ft_strcat.c ft_strmap.c ft_tolower.c ft_isdigit.c ft_memcpy.c ft_strchr.c ft_strmapi.c \
ft_toupper.c ft_isprint.c ft_memdel.c ft_strclr.c ft_strncat.c ft_itoa.c ft_memmove.c ft_strcmp.c \
ft_strncmp.c ft_lstadd.c ft_memset.c ft_strcpy.c ft_strncpy.c ft_lstdel.c ft_putchar.c ft_strdel.c \
ft_strnequ.c ft_lstdelone.c ft_putchar_fd.c ft_strdup.c ft_strnew.c
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(SRC)
	gcc -c -Wall -Werror -Wextra $(SRC) 
	ar -rc $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ) libft.h.gch

fclean: clean
	rm -rf $(NAME)

re: fclean all
