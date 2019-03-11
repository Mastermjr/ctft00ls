#submodules update
git submodule foreach git checkout master; git pull origin master;

#setup peda
if [ ! -f ~/.gdbinit ];
  then  
  echo "source ~/ctf/tools/peda/peda.py " >> ~/.gdbinit
  echo "DONE! debug your program with gdb and enjoy"
fi
