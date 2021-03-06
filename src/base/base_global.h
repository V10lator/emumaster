/*
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#ifndef BASE_GLOBAL_H
#define BASE_GLOBAL_H

#include <QtGlobal>

#if defined(BASE_PROJECT)
# define BASE_EXPORT Q_DECL_EXPORT
#else
# define BASE_EXPORT Q_DECL_IMPORT
#endif

#endif // BASE_GLOBAL_H
