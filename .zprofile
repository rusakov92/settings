# Fig pre block. Keep at the top of this file.
if [ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]; then
    . "$HOME/.fig/shell/zprofile.pre.zsh"
fi


# Fig post block. Keep at the bottom of this file.
if [ -f "$HOME/.fig/shell/zprofile.post.zsh" ]; then
    . "$HOME/.fig/shell/zprofile.post.zsh"
fi
