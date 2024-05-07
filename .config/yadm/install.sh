#!/bin/bash
set -e

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

main() {
  # Parse arguments
  while [ $# -gt 0 ]; do
    case $1 in
      --decrypt) export DECRYPT=yes ;;
    esac
    shift
  done

  sudo apt install yadm -y
  yadm clone --bootstrap https://github.com/sumanthrao1997/dot_files.git 2>/dev/null || yadm bootstrap
  #yadm remote set-url origin "git@github.com:sumanthrao1997/dot_files.git"
}

main "$@"
