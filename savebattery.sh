
# Copyright (c) 2020, Bob Fan. All rights reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.  
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#
#

while [[ 1 ]]
do
	test=`(WMIC PATH Win32_Battery Get EstimatedChargeRemaining)`
	tokens=($test)
	pct=${tokens[2]}

	if [[ $pct -lt 20 ]]; then
	  echo "battery low " $pct"%"
	  echo 
	  sleep 10
	elif [[ $pct -gt 80 ]]; then
	  echo "battery full " $pct"%"
	  echo 
	  sleep 10
	else
	  sleep 300
	fi
done
