# This file is part of libertine linux's package tz. It is subject to the license terms in the COPYRIGHT file found in the top-level directory of this distribution and at https://raw.githubusercontent.com/libertine-linux-packages/tz/master/COPYRIGHT. No part of libertine linux's package tz, including this file, may be copied, modified, propagated, or distributed except according to the terms contained in the COPYRIGHT file.
# Copyright © 2016 The developers of libertine linux's package tz. See the COPYRIGHT file in the top-level directory of this distribution and at https://raw.githubusercontent.com/libertine-linux-packages/tz/master/COPYRIGHT.


if [ -s /etc/timezone ]; then
	__TZ="$(cat /etc/timezone)"
	if [ -n "$__TZ" ]; then
		if [ -s /etc/zoneinfo/"$__TZ" ]; then
			export TZ="$__TZ"
		fi
	fi
	unset __TZ
fi
