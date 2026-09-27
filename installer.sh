doc=https://raw.githubusercontent.com/possior/config-omegat/default/doc/
src=https://raw.githubusercontent.com/possior/config-omegat/default/src/
cfg=$HOME/.config/omegat/

while
  [[ $# -gt 0 ]]
do
  case $1 in
    -o|--overwrite)
      if
        [[ -z $behavior ]]
      then
        behavior=overwrite
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
    -p|--preserve)
      if
        [[ -z $behavior ]]
      then
        behavior=preserve
        shift 1
      else
        echo "!! detected conflicting behavior flags"
        exit
      fi
      ;;
  esac
done
