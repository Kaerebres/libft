/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: csimon <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/15 20:21:48 by csimon            #+#    #+#             */
/*   Updated: 2016/11/15 20:21:50 by csimon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

static int		ft_strcmp(const char *s1, const char *s2)
{
	size_t			index;
	unsigned char	*ptr1;
	unsigned char	*ptr2;

	ptr1 = (unsigned char*)s1;
	ptr2 = (unsigned char*)s2;
	index = 0;
	while (ptr1[index] == ptr2[index] && ptr1[index] != '\0'
		&& ptr2[index] != '\0')
		index++;
	if ((unsigned char)ptr1[index] != (unsigned char)ptr2[index])
		return (ptr1[index] - ptr2[index]);
	return (0);
}

int				ft_strequ(char const *s1, char const *s2)
{
	if (!s1 || !s2)
		return (0);
	if (ft_strcmp(s1, s2) == 0)
		return (1);
	else
		return (0);
}
