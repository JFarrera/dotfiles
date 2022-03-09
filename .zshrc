# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source $(dirname $(gem which colorls))/tab_complete.sh
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"


alias ls='colorls'
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -A'

command -V lsd > /dev/null && alias ls='lsd --group-dirs first' && \
    alias tree='lsd --tree'
command -V colorls > /dev/null && alias ls='colorls --sd' && \
    alias tree='colorls --tree'

# different cursor on vim and zsh
_fix_cursor() {
    echo -ne '\e[4 q'
    # https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
}

precmd_functions+=(_fix_cursor)

