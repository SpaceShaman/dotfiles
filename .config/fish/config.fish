if status is-interactive
	# Commands to run in interactive sessions can go here
	set fish_greeting
	alias py='python'
	alias pip='python -m pip'
	alias vim=nvim
	alias commit='git add . && git diff --staged | sgpt "Generate git commit message, for my changes" | git commit -F - && git push --all'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	set PATH "$HOME/.local/bin:$PATH"
end