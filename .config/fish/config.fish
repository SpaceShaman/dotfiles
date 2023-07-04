if status is-interactive
	# Commands to run in interactive sessions can go here
	set fish_greeting
	alias py='python'
	alias pip='python -m pip'
	alias vim=nvim
	alias g=sgpt
	alias commit='bash ~/.scripts/commit.sh'
	alias release='bash ~/.scripts/release.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	set PATH "$HOME/.local/bin:$PATH"
end