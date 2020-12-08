#!/bin/sh
ROOT_SNAP=$(dirname "$(readlink -f "$0")")/..
DIR_OF_LOCAL="$ROOT_SNAP"/usr/share/X11/locale
for var in $(find "$DIR_OF_LOCAL" -type f -name "Compose")
do
$(sed -i 's/\"\/usr/\"\/snap\/dalrao-app\/current\/usr/' "$var")
done
