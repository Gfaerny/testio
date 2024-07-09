# this script is for build testio for linux and macos guy
#u # ##########################################
#s # how to use testio
   #You can use it like command and get it arg
#a # example :
#g # testio sciptname.cpp 
#e # your input 
#### your output

os=$(lsb_release -si)
base=$(lsb_release -si | tr '[:upper:]' '[:lower:]')

case $base in
    arch)
        
        sudo pacman -S --noconfirm gcc
        ;;
    debian)
        
        sudo apt-get update
        sudo apt-get install -y g++
        ;;
    fedora)
        
        sudo dnf install -y gcc-c++
        ;;
    *)
        echo "Unsupported distribution: $os"
        exit 1
        ;;
esac
g++ -o testio testio.cpp
mv testio /usr/bin/
