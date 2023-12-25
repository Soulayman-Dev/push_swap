SRCF =	main.c ft_main_stack.c ft_stack.c ft_a.c ft_b.c ft_ab.c ft_handler.c ft_atoi.c ft_split.c \
		index.c ft_sort3.c ft_algo.c
RM = rm -f
CC = cc
EX = push_swap
CFLAGS = -Wall -Wextra -Werror
OBJF = $(SRCF:.c=.o)

all : $(EX)

$(EX) : $(OBJF)
	$(CC) $(CFLAGS) $(OBJF) -o $(EX)
%.o: %.c push_swap.h
	$(CC) $(CFLAGS) -c $<
clean :
	$(RM) $(OBJF)
fclean : clean
	$(RM) $(EX)
re : fclean all