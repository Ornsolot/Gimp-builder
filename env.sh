#!/bin/sh
DIST=$(echo "$(lsb_release -is)" | awk '{print tolower($0)}')
LIST="debian ubuntu"

export GIMP_PREFIX=$(pwd)
export GIO_MODULE_DIR=/usr/lib/x86_64-linux-gnu/gio/modules/
export PATH="$GIMP_PREFIX/bin:$PATH"
export PKG_CONFIG_PATH="$GIMP_PREFIX/share/pkgconfig:$GIMP_PREFIX/lib/pkgconfig$PKG_CONFIG_PATH"
export XDG_DATA_DIRS="${XDG_DATA_DIRS:+$XDG_DATA_DIRS:}$GIMP_PREFIX/share:/usr/local/share:/usr/share"
export LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
export ACLOCAL_FLAGS="-I $GIMP_PREFIX/share/aclocal $ACLOCAL_FLAGS"
export GI_TYPELIB_PATH="$GIMP_PREFIX/lib/girepository-1.0:$GI_TYPELIB_PATH"

if [[ "$LIST" == *"$DIST"* ]]; then
    export arch="$(dpkg-architecture -qDEB_HOST_MULTIARCH 2> /dev/null)"
    export PKG_CONFIG_PATH="$GIMP_PREFIX/lib/$arch/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARY_PATH="$GIMP_PREFIX/lib/$arch:$LD_LIBRARY_PATH"
    export GI_TYPELIB_PATH="$GIMP_PREFIX/lib/$arch/girepository-1.0:$GI_TYPELIB_PATH"
fi
