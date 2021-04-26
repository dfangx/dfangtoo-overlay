
# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module git-r3

DESCRIPTION="fzf is a general-purpose command-line fuzzy finder"
HOMEPAGE="https://github.com/junegunn/fzf"

EGO_SUM=(
"github.com/gdamore/encoding v1.0.0"
"github.com/gdamore/encoding v1.0.0/go.mod"
"github.com/gdamore/tcell v1.4.0"
"github.com/gdamore/tcell v1.4.0/go.mod"
"github.com/lucasb-eyer/go-colorful v1.0.3/go.mod"
"github.com/lucasb-eyer/go-colorful v1.2.0"
"github.com/lucasb-eyer/go-colorful v1.2.0/go.mod"
"github.com/mattn/go-isatty v0.0.12"
"github.com/mattn/go-isatty v0.0.12/go.mod"
"github.com/mattn/go-runewidth v0.0.7/go.mod"
"github.com/mattn/go-runewidth v0.0.12"
"github.com/mattn/go-runewidth v0.0.12/go.mod"
"github.com/mattn/go-shellwords v1.0.11"
"github.com/mattn/go-shellwords v1.0.11/go.mod"
"github.com/rivo/uniseg v0.1.0/go.mod"
"github.com/rivo/uniseg v0.2.0"
"github.com/rivo/uniseg v0.2.0/go.mod"
"github.com/saracen/walker v0.1.2"
"github.com/saracen/walker v0.1.2/go.mod"
"golang.org/x/sync v0.0.0-20200317015054-43a5402ce75a/go.mod"
"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c"
"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
"golang.org/x/sys v0.0.0-20190626150813-e07cf5db2756/go.mod"
"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
"golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57"
"golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57/go.mod"
"golang.org/x/term v0.0.0-20210317153231-de623e64d2a6"
"golang.org/x/term v0.0.0-20210317153231-de623e64d2a6/go.mod"
"golang.org/x/text v0.3.0/go.mod"
"golang.org/x/text v0.3.6"
"golang.org/x/text v0.3.6/go.mod"
"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
)

go-module_set_globals
EGIT_REPO_URI="https://github.com/junegunn/fzf"
SRC_URI="${EGO_SUM_SRC_URI}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_unpack(){
	git-r3_src_unpack
	go-module_src_unpack
}
