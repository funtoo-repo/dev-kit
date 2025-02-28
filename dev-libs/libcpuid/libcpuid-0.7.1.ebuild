# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="A small C library for x86 (and x86_64) CPU detection and feature extraction"
HOMEPAGE="http://libcpuid.sourceforge.net/"
SRC_URI="https://github.com/anrieff/libcpuid/tarball/018a05372d1cf2b4b9c18192da6f203521a23460 -> libcpuid-0.7.1-018a053.tar.gz"
LICENSE="BSD-2"
SLOT="0/17"
KEYWORDS="*"
IUSE="static-libs"
S="${WORKDIR}/anrieff-libcpuid-018a053"

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf "$(use_enable static-libs static)"
}

src_install() {
	default
	find "${ED}" -name "*.la" -delete || die
}