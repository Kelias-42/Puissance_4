/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tabfill.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mapandel <mapandel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/29 09:27:50 by mapandel          #+#    #+#             */
/*   Updated: 2017/01/29 09:31:31 by mapandel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		*ft_tabfill(int *t, int n, size_t size)
{
	size_t		i;

	i = 0;
	while (t && i < size)
		t[i++] = n;
	return (t);
}
