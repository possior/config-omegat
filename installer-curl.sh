directory="${HOME}/.omegat"
temporary="$(mktemp -d)"
repository="https://github.com/possior/config-omegat.git"
system=""
version="default"
while
  [[ "${#}" -gt 0 ]]
do
  case "${1}" in
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
git clone "${repository}" "${temporary}" -b "${version}"
cd "${temporary}"
rm -rf "${temporary}"
