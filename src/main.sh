#!/bin/bash


#******************************************************#

		#Call soureces

#******************************************************#

source message.sh
source program.sh
source helpers.sh


#******************************************************#
		
		#Run ==> main(){}

#******************************************************#


make_directory "log"

update_repositories

install_all_programs
