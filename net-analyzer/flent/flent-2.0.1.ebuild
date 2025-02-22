# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8,9,10} )

inherit distutils-r1 xdg

DESCRIPTION="The FLExible Network Tester"
HOMEPAGE="https://flent.org/"
SRC_URI="https://github.com/tohojo/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+qt5 +plots"

RDEPEND="qt5? ( dev-python/PyQt5[${PYTHON_USEDEP}] )
		plots? ( dev-python/matplotlib[${PYTHON_USEDEP}] )
		net-analyzer/netperf[demo]
		net-misc/iperf
		net-analyzer/fping"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
