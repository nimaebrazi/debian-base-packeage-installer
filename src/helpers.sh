#!/bin/bash


## Files Address
readonly SOURCES_LIST="/etc/apt/sources.list"

#Get sudo permission from user
get_sudo_permission() {
    if [ "$(whoami)" != "root" ];then
        echo -e "Hi, I need sudo permission\n"
        sudo su
    fi
}

#Run "apt-get update && apt-get upgrade"
#About true in line 24 ==> When end "apt-get update" job, all commands after it ignored.So reason using true is continue commands
update_repositories() {
    if [ -s $SOURCES_LIST ];then
        notification "Update Repositories...";
        sudo apt-get -y update > ../log/update_repo.log 2>&1;
        warning "For more info see update_repo.log\n" &&

        notification "Upgrade all programs...";
        sudo apt-get -y upgrade >  ../log/upgrade_programs 2>&1|| true;
        warning "For more info see upgrade_programs.log\n"

    else 
        notification "\"source.list\" file is empty.Please add repositories to install softwares."
    fi
}

#Make directory with checking exists or not
#make_directory "name" "destination"
make_directory() {
     DIRECTORY="$1"
     DESTINATION="$2"
     if [ ! -d "${DESTIONATION}${DIRECTORY}" ];then
        $(mkdir "${DESTINATION}${DIRECTORY}")
     fi
}

