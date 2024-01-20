if status is-interactive
	set fish_greeting
	set PATH "$HOME/.local/bin:$PATH"
	alias py='python'
	alias g=sgpt
	alias c=oco
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
end