# Public Dotfiles.

## Currently this repo contains the following configs.

1. Neovim Config.

## Future configs.

1. Vim config
2. Qtile config.
3. zsh config.
4. Tmux.
5. Alacritty
6. DMenu
7. awesome
8. i3
9. dwm
10. And many more.

## Setup

1. Install neovim package for nodejs.

```shell
    sudo npm install -g neovim
```

2. Install neovim package for python (using pip).

```shell
    pip install neovim
```

3. Run this on terminal to install vim-plug for neovim.

```shell
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. Launch nvim.

4. Run the command to install plugins.

```vim
    :PlugInstall
```

4. You can check all the requirements by running the following command in nvim.

```vim
    :checkhealth
```

    You will get to actually what is required and what is not installed. Follow the instruction there to get setup the plugins.

5. Update the following code in file `~/.config/nvim/plugged/vim-smoothie/smoothie.vim`. (This must be done after running `PlugInstall` command in nvim)

```vim
   " silent! map <unique> <S-Down> <Plug>(SmoothieForwards)
   " silent! map <unique> <S-Up> <Plug>(SmoothieBackwards)
```

These two lines of code are present in two places. Just search for the text and comment them out. This is so that `Shift+UP` and `Shift+DOWN` key works for beginners to vim for selecting texts.

6. That's It You are good to go.

7. If You want help/info about the config. Run the following command in nvim.

```
    :help sobhanbera
```
