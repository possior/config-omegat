function insy() {
  if
    [[ -f "$2" ]]
  then
    read -p ":: override $2? [Y/n] " ds
  fi
  ds="${ds:-Y}"
  if
    [[ "$ds" == "Y" ]] || [[ "$ds" == "y" ]]
  then
    cp -f "$1" "$2"
  elif
    [[ "$ds" != "N" ]] && [[ "$ds" != "n" ]]
  then
    return
  fi
}

function insn() {
  if
    [[ -f "$2" ]]
  then
    read -p ":: override $2? [y/N] " ds
  fi
  ds="${ds:-Y}"
  if
    [[ "$ds" == "Y" ]] || [[ "$ds" == "y" ]]
  then
    cp -f "$1" "$2"
  elif
    [[ "$ds" != "N" ]] && [[ "$ds" != "n" ]]
  then
    return
  fi
}
