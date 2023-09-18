if status is-interactive
	set fish_greeting
	set PATH "$HOME/.local/bin:$PATH"
	alias py='python'
	alias g=sgpt
	alias c=oco
	alias war='code ~/Dev/quadra/warehouse/warehouse.code-workspace'
	alias hol='code ~/Dev/quadra/holidays/holidays.code-workspace'
	alias con='code ~/Dev/quadra/ql_connect/ql_connect.code-workspace'
	alias ana='code ~/Dev/quadra/analytics/analytics.code-workspace'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
	export PYTHONPATH=$HOME/Dev/quadra/ql_connect/app
end