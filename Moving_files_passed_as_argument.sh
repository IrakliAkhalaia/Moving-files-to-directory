#!/bin/zsh

     if [ $# -eq 0 ]
     then
          echo "No arguments passed to script :)"
          exit
     else
          if [ ! -e $HOME/files/ ]
          then
                    mkdir $HOME/files/
          fi

          for file in "$@"
          do
                    if [ ! -e "$file" ]
                    then
                         echo "$file file doesn't exist."
                    else

                         if [ -f "$file" ]
                         then
                                   mv "$file" $HOME/files/
                                   echo "$file file moved to $HOME/files/ directory."
                         fi

                         if [ -d "$file" ]
                         then
                                   mv "$file" $HOME/files/
                                   echo "$file directory moved to $HOME/files/ directory."
                         fi
                    fi
          done
     fi
