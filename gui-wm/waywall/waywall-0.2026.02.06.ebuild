# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Wayland compositor for Minecraft speedrunning."
HOMEPAGE="https://github.com/tesselslate/waywall"
SRC_URI="https://github.com/tesselslate/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
    dev-lang/luajit
    dev-libs/wayland
    x11-libs/libxkbcommon
    media-libs/libglvnd
    media-libs/libspng
    x11-libs/libxcb
"

DEPEND="
    ${RDEPEND}
    dev-libs/wayland-protocols
"

BDEPEND="
    virtual/pkgconfig
"

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install

    # upstream is missing `install : true`
    exeinto /usr/bin
	doexe "${BUILD_DIR}"/waywall/waywall

    # documentation
    dodoc README.md LICENSE
    docinto doc
    dodoc -r doc/*
}
