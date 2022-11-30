# Global Configuration

## Global setup

Install brew (https://brew.sh).

```bash
brew install zsh miniforge poetry node Cmake protobuf rust
```

Install git, configure `~/.gitconfig` with your username

```txt
[user]
    name = ...
    email = ...
```

## Python

Create python environments with miniforge

```bash
conda create -n py310 python=3.10
```

Install libraries that are not compiled for arm64 with conda. For eg.

```bash
conda install numpy
```

Activate / deactivate with `conda activate` and `conda deactivate`.

To avoid messing with the base conda environment, add `conda activate <some env>` at the end of your `.zshrc` file (new shells will activate the env by default).


Default `pylint` configuration (Python linter)

```bash
cp pylintrc ~/.pylintrc
```

You can also generate a fresh global configuration file with

```bash
pylint --generate-rcfile > ${HOME}/.pylintrc
```

## Vim

```bash
cp vimrc ~/.vimrc
```

Improvements
- Escape with `jk`
- Comment code in visual mode with `,cc`
- Uncomment code in visual mode with `,cu`
- Syntax and other stuff


## Tmux

```bash
cp tmux.conf ~/.tmux.conf
```

Improvements
- Uses `Ctrl + A` instead of `Ctrl + B` (better for Mac with remapped uppercase to `Ctrl`)
- Split panes using `|` and `-` (so simply do `Ctrl + A + |` to get a vertical split)
- Move panes with `h` or `j` or `k` or `l` (vim mode)
- Resize panes with directional uppercase (so `Ctrl + A + UPPER + H` increases pane to the left)


## Sublime Text

Copy the content of `sublime` into the Sublime Text setting directory.

Contains (to install via the package manager, `cmd+shift+p`)
- Anaconda (python linter)
- AutoDocstring (docstring generation for python) with key bindings `super+shift+k`
- MarkdownTOC
- Pretty JSON
- SublimeLinter
- WrapPlus
- Python-black

Typically located on MacOS at

```
~/Library/Application Support/Sublime Text/Packages/User
```

NOTE:

Update `SublimeLinter.sublime-settings` python location (`paths: osx`).

Update `Anaconda.sublime-settings` python location (`python_interpreter`).

If you need to create a fresh sandboxed environment, you can do

```bash
cd
mkdir envs
cd envs
conda create -n sublime python=3.10
conda activate sublime
pip install flake8 pycodestyle pylint pyflakes
```

And retrieve the python interpreter location with `which python`.

