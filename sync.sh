#submodules update
git submodule foreach git checkout master; git pull origin master;

#TODO: setup python module installs for pwntools
#TODO: setup other library installs


#setup peda
if [ ! -f ~/.gdbinit ];
  then  
  echo "source ~/ctf/ctft00ls/peda/peda.py " >> ~/.gdbinit
  echo "DONE! debug your program with gdb and enjoy"
fi

#setup burpsuite
if [ ! -d burp ];
  then 
    read -p "Enter Burpsuite version: " VERSION
    echo "$VERION"
    read -p "is the above the correct version number " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
    wget "https://portswigger.net/burp/releases/download?product=community&version=$VERSION&type=linux"
fi
