if status is-interactive
	set fish_greeting
	set PATH "$HOME/.local/bin:$PATH"
	alias py='python'
	alias pip='pip3'
	alias g=sgpt
	alias c=oco
	alias w=wifi
	alias p=python
	alias t='trans -b :en'
	alias r='rotate'
	alias s='screen_auto_off'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	alias rotate='bash ~/.scripts/rotate.sh'
	alias screen_auto_off='bash ~/.scripts/screen_auto_off.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
	export PYTHONPATH=$HOME/Dev/quadra/ql_connect/app
end