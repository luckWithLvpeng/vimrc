# vim plugin


## install
```bash
  # install vim-plug  mac or linux
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # clone 
  git clone git@github.com:luckWithLvpeng/vimrc.git ~/.vim/vimrc
  # creat .vimrc
  ln -s ~/.vim/vimrc/vimrc.vim ~/.vimrc
  #vim command
  #CocInstall coc-json
  ln -s ~/.vim/vimrc/coc-settings.json ~/.vim/coc-settings.json
```

### Commands

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


