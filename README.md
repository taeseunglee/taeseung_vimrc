# taeseung_vimrc

## Installation

### Clone with GIT

```bash
cd ~/
git clone git://github.com/taeseunglee/taeseung_vimrc.git .vim
ln -s ~/.vim/vimrc ~/.vimrc # Optional, needed for some VIM installations
```

### One Time Download

This method might be more sane. Simply downlaod the latest version, extract
to `~/.vim`, and configure to your liking.

```bash
wget https://github.com/taeseunglee/taeseung_vimrc/archive/master.zip
```

## Features

* Edit many files at the same time
* File Browser on left side of screen
* Move between files in center screen
* View status of the current GIT repo, if applicable
* Additional features when running under MacVIM
* Quickly navigate to files using a fuzzy finder

### Leader Key
The Leader key is now bound to `Space`

### Switching between files (Buffers)

* Use `Ctrl h` `Ctrl l` to move between open files
* `Ctrl Left` `Ctrl Right` also works for switching between files

### Code Fold (Informations about folding commands)

* zi : switch folding on or off
* za : toggle current fold open/closed
* zc : close current fold
* zr : decrease the `foldlevel`
* zR : open all folds
* zm : increase the `foldlevel`
* zM : close all folds
* zv : expand folds to reveal cursor

### Viewports (Windows/Splits)

* Use `<Leader>h` `<Leader>j` `<Leader>k` `<Leader>l` to navigate between viewports

### File Browser (NERDTree)

* Use `<C-n>` to toggle the file browser

### Themes (ColorSchemes)

There is a very large collection of colorschemes in this repository.
Many of them can be seen [here](http://vimcolors.com/).
Set the scheme using `:colorscheme NAME`.
