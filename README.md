# taeseung_vimrc

## Installation
### Clone with GIT
#### Default version
```bash
cd ~/
git clone git://github.com/taeseunglee/taeseung_vimrc.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
vim -c ":PlugInstall" -c ":q" -c ":q"
```

#### GNU-c style version
```bash
cd ~/
git clone -b gnu-c git://github.com/taeseunglee/taeseung_vimrc.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
vim -c ":PlugInstall" -c ":q" -c ":q"
```


## Features
### Leader Key
The Leader key is bound to `Space`

### Switching between files (Buffers)

* Use `Ctrl h` `Ctrl l` to move between open files
* `Ctrl Left` `Ctrl Right` also works for switching between files


### Syntastic (Syntax check)
#### Syntastic Mode Map
Currently, syntastic is passive mode for all files.
If you want to apply syntastic to some languages from the beginning of vim,
you add languages to active_filetypes in vimrc. For example,
``` vim
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["c", "cpp", "perl"],
    \ "passive_filetypes": [] }
```

#### Toggle Syntastic Mode
Currently, syntastic is passive mode. So if you want to use syntastic, you must
toggle the Syntastic Mode(:SyntasticToggleMode).  
If you want to toggle the Syntastic Mode,
i.e. you want to change active to passive mode or passive to active mode,  
press ctrl+y

### Plug Command

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


### Code Fold (Informations about folding commands)

| Command | Description                     |
| ------- | ------------------------------- |
| zi      | switch folding on or off        |
| za      | toggle current fold open/closed |
| zc      | close current fold              |
| zr      | decrease the `foldlevel`        |
| zR      | open all folds                  |
| zm      | increase the `foldlevel`        |
| zM      | close all folds                 |
| zv      | expand folds to reveal cursor   |

### Viewports (Windows/Splits)

* Use `<Leader>h` `<Leader>j` `<Leader>k` `<Leader>l` to navigate between viewports

### File Browser (NERDTree)

* Use `<C-n>` to toggle the file browser

### Themes (ColorSchemes)

There is a very large collection of colorschemes in this repository.
Many of them can be seen [here](http://vimcolors.com/).
Set the colorscheme using `:colorscheme NAME`.
