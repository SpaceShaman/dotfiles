if status is-interactive
	set fish_greeting
	alias py='python'
	alias pip='python -m pip'
	alias vim=nvim
	alias g=sgpt
	alias war='code ~/Dev/quadra/warehouse/warehouse.code-workspace'
	alias hol='code ~/Dev/quadra/holidays/holidays.code-workspace'
	alias con='code ~/Dev/quadra/ql_connect/ql_connect.code-workspace'
	alias ana='code ~/Dev/quadra/analytics/analytics.code-workspace'
	alias commit='bash ~/.scripts/commit.sh'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export EDITOR=vim
	set PATH "$HOME/.local/bin:$PATH"
end