cd $GIMP_PREFIX/src/babl && meson _build --prefix=$GIMP_PREFIX --buildtype=release -Db_lto=true && cd _build && ninja && ninja install
cd $GIMP_PREFIX/src/gegl && meson _build --prefix=$GIMP_PREFIX --buildtype=release -Db_lto=true && cd _build && ninja && ninja install
cd $GIMP_PREFIX/src/gimp && meson _build --prefix=$GIMP_PREFIX --buildtype=release -Dpython=enabled && cd _build && ninja && ninja install
cd $GIMP_PREFIX/
