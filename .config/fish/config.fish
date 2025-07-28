if status is-interactive
	set fish_greeting
  fzf_configure_bindings --variables=\e\cv --directory=\cf
  set --universal pure_enable_single_line_prompt true
	set PATH "$HOME/.local/bin:$PATH"
	alias g=sgpt
	alias c=oco
	alias w=wifi
	alias p=python
	alias v=nvim
	alias vim=nvim
  alias cat=batcat
	alias t='trans -b :en'
	alias s=screen
	alias co='code .; exit'
	alias release='bash ~/.scripts/release.sh'
	alias update='bash ~/.scripts/update.sh'
	alias theme='bash ~/.scripts/theme.sh'
	alias wifi='bash ~/.scripts/wifi.sh'
	alias screen='bash ~/.scripts/screen.sh'
	export PYTHONSTARTUP=$HOME/.config/pythonstartup
	export PATH="$PATH:/opt/nvim/"
	export EDITOR=nvim
	export TERM=xterm-256color
	pyenv init - | source
  autopy
  autoenv
end
