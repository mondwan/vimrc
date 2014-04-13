#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else
  echo === Checking out vundle
  my_path=$PWD
  git submodule update --init
  exit 0

  echo === Linking vim directories
  ln -s ${my_path}/vimrc $HOME/.vimrc
  ln -s ${my_path} $HOME/.vim

  echo === Vundling
  vim +BundleInstall +qall
  
  echo "You will need following program in order to make plugins work:\n\
        pylint, jshint, php_code_sniffer, phpmd, exuberant-ctags\n\
        Following installation is assume you are using ubuntu.\n\
        You need to install them manually if you are not ubuntu :D"
  
  echo === Tagbar.depend: exuberant-ctags
  lsb_release -a 2> /dev/null | grep -qi Ubuntu || { \
    echo "You are not ubuntu. Installation end"
    exit 0
  }
  sudo apt-get install exuberant-ctags || { \
    echo "Fail to install exuberant-ctags"
    exit 1
  }

  echo === Syntastic.depend: jshint
  sudo apt-get install python-software-properties python g++ make
  sudo add-apt-repository ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install nodejs
  which npm >/dev/null 2>&1 || { \
    echo "Fail to install npm"
    exit 1
  }
  sudo npm install -g jshint || { \
    echo "Fail to install jshint"
    exit 1
  }

  echo === Syntastic.depend: pylint
  which pylint >/dev/null 2>&1 || { \
    sudo apt-geti nstall pylint
  }
  which pylint >/dev/null 2>&1 || { \
    echo "Fail to install pylint"
    exit 1
  }

  echo "Dependencies except those PHP are all solved.\n\
    For those PHP dependencies, you must manually install them on your project \n\
    if you would like to call syntastic on writing php codes."

  echo === Done
fi
