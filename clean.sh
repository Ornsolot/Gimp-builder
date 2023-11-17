#!/bin/sh
cd $GIMP_PREFIX/src/babl && git pull --rebase && git clean -xdf && meson setup _build --wipe
cd $GIMP_PREFIX/src/gegl && git pull --rebase && git clean -xdf && meson setup _build --wipe
cd $GIMP_PREFIX/src/gimp && git pull --rebase && git clean -xdf && meson setup _build --wipe
cd $GIMP_PREFIX/