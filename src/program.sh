#!/bin/bash


## Programs List
PROGRAMS_LIST=$(cat ../config/programs.list)

#check exists package or not
check_program_exists() {
     local PROGRAM=$1
     local EXIT_STATUS=0

     command -v $PROGRAM >/dev/null 2>&1 || { local EXIT_STATUS=1; }

     #return 1 when exit status non-zero
     if [ "$EXIT_STATUS" -ne 0 ]; then
         return 1
     fi
     return 0
}

#call in install_all_programs
#just send errors to error_install.log
install_program() {
    local PROGRAM=$1
    notification "installing ${PROGRAM}..."
    sudo apt-get -y install ${PROGRAM} 2>../log/error_install.log
}

install_all_programs() {

    for program in ${PROGRAMS_LIST};do

        check_program_exists $program
        local PROGRAM_EXISTS_CODE="$?"

        #notif when a program is exists
        if [ "$PROGRAM_EXISTS_CODE" -eq 0 ];then
            notification "installing ${program}..."
            warning "${program} is installed\n"
        fi

        #install package when not installed
        if [ "$PROGRAM_EXISTS_CODE" -ne 0 ];then
            sleep 5
            install_program $program
            local EXIT_STATUS="$?"
            
            if [ "$EXIT_STATUS" -eq '0' ];then
                success "${program}: install successfully"
            fi

            if [ "$EXIT_STATUS" -ne '0' ];then
                error "${program}: fail to install"
                warning "For more info see error.log\n"
            fi
        fi

    done
}


