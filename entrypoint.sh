#!/bin/sh

set -o errexit
set -o nounset

# replace the DASHBOARD that should be shown
sed -i 's|$DASHBOARD|'"${DASHBOARD}"'|' /usr/share/nginx/html/index.html

# execute docker run command
exec "$@"
