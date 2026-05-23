directory="${HOME}/.omegat"
temporary="$(mktemp -d)"
repository="https://github.com/possior/config-omegat.git"
system=""
version="default"
while
  [[ "${#}" -gt 0 ]]
do
  case "${1}" in
    "-d" | "--default")
      mode="default"
      shift 1
      ;;
    "-o" | "--os" | "--operating-system" | "--system")
      if
        [[ -z "${2}" || "${2}" =~ ^- ]]
      then
        exit 1
      fi
      system="${2}"
      shift 2
      ;;
    "-v" | "--ver" | "--version")
      if
        [[ -z "${2}" || "${2}" =~ ^- ]]
      then
        exit 1
      fi
      version="${2}"
      shift 2
      ;;
    *)
      exit 1
      ;;
  esac
done
case "${system,,}" in
  "arch" | "archlinux")    # https://archlinux.org/
    directory="${HOME}/.omegat"
    ;;
  "endeavour" | "endeavouros")    # https://endeavouros.com/
    directory="${HOME}/.omegat"
    ;;
  *)
    directory="${HOME}/.omegat"
    ;;
esac
function install() {
  if
    [[ "${#}" -ne 3 ]]
  then
    exit
  fi
  case "${1}" in
    "-y" | "--yea" | "--yes")
      decision="y"
      prompt="[Y/n]"
      ;;
    "-n" | "--nay" | "--no")
      decision="n"
      prompt="[y/N]"
      ;;
    *)
      return
      ;;
  esac
  if
    [[ ! -f "${2}" ]]
  then
    return
  fi
  if
    [[ -f "${3}" && -z "${mode}" ]]
  then
    read -p ":: PROMPT :: override ${3}? ${prompt} " userinput
    decision="${userinput:-"${decision}"}"
  fi
  case "${decision,,}" in
    "y" | "yea" | "yes")
      cp -f "${2}" "${3}"
      ;;
    "n" | "nay" | "no")
      ;;
    *)
      return
      ;;
  esac
}
if
  [[ ! -d "${directory}" ]]
then
  mkdir -p "${directory}"
fi
git clone -qb "${version}" "${repository}" "${temporary}"
cd "${temporary}"
rm -rf "${temporary}"
exit
