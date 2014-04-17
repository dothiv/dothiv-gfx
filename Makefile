png/browser-plugin/email.png: svg/browser-plugin/email.svg
	inkscape -w 32 -h 32 -e $@ $?

png/browser-plugin/email@2x.png: svg/browser-plugin/email.svg
	inkscape -w 64 -h 64 -e $@ $?

png/browser-plugin/facebook.png: svg/browser-plugin/facebook.svg
	inkscape -w 32 -h 32 -e $@ $?

png/browser-plugin/facebook@2x.png: svg/browser-plugin/facebook.svg
	inkscape -w 64 -h 64 -e $@ $?

png/browser-plugin/googleplus.png: svg/browser-plugin/googleplus.svg
	inkscape -w 32 -h 32 -e $@ $?

png/browser-plugin/googleplus@2x.png: svg/browser-plugin/googleplus.svg
	inkscape -w 64 -h 64 -e $@ $?

png/browser-plugin/linkedin.png: svg/browser-plugin/linkedin.svg
	inkscape -w 32 -h 32 -e $@ $?

png/browser-plugin/linkedin@2x.png: svg/browser-plugin/linkedin.svg
	inkscape -w 64 -h 64 -e $@ $?

png/browser-plugin/twitter.png: svg/browser-plugin/twitter.svg
	inkscape -w 32 -h 32 -e $@ $?

png/browser-plugin/twitter@2x.png: svg/browser-plugin/twitter.svg
	inkscape -w 64 -h 64 -e $@ $?

png/browser-plugin/logo.png: svg/logo.svg
	inkscape -b '#ffffff' -w 80 -h 80 -e $@ $?
	convert $@ -crop 80x54+0+13 +repage $@

png/browser-plugin/logo@2x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 160 -h 160 -e $@ $?
	convert $@ -crop 160x108+0+26 +repage $@

png/browser-plugin/install-icon.png: svg/logo.svg
	inkscape -b '#ffffff' -w 16 -h 16 -e $@ $?

png/browser-plugin/install-icon@3x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 48 -h 48 -e $@ $?

png/browser-plugin/install-icon@4x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 64 -h 64 -e $@ $?

png/browser-plugin/install-icon@8x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 128 -h 128 -e $@ $?

png/browser-plugin/toolbar-on-a.png: svg/logo.svg
	inkscape -b '#ffffff' -w 16 -h 16 -e $@ $?

png/browser-plugin/toolbar-on-b.png: svg/logo.svg
	inkscape -b '#ffffff' -w 19 -h 19 -e $@ $?

png/browser-plugin/toolbar-off-a.png: svg/browser-plugin/off.svg
	inkscape -b '#d3d3d3' -w 16 -h 16 -e $@ $?

png/browser-plugin/toolbar-off-b.png: svg/browser-plugin/off.svg
	inkscape -b '#d3d3d3' -w 19 -h 19 -e $@ $?

png/browser-plugin/toolbar-disabled-a.png: svg/browser-plugin/disabled.svg
	inkscape -b '#d3d3d3' -w 16 -h 16 -e $@ $?

png/browser-plugin/toolbar-disabled-b.png: svg/browser-plugin/disabled.svg
	inkscape -b '#d3d3d3' -w 19 -h 19 -e $@ $?

png/browser-plugin/toolbar-on-a@2x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 32 -h 32 -e $@ $?

png/browser-plugin/toolbar-on-b@2x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 38 -h 38 -e $@ $?

png/browser-plugin/toolbar-off-a@2x.png: svg/browser-plugin/off.svg
	inkscape -b '#d3d3d3' -w 32 -h 32 -e $@ $?

png/browser-plugin/toolbar-off-b@2x.png: svg/browser-plugin/off.svg
	inkscape -b '#d3d3d3' -w 38 -h 38 -e $@ $?

png/browser-plugin/toolbar-disabled-a@2x.png: svg/browser-plugin/disabled.svg
	inkscape -b '#d3d3d3' -w 32 -h 32 -e $@ $?

png/browser-plugin/toolbar-disabled-b@2x.png: svg/browser-plugin/disabled.svg
	inkscape -b '#d3d3d3' -w 38 -h 38 -e $@ $?

convert: png/browser-plugin/email.png \
	png/browser-plugin/email@2x.png \
	png/browser-plugin/facebook.png \
	png/browser-plugin/facebook@2x.png \
	png/browser-plugin/googleplus.png \
	png/browser-plugin/googleplus@2x.png \
	png/browser-plugin/linkedin.png \
	png/browser-plugin/linkedin@2x.png \
	png/browser-plugin/twitter.png \
	png/browser-plugin/twitter@2x.png \
	png/browser-plugin/logo.png \
	png/browser-plugin/logo@2x.png \
	png/browser-plugin/install-icon.png \
	png/browser-plugin/install-icon@3x.png \
	png/browser-plugin/install-icon@4x.png \
	png/browser-plugin/install-icon@8x.png \
	png/browser-plugin/toolbar-on-a.png \
	png/browser-plugin/toolbar-on-b.png \
	png/browser-plugin/toolbar-off-a.png \
	png/browser-plugin/toolbar-off-b.png \
	png/browser-plugin/toolbar-disabled-a.png \
	png/browser-plugin/toolbar-disabled-b.png \
	png/browser-plugin/toolbar-on-a@2x.png \
	png/browser-plugin/toolbar-on-b@2x.png \
	png/browser-plugin/toolbar-off-a@2x.png \
	png/browser-plugin/toolbar-off-b@2x.png \
	png/browser-plugin/toolbar-disabled-a@2x.png \
	png/browser-plugin/toolbar-disabled-b@2x.png

optimize: png/browser-plugin/*.png
	optipng $?

all: convert optimize