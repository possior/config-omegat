[[ -n "$(git rev-parse --show-toplevel 2>/dev/null)" ]] && ROOT="$(git rev-parse --show-toplevel)" || exit
[[ -f "$ROOT/script/utility.sh" ]] && source "$ROOT/script/utility.sh" || exit
[[ -d "$HOME/.omegat" ]] && mkdir -p "$HOME/.omegat"
