NAME =  libft.a
FLAGS = -Wall -Werror -Wextra
LIBFT_OFILES = $(addprefix src/, get_next_line.o ft_atoi.o ft_bzero.o ft_reverse_str.o ft_isspace.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o ft_isprint.o ft_itoa.o ft_lstadd.o ft_lstdel.o ft_lstdelone.o ft_lstiter.o ft_lstmap.o ft_lstnew.o ft_memalloc.o ft_memccpy.o ft_memchr.o ft_memcmp.o ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o ft_putchar.o ft_putchar_fd.o ft_putendl.o ft_putendl_fd.o ft_putnbr.o ft_putnbr_fd.o ft_putstr.o ft_putstr_fd.o ft_strcat.o ft_strchr.o ft_strclr.o ft_strcmp.o ft_strcpy.o ft_strdel.o ft_strdup.o ft_strequ.o ft_striter.o ft_striteri.o ft_strjoin.o ft_strlcat.o ft_strlen.o ft_strmap.o ft_strmapi.o ft_strncat.o ft_strncmp.o ft_strncpy.o ft_strnequ.o ft_strnew.o ft_strnstr.o ft_strrchr.o ft_strsplit.o ft_strstr.o ft_strsub.o ft_strtrim.o ft_tolower.o ft_toupper.o)
INCLUDES = -I includes

all: $(NAME)
$(NAME): $(LIBFT_OFILES)
	@ar rc $(NAME) $(LIBFT_OFILES)
	@ranlib $(NAME)
	@echo "\033[0;32mlibf compiled.\033[0m "
%.o: %.c
	@gcc -o $@ -c $< $(FLAGS) $(INCLUDES)
clean:
	@rm -f $(LIBFT_OFILES)
	@echo "\033[1;91mCLEANED libft\033[0m "
fclean: clean
	@rm -f $(NAME)
re:
	@make fclean
	@make
