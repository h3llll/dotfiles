# ~/.shrc
eval $(starship init bash)

# Exit if not interactive
case "$-" in
	*i*) ;;
	*) return ;;
esac

# Aliases
alias ls='ls --color=auto'
alias cb='xclip -selection clipboard'
alias vi='vim'
