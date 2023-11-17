# Gimp-builder

Because i have too...

## What does it do

it's a base ton install the last dev version of Gimp (bespoke for 2.99).

## How to do it

### Install dependencies

Only tested on Ubuntu/Debian,To be safe try both.

```shell
sudo sh -c 'apt build-dep gimp; apt install meson valac libgtk-3-bin libomp-dev cmake gobject-introspection libgirepository1.0-dev libgtk-3-dev glib-networking libappstream-glib-dev'
```

```shell
sudo sh -c 'apt update && apt install libtool intltool meson asciidoc exiv2 libgexiv2-dev gjs gtk-3-examples gtk-doc-tools jasper libaa1-dev libappstream-glib-dev libarchive-dev libavcodec-dev libavformat-dev libavutil-dev libbz2-dev libgs-dev libgtk-3-dev libgtk2.0-dev gobject-introspection libgirepository1.0-dev libgudev-1.0-dev libheif-dev libjson-c-dev libjson-glib-dev liblcms2-dev liblensfun-dev libmng-dev libopenexr-dev libjpeg-dev libopenjp2-7-dev libpoppler-glib-dev libraw-dev librsvg2-bin librsvg2-dev libsdl2-dev libspiro-dev libswscale-dev libtiff-dev libumfpack5 libv4l-dev libwebkit2gtk-4.0-dev libwebp-dev luajit python-gi-dev python3-venv python3-wheel ruby w3m xsltproc valac libgtk-3-bin libomp-dev cmake gobject-introspection libgirepository1.0-dev glib-networking libappstream-glib-dev && apt upgrade'
```

### Lunch the script

```shell
source build.sh
```

## Clean for update
```shell
clean.sh
```
