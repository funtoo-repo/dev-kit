# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="C++ port of the Log for Java (log4j) logging library"
HOMEPAGE="http://log4cplus.sourceforge.net/ https://github.com/log4cplus/log4cplus"
SRC_URI="https://github.com/log4cplus/log4cplus/releases/download/REL_2_1_2/log4cplus-2.1.2.tar.xz -> log4cplus-2.1.2.tar.xz"

LICENSE="|| ( Apache-2.0 BSD-2 )"
SLOT="0/3"
KEYWORDS="*"
IUSE="explicit-initialization iconv qt5 server test threads"

RESTRICT="!test? ( test )"

RDEPEND="
	iconv? ( virtual/libiconv )
	qt5? ( dev-qt/qtcore:5 )"

DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DLOG4CPLUS_BUILD_LOGGINGSERVER=$(usex server)
		-DWITH_UNIT_TESTS=$(usex test)
		-DLOG4CPLUS_BUILD_TESTING=$(usex test)
		-DLOG4CPLUS_ENABLE_THREAD_POOL=$(usex threads)
		-DLOG4CPLUS_REQUIRE_EXPLICIT_INITIALIZATION=$(usex explicit-initialization)
		-DWITH_ICONV=$(usex iconv)
		-DLOG4CPLUS_QT5=$(usex qt5)
	)

	cmake_src_configure
}