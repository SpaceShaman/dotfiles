if status is-interactive
  set fish_greeting
  fzf_configure_bindings --variables=\e\cv --directory=\cf
  set --universal pure_enable_single_line_prompt true
  set PATH "$HOME/.local/bin:$PATH"
  alias g=sgpt
  alias c=oco
  alias w=wifi
  alias p=python3
  alias v=nvim
  alias vim=nvim
  alias cat=batcat
  alias l=lazygit
  alias cp='rsync -ah --info=progress2'
  alias mv='rsync -ah --info=progress2 --remove-source-files'
  alias t='trans -b :en'
  alias tp='trans -b :pl'
  alias s=screen
  alias co='code .; exit'
  alias release='bash ~/.scripts/release.sh'
  alias update='bash ~/.scripts/update.sh'
  alias theme='bash ~/.scripts/theme.sh'
  alias wifi='bash ~/.scripts/wifi.sh'
  alias screen='bash ~/.scripts/screen.sh'
  export PYTHONSTARTUP=$HOME/.config/pythonstartup
  export PATH="$PATH:/opt/nvim/"
  export ASDF_DATA_DIR="$HOME/.local/share/asdf"
  export PATH="$ASDF_DATA_DIR/shims:$PATH"
  export PATH="$HOME/.local/share/pypoetry/bin:$PATH"
  export EDITOR=nvim
  export TERM=xterm-256color
end
