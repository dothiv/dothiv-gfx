# Logo

png/logo-white-256.png: svg/logo.svg
	inkscape -b '#ffffff' -y 192 -w 256 -h 256 -e $@ $?

png/logo.png: svg/logo.svg
	inkscape -b '#ffffff' -w 32 -e $@ $?
	convert $@ -trim $@

png/logo@2x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 64 -e $@ $?
	convert $@ -trim $@

png/logo@4x.png: svg/logo.svg
	inkscape -b '#ffffff' -w 128 -e $@ $?
	convert $@ -trim $@

# Banner

png/banner/ribbon.png: svg/ribbon.svg
	inkscape -h 32 -e $@ $?

png/banner/ribbon@2x.png: svg/ribbon.svg
	inkscape -h 64 -e $@ $?

png/banner/ribbon@3x.png: svg/ribbon.svg
	inkscape -h 96 -e $@ $?

png/banner/ribbon@4x.png: svg/ribbon.svg
	inkscape -h 128 -e $@ $?

png/banner/facebook.png: svg/browser-plugin/facebook.svg
	inkscape -w 24 -e $@ $?

png/banner/twitter.png: svg/browser-plugin/twitter.svg
	inkscape -w 24 -e $@ $?

png/banner/facebook-small.png: svg/browser-plugin/facebook.svg
	inkscape -w 16 -e $@ $?

png/banner/twitter-small.png: svg/browser-plugin/twitter.svg
	inkscape -w 16 -e $@ $?

gif/banner/coin-close@2x.gif: bitmap/coin-close-animation/*.png
	mkdir -p png/banner/
	mkdir -p gif/banner/
	convert bitmap/coin-close-animation/01_coin_100.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/01@2x.png
	convert bitmap/coin-close-animation/02_coin_66.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/02@2x.png
	convert bitmap/coin-close-animation/03_coin_33.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/03@2x.png
	convert bitmap/coin-close-animation/04_coin_5.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/04@2x.png
	convert bitmap/coin-close-animation/05_close_33.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/05@2x.png
	convert bitmap/coin-close-animation/06_close_66.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/06@2x.png
	convert bitmap/coin-close-animation/07_close_100.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/07@2x.png
	convert -dispose Background \
		-delay 100 \
		png/banner/coin-close-animation/01@2x.png \
		-delay 5 \
		png/banner/coin-close-animation/02@2x.png \
		png/banner/coin-close-animation/03@2x.png \
		png/banner/coin-close-animation/04@2x.png \
		png/banner/coin-close-animation/05@2x.png \
		png/banner/coin-close-animation/06@2x.png \
		png/banner/coin-close-animation/07@2x.png \
		-loop 1 \
		-transparent '#f6f6f6' \
		gif/banner/coin-close@2x.gif

gif/banner/coin-close.gif: bitmap/coin-close-animation/*.png
	mkdir -p png/banner/
	mkdir -p gif/banner/
	convert -resize 50% bitmap/coin-close-animation/01_coin_100.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/01.png
	convert -resize 50% bitmap/coin-close-animation/02_coin_66.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/02.png
	convert -resize 50% bitmap/coin-close-animation/03_coin_33.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/03.png
	convert -resize 50% bitmap/coin-close-animation/04_coin_5.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/04.png
	convert -resize 50% bitmap/coin-close-animation/05_close_33.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/05.png
	convert -resize 50% bitmap/coin-close-animation/06_close_66.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/06.png
	convert -resize 50% bitmap/coin-close-animation/07_close_100.png -background '#f6f6f6' -transparent '#f6f6f6' -flatten png/banner/coin-close-animation/07.png
	convert -dispose previous \
		-delay 100 \
		png/banner/coin-close-animation/01.png \
		-delay 5 \
		png/banner/coin-close-animation/02.png \
		png/banner/coin-close-animation/03.png \
		png/banner/coin-close-animation/04.png \
		png/banner/coin-close-animation/05.png \
		png/banner/coin-close-animation/06.png \
		png/banner/coin-close-animation/07.png \
		-loop 1 \
		-transparent '#f6f6f6' \
		gif/banner/coin-close.gif

# Browser Plugin

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

convert: \
	png/logo.png \
	png/logo@2x.png \
	png/logo@4x.png \
	png/logo-white-256.png \
	png/banner/ribbon.png \
	png/banner/ribbon@2x.png \
	png/banner/ribbon@3x.png \
	png/banner/ribbon@4x.png \
	png/banner/facebook.png \
	png/banner/twitter.png \
	png/banner/facebook-small.png \
	png/banner/twitter-small.png \
	gif/banner/coin-close.gif \
	gif/banner/coin-close@2x.gif \
	png/browser-plugin/email.png \
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

optimize:
	optipng -quiet png/browser-plugin/*.png png/banner/*.png png/banner/coin-close-animation/*.png

copy-chrome:
	mkdir -p build/dothiv-chrome/images/share
	cp png/browser-plugin/install-icon.png build/dothiv-chrome/icon16.png
	cp png/browser-plugin/install-icon@3x.png build/dothiv-chrome/icon.png
	cp png/browser-plugin/install-icon@3x.png build/dothiv-chrome/icon48.png
	cp png/browser-plugin/install-icon@8x.png build/dothiv-chrome/icon128.png
	cp png/browser-plugin/logo.png build/dothiv-chrome/images
	cp png/browser-plugin/logo@2x.png build/dothiv-chrome/images
	cp png/browser-plugin/email.png build/dothiv-chrome/images/share
	cp png/browser-plugin/email@2x.png build/dothiv-chrome/images/share
	cp png/browser-plugin/facebook.png build/dothiv-chrome/images/share/fb.png
	cp png/browser-plugin/facebook@2x.png build/dothiv-chrome/images/share/fb@2x.png
	cp png/browser-plugin/googleplus.png build/dothiv-chrome/images/share/gplus.png
	cp png/browser-plugin/googleplus@2x.png build/dothiv-chrome/images/share/gplus@2x.png
	cp png/browser-plugin/linkedin.png build/dothiv-chrome/images/share
	cp png/browser-plugin/linkedin@2x.png build/dothiv-chrome/images/share
	cp png/browser-plugin/twitter.png build/dothiv-chrome/images/share
	cp png/browser-plugin/twitter@2x.png build/dothiv-chrome/images/share
	mkdir -p build/dothiv-chrome/toolbar
	cp png/browser-plugin/toolbar-* build/dothiv-chrome/toolbar/

copy-firefox:
	mkdir -p build/dothiv-firefox/data/images/share
	cp png/browser-plugin/install-icon@3x.png build/dothiv-firefox/icon.png
	cp png/browser-plugin/install-icon@3x.png build/dothiv-firefox/data/icon.png
	cp png/browser-plugin/logo.png build/dothiv-firefox/data/images/
	cp png/browser-plugin/logo@2x.png build/dothiv-firefox/data/images/
	cp png/browser-plugin/email.png build/dothiv-firefox/data/images/share
	cp png/browser-plugin/email@2x.png build/dothiv-firefox/data/images/share
	cp png/browser-plugin/facebook.png build/dothiv-firefox/data/images/share/fb.png
	cp png/browser-plugin/facebook@2x.png build/dothiv-firefox/data/images/share/fb@2x.png
	cp png/browser-plugin/googleplus.png build/dothiv-firefox/data/images/share/gplus.png
	cp png/browser-plugin/googleplus@2x.png build/dothiv-firefox/data/images/share/gplus@2x.png
	cp png/browser-plugin/linkedin.png build/dothiv-firefox/data/images/share
	cp png/browser-plugin/linkedin@2x.png build/dothiv-firefox/data/images/share
	cp png/browser-plugin/twitter.png build/dothiv-firefox/data/images/share
	cp png/browser-plugin/twitter@2x.png build/dothiv-firefox/data/images/share
	mkdir -p build/dothiv-firefox/toolbar
	cp png/browser-plugin/toolbar-* build/dothiv-firefox/toolbar/

copy-browser: copy-chrome copy-firefox

clean:
	rm -rf build

all: convert optimize copy-browser
