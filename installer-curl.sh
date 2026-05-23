repository="https://github.com/possior/config-omegat.git"
directory="$HOME/.omegat"
temporary="$(mktemp -d)"
version="default"

while
  [[ "$#" -gt 0 ]]
do
  case "$1" in
    -v | --ver | --version)
      if
        [[ -z "$2" || "$2" =~ ^- ]]
      then
        echo ":: ERROR :: $1 requires a value"
        exit 1
      fi
      version="$2"
      shift 2
      ;;
  esac
done

git clone "$repository" "$temporary" -b "$version"
cd "$temporary"
rm -rf "$temporary"
