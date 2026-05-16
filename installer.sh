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

function install() {
  if
    [[ "$#" -ne 3 ]]
  then
    exit
  fi
  case "$1" in
    -y | --yea | --yes)
      decision="y"
      prompt="[Y/n]"
      ;;
    -n | --nay | --no)
      decision="n"
      prompt="[y/N]"
      ;;
    *)
      return
      ;;
  esac
  if
    [[ ! -f "$2" ]]
  then
    return
  fi
  if
    [[ -f "$3" && "${arguments[default]}" -eq 0 ]]
  then
    read -p ":: override $3? $prompt " decision
  fi
  if
    [[ "$decision" == "y" || "$decision" == "Y" ]]
  then
    cp -f "$2" "$3"
  elif
    [[ "$decision" != "n" && "$decision" != "N" ]]
  then
    return
  fi
}

if
  [[ -n "$(git rev-parse --show-toplevel) 2>/dev/null)" ]]
then
  ROOT="$(git rev-parse --show-toplevel)"
else
  exit
fi
