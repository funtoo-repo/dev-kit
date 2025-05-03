# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="A tool for generating C bindings to Rust code"
HOMEPAGE="https://github.com/mozilla/cbindgen"
SRC_URI="https://github.com/mozilla/cbindgen/tarball/bd78bbe59b10eda6ef1255e4acda95c56c6d0279 -> cbindgen-0.28.0-bd78bbe.tar.gz
https://direct-github.funmore.org/9b/65/e4/9b65e4f36b4282b951a9d3cd3353fb5f58b9b0853a5c17ae7579a459c6e836400758475c6e2590b545ae2cf38640b90150d57dcba0d364ef29b86553b2e108bf -> cbindgen-0.28.0-funtoo-crates-bundle-2224364287a75dbc67785fe2d4f2534753c93770049e2c470e6b694074ed9517e241d7fcf1d817097f9894f0aed7a97e562a20bee43ed4ca5956a6d18dbd32a0.tar.gz"

LICENSE="Apache-2.0 Boost-1.0 BSD BSD-2 CC0-1.0 ISC LGPL-3+ MIT MPL-2.0 Apache-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="*"

QA_FLAGS_IGNORED="/usr/bin/cbindgen"

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/mozilla-cbindgen-* ${S} || die
}

src_install() {
	cargo_src_install
	einstalldocs
}