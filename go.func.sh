#!/bin/bash
# Author: Olivier Eggimann 
# Descr: SSH Handling like never before. Bashrc deployment on ssh connection


# Extracts given File
go() {
  # check if server is set
	if [[ -n "$1" && "$1" =~ [a-zA-Z0-9.]+$ ]]; then				#true if $1 is non zero and servername caracters
		opt_server="$1"
		shift #shift argument
	else
		echo "Error: no server added"
		func_go_help
		exit 2
	fi

	# Checking all arguments
	while [[ $# > 0 ]]	
	do
		key="$1"
		opt="$2"
		
		case $key in
			-f|--first)
				opt_first=1
				;;
			-r|--root)
				opt_root=1
				;;
			
		esac
		shift
	done

}

func_go_first() {
	local key_file
	if [[ -  ]]; then
		
	fi
	echo "Enter your Credentials:"
	read -p "Username: " user
	read -sp "Password: " passwd

	ssh -l $user 

	
}

func_go_help() {
	echo "----------------Help----------------"
	echo "Notation:"
	echo "go <server> -f -r"
	echo "\n"
	echo "-f | --first"
	echo "	For first login on this server"
	echo "	it copies keys on this server "
	echo "	and saves the configuration in"
	echo "	the .ssh/hosts file"
	echo "\n"
	echo "-r|--root"
	echo "	changes the username to root"
	echo "------------------------------------"
}
