#!/bin/bash

pushd() {
	dirname=$1

	# Replace this by writing to history file
	if [ -n $direname ] && [ \( -d "$dirname" \) -a \( -x "$dirname" \) ]; then
	# :- if varname exists and isn't null return value other return right
	# ${ } is command substitution
	  DIR_STACK="$dirname ${DIR_STACK:-PWD' '}"
	  # :? use varname and if not exist or null raise error
	  cd ${dirname:?"missing directory name."}
	  echo "$DIR_STACK"
	else
	  echo "still in $PWD."
	fi
}

popd() {
  if [ -n "$DIR_STACK" ]; then
	  # #* remove pattern match and return rest (it is pattern matching)
	  DIR_STACK=${DIR_STACK#* }
	  cd ${DIR_STACK%% *}
	  echo "$PWD"
	else
	  echo "stack empty, still in $PWD"
	fi
}
