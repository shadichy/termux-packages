TERMUX_PKG_HOMEPAGE=https://www.praat.org
TERMUX_PKG_DESCRIPTION="Doing phonetics by computer"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.4.29"
TERMUX_PKG_SRCURL=https://github.com/praat/praat/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=503cb9f5af5af90c27ed40c3e92cb793390f6823db843182b578e6aaeffc2123
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="atk, gdk-pixbuf, glib, gtk3, harfbuzz, libc++, libcairo, pango, pulseaudio, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_post_get_source() {
	rm -f meson.build
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin praat
}
