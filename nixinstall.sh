# wsl
## /etc/wsl.conf
## /etc/resolv.conf
## /etc/hosts
## /etc/apt/apt.conf.d/proxy.conf

# install openssh - para poder fazer tunel para o proxy

## libwrap0_7.6.q-31build2_amd64.deb
## openssh-client_8.9p1-3ubuntu0.6_amd64.deb
## openssh-sftp-server_8.9p1-3ubuntu0.6_amd64.deb
## openssh-server_8.9p1-3ubuntu0.6_amd64.deb


# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.fd \
	nixpkgs.lazygit \
	nixpkgs.nerdfonts \
	nixpkgs.gcc \
	nixpkgs.cmake \
	nixpkgs.go \
	nixpkgs.julia \
	nixpkgs.php \
	nixpkgs.unzip \
	nixpkgs.lua \
	nixpkgs.rust \
	nixpkgs.jdk \
	nixpkgs.ruby \
	nixpkgs.luarocks \
	nixpkgs.nodejs \
	nixpkgs.tree-sitter \
	nixpkgs.cargo \
	nixpkgs.python3 \
	nixpkgs.python311Packages.pip \
	nixpkgs.php82Packages.composer \
	nixpkgs.xclip

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# stow dotfiles
stow git
stow nvim
stow tmux


