alias forceSource="source ~/.zshrc"

# Arch Linux alias / commands
alias updateMirrors="sudo cp -p /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bkp && sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist"
alias update="sudo pacman -Suy"
alias pacListOrphans='pacman -Qdt'
alias pacListPkgs='pacman -Qem'
alias pacListPkgsNoVersion='pacman -Qemq'
alias pacListAurPkgs='pacman -Qem'
alias pacListAurPkgsNoVersion='pacman -Qemq'
alias pacListOfficialPkgs='pacman -Qen'
alias pacListOfficialPkgsNoVersion='pacman -Qenq'

#Java SDK Alias (using SDKMAN):
alias jdk07="sdk use java 7.0.352-zulu"
alias jdk11="sdk use java 11.0.24-zulu"
alias jdk17="sdk use java 17.0.12-zulu"
alias jdk21="sdk use java 21.0.4-zulu"

#NODE Versions Alias (using NVM):
alias node14="nvm use v14.21.3"
alias node16="nvm use v16.20.2"
alias node18="nvm use v18.19.1"
alias node20="nvm use v20.11.1"

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}