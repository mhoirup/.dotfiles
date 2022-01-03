kitty @ set-tab-title zsh
kitty @ set-window-title ' '

export ZSH="/Users/marc/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.oh-my-zsh/' -g '!Library/' -g '!.cache/' -g '!*.tiff|*.jpeg|*.woff2' -g '!Downloads/' -g '!.local/' -g '!Pictures/' -g '!.tmux/'"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=gutter:#2e3440,bg+:#2e3440,fg+:#d8dee9:bold
 --color=hl:#ebcb8b,hl+:#ebcb8b:bold,pointer:#81a1c1
 --color=prompt:#81a1c1:regular,info:#4c566a,bg:#2e3440'

ZSH_THEME="robbyrussell"
export EDITOR='nvim'
export VISUAL='nvim'

alias nvim='nvim $(fzf)'
# If using homebrew python
alias pip3='/opt/homebrew/bin/pip3'
alias pip='/opt/homebrew/bin/pip3'

function dotfiles {
    mkdir fonts
    cp -r ~/Library/Fonts/OperatorMonoNerdFont-*.otf ~/fonts
    git add fonts .tmux.conf .zshrc .Rprofile .config/* .ipython/*
    # git add .tmux.conf
    # git add .zshrc
    # git add .Rprofile
    # git add .config/*
    # git add .ipython/*
    git commit -m "$1"
    git push -u origin main
    rm ~/fonts
}

plugins=(
    zsh-autosuggestions
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#616e88"
ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} '

# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; then source "/Applications/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION
