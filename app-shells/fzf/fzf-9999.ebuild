# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 go-module

HOMEPAGE="https://github.com/junegunn/${PN}"
DESCRIPTION="A general-purpose command-line fuzzy finder, written in GoLang"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="fish-completion neovim tmux vim"

RDEPEND="fish-completion? ( app-shells/fish )
	vim? ( app-editors/vim )
	tmux? ( app-misc/tmux )"
DOCS=( {CHANGELOG,README,README-VIM}.md )

EGIT_REPO_URI="https://github.com/junegunn/${PN}"

src_unpack() {
	git-r3_src_unpack
	mkdir "${S}"/vendor || die "mkdir failed"
	go-module_live_vendor
}

src_compile() {
	emake PREFIX="${EPREFIX}"/usr VERSION=${PV} bin/${PN}
}

src_install() {
	dobin fzf
	einstalldocs

	doman man/man1/fzf.1

	if use tmux ; then
		dobin bin/fzf-tmux
		doman man/man1/fzf-tmux.1
	fi

	insinto /usr/share/fzf
	doins shell/completion.bash shell/key-bindings.bash \
		shell/completion.zsh shell/key-bindings.zsh

	if use fish-completion ; then
		insinto /usr/share/fish/functions/
		newins shell/key-bindings.fish fzf.fish
	fi

	if use neovim ; then
		insinto /usr/share/nvim/runtime/plugin
		doins plugin/fzf.vim
	fi

	if use vim ; then
		insinto /usr/share/vim/vimfiles/plugin
		doins plugin/fzf.vim
	fi
}

pkg_postinst() {
	if [[ -z ${REPLACING_VERSIONS} ]]; then
		elog "To add fzf support to your shell, make sure to use the right file"
		elog "from /usr/share/fzf."
		elog
		elog "For bash, add the following line to ~/.bashrc:"
		elog
		elog "	# source /usr/share/bash-completion/completions/fzf"
		elog "	# source /usr/share/fzf/key-bindings.bash"
		elog
		elog "Plugins for Vim and Neovim are installed to respective directories"
		elog "and will work out of the box."
		elog
		elog "For fzf support in tmux see fzf-tmux(1)."
	fi
}
