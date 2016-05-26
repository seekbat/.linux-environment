#!/bin/bash



# Extracts given File
ossh() {
  
  #argument parsing while
  while [[ $# > 1]]; do
    arg="$1"
    opt="$2"

    case $arg in
      -f|--first)
        func_first=1
      ;;
      -r|--root)
        var_root=1
      ;;
      -c|--clean)
        func_clean=1
      ;;
      -d|--debug)
	var_debug=1
      ;;
    esac
    shift #drop argument
  done
      		
}
