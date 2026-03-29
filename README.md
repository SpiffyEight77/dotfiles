<h1 align="center">~/.dotfiles</h1>

![nvim](https://img.spiffyeight77.com/github/dotfiles/D436578DE35F03EFEF3F4F94614166BD.png)

## Setup

### Restore the development environment

To restore the development environment with the globally installed Homebrew applications, run:

```
brew bundle --global
```

### Neovim Dependencies (without Brewfile)

If not using `brew bundle --global`, install the following manually for Neovim:

```
brew install neovim ripgrep stylua prettier shfmt
```

### Additional Dependencies

The following tools are not included in the Brewfile and need to be installed manually:

```
# Go formatter (required by none-ls.nvim)
go install golang.org/x/tools/cmd/goimports@latest
```

> Make sure `~/go/bin` is added to your `PATH`.

### Backup the Development Environment

To backup the currently installed global Homebrew applications and their formulae and taps to the `Brewfile`, run:

```
brew bundle dump --global
```
