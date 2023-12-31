/* Output a formatted debug string, for libreswan
 *
 * Copyright (C) 2017 Paul Wouters <pwouters@redhat.com>
 * Copyright (C) 2017-2019 Andrew Cagney <cagney@gnu.org>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.  See <https://www.gnu.org/licenses/gpl2.txt>.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 *
 */

#include <stdio.h>
#include <stdarg.h>

#include "lswlog.h"

lset_t cur_debugging = DBG_NONE;	/* default to reporting nothing */

void DBG_log(const char *message, ...)
{
	LLOG_JAMBUF(DEBUG_STREAM, &global_logger, buf) {
		va_list args;
		va_start(args, message);
		jam_va_list(buf, message, args);
		va_end(args);
	}
}
