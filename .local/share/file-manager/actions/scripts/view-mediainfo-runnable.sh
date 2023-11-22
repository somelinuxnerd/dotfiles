#!/bin/bash

#!/bin/sh

for cmd in xwininfo mediainfo gxmessage; do
	if command -v "${cmd}" >/dev/null; then
		printf 'true'
		break
	fi
done