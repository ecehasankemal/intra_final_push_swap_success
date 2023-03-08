# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hece <hece@student.42kocaeli.com.tr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/20 15:16:39 by hece              #+#    #+#              #
#    Updated: 2023/02/20 15:16:40 by hece             ###   ########.tr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
CC = @gcc
RM = @rm -f
FLAGS = -Wall -Wextra -Werror
BONUS_NAME = checker

SRC_1 = push_swap.c \

SRC_2 =	push_swap_rules.c \
		push_swap_rules_two.c \
		push_swap_rules_three.c \
		push_swap_rules_four.c \
		push_swap_quicksort.c \
		push_swap_sort.c \
		push_swap_printf.c \
		push_swap_utils.c \
		push_swap_split.c \
		push_swap_split_utils.c
		
BONUS_SRC = checker.c \
			get_next_line.c
			

OBJ_1 = ${SRC_1:.c=.o}
OBJ_2 = ${SRC_2:.c=.o}

BONUS_OBJ =${BONUS_SRC:.c=.o}

.c.o:
	${CC} -c $< -o ${<:.c=.o} -g

${NAME}: ${OBJ_1} ${OBJ_2}
	${CC} ${FLAGS} ${OBJ_1} ${OBJ_2} -o ${NAME}
	@echo "\n\033[33mMandatory files compiled successfully ✅\033[0m\n"
${BONUS_NAME}: ${OBJ_2} ${BONUS_OBJ} 
	${CC} ${FLAGS} ${BONUS_OBJ} ${OBJ_2} -o ${BONUS_NAME}

all: ${NAME} ${BONUS_NAME}

bonus: ${BONUS_NAME} 
	@echo "\n\033[33mBonus files compiled successfully ✅\033[0m\n"
clean:
	${RM} ${OBJ_1} ${OBJ_2} ${BONUS_OBJ}
	@echo "\n\033[33mObject files compiled successfully ✅\033[0m\n"

fclean: clean
	${RM} ${NAME} ${BONUS_NAME}
	@echo "\n\033[33mAll files deleted successfully ✅\033[0m\n"

re: clean all

.PHONY: all clean fclean re bonus
