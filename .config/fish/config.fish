if status is-interactive
	set fish_greeting
	set PATH "$HOME/.local/bin:$PATH"
	alias pip='pip3'
	alias g=sgpt
	alias c=oco
	alias w=wifi
	alias p=python
	alias t='trans -b :en'
	alias s='screen'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	alias screen='bash ~/.scripts/screen.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
	pyenv init - | source
end
