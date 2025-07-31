# ~/.shrc
# Exit if not interactive
case "$-" in
	*i*) ;;
	*) return ;;
esac

eval $(starship init bash)
eval "$(dircolors ~/.dircolors)"

SESSION_NAME="main"

if [ -z "$TMUX" ]; then
    tmux attach-session -t main 2>/dev/null || tmux new-session -s main
fi

# Aliases
alias ls='ls --color=auto'
alias cb='xclip -selection clipboard'
alias vi='vim'
