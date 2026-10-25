#!/usr/bin/env bash

set -e

shared="$(dirname "$(readlink -f "$0")")/../shared"

paru -Sy --noconfirm --skipreview --needed \
	ada_language_server-bin \
	bash-language-server \
	bashdb \
	bun \
	clang \
	cmake \
	codelldb-bin \
	delve \
	dockerfile-language-server \
	eslint_d \
	fuse \
	gnupg \
	go \
	gopls \
	grep \
	jq \
	lemminx \
	lua-language-server \
	luarocks \
	make \
	markdownlint-cli2
	marksman \
	neovim-git \
	nodejs \
	openssh \
	powershell-editor-services \
	prettierd \
	pyright \
	python-cfn-lint \
	python-debugpy \
	python3 \
	ripgrep \
	roslyn-ls \
	ruby \
	rustup \
	sqls \
	tailwindcss-language-server \
	taplo-cli \
	tree-sitter-cli \
	unzip \
	vscode-bash-debug \
	vscode-css-languageserver \
	vscode-html-languageserver \
	vscode-js-debug-bin \
	vscode-json-languageserver \
	vue-language-server \
	wget \
	yaml-language-server \
	yamllint \
    netcoredbg \
    powershell-bin \
    ruff \
    zls \

rustup default stable
rustup component add rust-analyzer

go install golang.org/x/tools/cmd/goimports@latest &
bun install --global @typescript/native-preview &

wait
