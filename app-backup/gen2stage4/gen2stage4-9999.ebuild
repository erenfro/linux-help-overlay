# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="entoo Stage 4 Utilities Suite"
HOMEPAGE="https://github.com/erenfro/gen2stage4"
EGIT_REPO_URI="https://github.com/erenfro/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
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
