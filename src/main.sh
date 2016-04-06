#!/bin/bash


#######################################################
                                                      #
                #Call soureces                        #
                                                      #
#######################################################

source message.sh
source helpers.sh
source program.sh


#######################################################
                                                      #
                #Run main()                           # 
                                                      #
#######################################################

make_directory "../log"
update_repositories

install_all_programs

notification "\nRead source on github: https://github.com/nimaebrazi/debian-base-packeage-installer\n==>"

