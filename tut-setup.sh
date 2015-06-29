#! /bin/bash
export scriptdir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

getDirName () {
  echo "What is the name of the subdirectory to run this from?"
  read subdir
  echo "demosubdir=$subdir" >> ./tut.config
}

[ -f $scriptdir/tut.config ] && echo "Reading config...">&2; source $scriptdir/tut.config|| getDirName; source $scriptdir/tut.config


[ -d $scriptdir/$demosubdir ] && echo "Using $demosubdir as the runtime directory" || echo "This isn't going to work. $demosubdir isn't a subdir of the current directory"



