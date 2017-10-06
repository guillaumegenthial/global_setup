# Configuration

## Remap CAPSLOCK to Ctrl (in OS settings)

## Install Brew

## Install iTerm2
You can change the color them in iTerm from Profiles > edit > Import

## Install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Edit your shell config file

Use vim for the command line
```
bindkey -v
```

Map escape to work the same way on the command line (jk instead of esc)
```
bindkey -M viins ‘jk’ vi-cmd-mode
```

## Vim

Simple config

```
sh install.sh
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
