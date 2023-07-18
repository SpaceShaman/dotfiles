if status is-interactive
	# Commands to run in interactive sessions can go here
	set fish_greeting
	alias py='python'
	alias pip='python -m pip'
	alias vim=nvim
	alias g=sgpt
	alias platon='nmcli dev wifi connect platon'
	alias commit='bash ~/.scripts/commit.sh'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
	set PATH "$HOME/.local/bin:$PATH"
end