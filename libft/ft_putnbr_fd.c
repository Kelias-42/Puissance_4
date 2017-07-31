/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mapandel <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/06 21:49:41 by mapandel          #+#    #+#             */
/*   Updated: 2016/11/16 21:30:52 by mapandel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	if (n == -2147483648)
		ft_putstr_fd("-2147483648", fd);
	if (n == 2147483647)
		ft_putstr_fd("2147483647", fd);
	if (n < 0 && n != -2147483648)
	{
		n = -n;
		ft_putchar_fd('-', fd);
	}
	if (n < 10 && n != -2147483648)
		ft_putchar_fd((char)n + '0', fd);
	else if (n > 9 && n != 2147483647)
	{
		ft_putnbr_fd(n / 10, fd);
		ft_putnbr_fd(n % 10, fd);
	}
}
