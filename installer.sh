declare -A arguments

arguments[default]=0

while
  [[ "$#" -gt 0 ]]
do
  case "$1" in
    -d | --default)
      arguments[default]=1
      shift 1
      ;;
    *)
      exit
      ;;
  esac
done

if
  [[ -n "$(git rev-parse --show-toplevel) 2>/dev/null)" ]]
then
  ROOT="$(git rev-parse --show-toplevel)"
else
  exit
fi
