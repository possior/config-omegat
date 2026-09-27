while
  [[ $# -gt 0 ]]
do
  case $1 in
    -c|--cfg|--config|--config-dir)
      if
        [[ -z $2 ]]
      then
        echo "!! $1 requires path as the next argument"
        exit
      fi
      if
        [[ -z $cfg ]]
      then
        cfg=$2
        shift 2
      else
        echo "!! $1 cannot be used multiple times"
        exit
      fi
      ;;
    -o|--overwrite)
      if
        [[ -z $behavior ]]
      then
        behavior=overwrite
        shift 1
      else
        echo "!! $1 cannot be used multiple times"
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
        echo "!! $1 cannot be used multiple times"
        exit
      fi
      ;;
  esac
done
echo ":: parsed arguments"

doc=https://raw.githubusercontent.com/possior/config-omegat/default/doc/
src=https://raw.githubusercontent.com/possior/config-omegat/default/src/
cfg=${cfg:-$HOME/.config/omegat/}
echo ":: initiated variables"

function overwriter() {
  curl -fsSLo ${cfg%/}/${2#/} ${1%/}/${2#/}
}
function preserver() {
  if
    [[ ! -f ${1%/}/${2#/} ]]
  then
    curl -fsSLo ${cfg%/}/${2#/} ${1%/}/${2#/}
  fi
}
echo ":: initiated functions"

if
  [[ ! -d $cfg ]]
then
  mkdir -p $cfg
  echo ":: created $cfg"
fi

case ${behavior:-overwrite} in
  overwrite)
    overwriter $src omegat.prefs
    overwriter $src uiLayout.xml
    echo ":: downloaded configuration files (overwrite)"
    overwriter $doc omegat.prefs.md
    overwriter $doc uiLayout.xml.md
    echo ":: downloaded documentation files (overwrite)"
    ;;
  preserve)
    preserver $src omegat.prefs
    preserver $src uiLayout.xml
    echo ":: downloaded configuration files (preserve)"
    preserver $doc omegat.prefs.md
    preserver $src uiLayout.xml.md
    echo ":: downloaded documentation files (preserve)"
    ;;
esac
