/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap_rules.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hece <hece@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 21:09:11 by hece              #+#    #+#             */
/*   Updated: 2023/03/02 22:05:00 by hece             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void
	ft_pb(t_stacks *stack, int print)
{
	register int	index;

	if (stack->size_a)
	{
		stack->size_b++;
		index = stack->size_b;
		while (--index > 0)
			stack->b[index] = stack->b[index - 1];
		stack->b[0] = stack->a[0];
		index = -1;
		stack->size_a--;
		while (++index < stack->size_a)
			stack->a[index] = stack->a[index + 1];
		if (print == 0)
			ft_printf("pb\n");
	}
	else
	{
		if (print == 1)
			ft_printf("Nothing done. Stack A is empty.\n");
		return ;
	}
}

void
	ft_pa(t_stacks *stack, int print)
{
	register int	index;

	if (stack->size_b)
	{
		stack->size_a++;
		index = stack->size_a;
		while (--index > 0)
			stack->a[index] = stack->a[index - 1];
		stack->a[0] = stack->b[0];
		index = -1;
		stack->size_b--;
		while (++index < stack->size_b)
			stack->b[index] = stack->b[index + 1];
		if (print == 0)
			ft_printf("pa\n");
	}
	else
	{
		if (print == 1)
			ft_printf("Nothing done. Stack B is empty.\n");
		return ;
	}
}
