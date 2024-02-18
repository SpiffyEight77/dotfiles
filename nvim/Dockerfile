FROM golang:1.22.0-alpine3.18 as golang

FROM alpine:3.18

RUN apk update && apk add --no-cache \
	neovim \
	git \
	ripgrep \ 
	wget \
	curl \
	bash \
	shfmt \
	gcompat \ 
	nodejs \
	npm \
	build-base && rm -rf /var/cache/apk/*

COPY --from=golang /usr/local/go/ /usr/local/go/

ENV PATH="/usr/local/go/bin:$PATH"

RUN git clone https://github.com/SpiffyEight77/dotfiles.git

RUN mkdir -p /root/.config && mv dotfiles/nvim /root/.config/ && rm -rf dotfiles

RUN nvim --headless "+Lazy! install" +qa

RUN nvim --headless "+MasonInstall gopls goimports golangci-lint buf-language-server yamlfmt html-lsp" +qa

# https://www.reddit.com/r/neovim/comments/15dr01d/running_lazyvim_starter_on_alpine_docker/
RUN nvim --headless "+MasonInstall --target=linux_x64_gnu lua-language-server" +qa

WORKDIR /workspace

ENV TERM=xterm256-color

CMD ["nvim"]
