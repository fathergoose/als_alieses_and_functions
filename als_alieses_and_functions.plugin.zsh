alias vim=nvim
alias neovide='/Applications/Neovide.app/Contents/MacOS/neovide'

alias gvim=neovide
alias gaa="git add --all"
alias gs="git status"
alias gd="git diff"
alias grc="git rebase --continue"
alias kssh="kitty +kitten ssh"
alias theme="kitty +kitten themes"
alias la="ls -la"
alias tls="task list"
alias td="todo.sh"
alias tda="todo.sh add"
alias tdl="todo.sh ls"
alias note="vim +Diary"
alias :q="exit"
alias tk="task"

bce() {
  bc -e $*
}

chrome () {
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $* &> /dev/null &
}

google () {
  chrome "https://www.google.com/search?q=$*"
}

# fpath=(~/.config/zsh/functions $fpath)
# autoload -Uz manydots-magic
# manydots-magic
source ~/.config/zsh/functions/pm.zsh

function gcmsg() {
BAD_SPELLINGS="$(echo "$*" | hunspell -l)"
	if [[ $BAD_SPELLINGS ]]
	then
		echo "Possible misspelled words in commit message:\n$BAD_SPELLINGS"
		read 'ACCEPTED?Accept y/n?'
		if [[ $ACCEPTED == 'y' ]]
		then
			git commit -m "$*"
		else
			return
		fi
	else
		git commit -m "$*"
	fi
}

function push() {
	if "$(git push)"
	then
		echo ''
	else
		git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"
	fi
}
alias t="touch"
alias garc="git add --all && git rebase --continue"

# compdef _rg hg

# Trello commands `trl cards...`
# boards - list boards from the augintel workspace
# cards - Get cards from the main board
# me - Get cards assigned to me
