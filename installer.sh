if
  [[ -n "$(git rev-parse --show-toplevel) 2>/dev/null)" ]]
then
  ROOT="$(git rev-parse --show-toplevel)"
else
  exit
fi
