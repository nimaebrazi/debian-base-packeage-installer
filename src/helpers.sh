#!/bin/bash


## Files Addresses
readonly SOURCES_LIST="/etc/apt/sources.list"


get_sudo_permission() {
    if [ "$(whoami)" != "root" ];then
        echo -e "Hi, I need sudo permission\n"
        sudo su
    fi
}

update_repositories() {
    if [ -s $SOURCES_LIST ];then
        notification "Update Repositories...";
        sudo apt-get -y update > ../log/update_repo.log 2>&1;
        warning "For more info see update_repo.log\n" &&

        notification "Upgrade all programs...";
        sudo apt-get -y upgrade >  ../log/upgrade_programs 2>&1|| true;
        warning "For more info see upgrade_programs.log\n"

    else 
        notification "source.list is empty.\nplease check add repositories to install softwares."
    fi
}

make_directory() {
     DIRECTORY="$1"
     if [ ! -d "../$DIRECTORY" ];then
         $(mkdir ../${DIRECTORY})
     fi
}

