if ! status --is-interactive
    exit 0
end

set _pyautoenv_path (dirname (realpath (status current-filename)))

function _pyautoenv_activate \
        --on-variable PWD \
        --on-event _pyautoenv_fish_init \
        --description 'Activate/deactivate python environments based on the current directory'
    if test -n "$PYAUTOENV_DISABLE"; and test "$PYAUTOENV_DISABLE" != "0"
        return
    end
    if ! command --search python3 >/dev/null
        return
    end
    set --local _pyautoenv_py "$_pyautoenv_path/pyautoenv.py"
    if test -f "$_pyautoenv_py"
        if not set -q PYAUTOENV_DEBUG; or test $PYAUTOENV_DEBUG -eq 0
            eval (python3 -OO "$_pyautoenv_py" --fish)
        else
            eval (python3 "$_pyautoenv_py" --fish)
        end
    end
end

function _pyautoenv_version --description 'Print pyautoenv version'
    python3 -O "$_pyautoenv_path/pyautoenv.py" --version
end

emit _pyautoenv_fish_init
