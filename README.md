# Configuration

## Remap CAPSLOCK to Ctrl (in OS settings)

## Install Brew

## Install iTerm2
You can change the color them in iTerm from Profiles > edit > Import

## Shell
Print the current shell

```
which $SHELL 
```

Change shell to zsh (optionnal if you install oh-my-zsh)
```
chsh -s $(which zsh)
```

Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Edit path variable conf that you may have defined in .bashrc or .profile or .bash_profile in .zshrc
```
export PATH="/usr/local/Cellar/root6/6.06.08/bin:/Applications/Julia-0.5.app/Contents/Resources/julia/bin:$PATH"
export PYTHONPATH="/usr/local/Cellar/root6/6.06.08/lib/root:$PYTHONPATH"
```

Use vim for the command line
```
bindkey -v
```

Map escape to work the same way on the command line (jk instead of esc)
```
bindkey -M viins ‘jk’ vi-cmd-mode
```

## Vim configuration

Install pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Install YouCompleteMe
```
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
```

Install solarized theme
```
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
```

Download .vimrc and move it into ~/.vimrc


Install ctrlp to be able to access files from vim

```
$ git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
```


## Edit .ssh/config

```
Host corn corn?? corn.stanford.edu corn??.stanford.edu
 ControlMaster auto
 ControlPath ~/.ssh/%r@%h:%p
 ControlPersist yes
Host corn
 Hostname corn.stanford.edu
 User userid

 host lxplus
 hostname lxplus.cern.ch
 user userid

```

## tmux

Download .tmux.conf and move it into ~/.tmux.conf
