# Settings
This repository contains my personal settings for ZSH and the Oh My Zsh framework

# Prereqirments
* ZSH should be installed ([guide](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md#prerequisites))
* Oh My Zsh should be installed ([guide](https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md#basic-installation))

# Install
Clone this repo into your home directory and run the make install command:
```shell
git clone git@github.com:rusakov92/settings.git .settings
cd ~/.settings
make install
```

# Configuration
If you want to alter the .zshrc file locally you can create a .zshrc.local file.
```
touch ~/.settings/.zshrc.local
# Edit the file and add your custom settings, like altering the theme or adding custom personal aliases
vi ~/.settings/.zshrc.local
~~~
ZSH_THEME="robbyrussell"
```
