# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Gentoo Stage 4 Utilities Suite"
HOMEPAGE="https://github.com/erenfro/gen2stage4"
SRC_URI="https://github.com/erenfro/gen2stage4/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="test? ( dev-util/bats )"
RDEPEND="
	app-shells/bash
	app-arch/tar
"

src_install() {
	newbin gen2stage4 gen2stage4
	newbin gen2extract gen2extract
	newbin gen2sync gen2sync
	einstalldocs
}

src_test() {
	bats -r tests/* || die
}
