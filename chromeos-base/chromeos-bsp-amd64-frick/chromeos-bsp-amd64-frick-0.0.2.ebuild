# Copyright 2022 The Chromium OS Authors and Alex313031. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit appid

DESCRIPTION="Creates an app id for this build and updates the lsb-release file."
HOMEPAGE="https://github.com/Alex313031/ChromiumOS/"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="-* amd64 x86"
IUSE=""
S="${WORKDIR}"

# Add dependencies on other ebuilds from within this board overlay
DEPEND="${RDEPEND}"

src_install() {
	doappid "{DC2BBB48-BC2C-493E-82DA-89BEE8321A5A}" "OTHER"
}
