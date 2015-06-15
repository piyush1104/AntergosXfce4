#!/bin/bash
#              `.-/::/-``
#            .-/osssssssso/.               
#           :osyysssssssyyys+-              
#        `.+yyyysssssssssyyyyy+.           
#       `/syyyyyssssssssssyyyyys-`         
#      `/yhyyyyysss++ssosyyyyhhy/`         
#     .ohhhyyyyso++/+oso+syy+shhhho.       
#    .shhhhysoo++//+sss+++yyy+shhhhs.      
#   -yhhhhs+++++++ossso+++yyys+ohhddy:     
#  -yddhhyo+++++osyyss++++yyyyooyhdddy-    
# .yddddhso++osyyyyys+++++yyhhsoshddddy`   
#`odddddhyosyhyyyyyy++++++yhhhyosddddddo   
#.dmdddddhhhhhhhyyyo+++++shhhhhohddddmmh.  
#ddmmdddddhhhhhhhso++++++yhhhhhhdddddmmdy  
#dmmmdddddddhhhyso++++++shhhhhddddddmmmmh  
#-dmmmdddddddhhyso++++oshhhhdddddddmmmmd- 
# .smmmmddddddddhhhhhhhhhdddddddddmmmms. 
#   `+ydmmmdddddddddddddddddddmmmmdy/.     
#      `.:+ooyyddddddddddddyyso+:.`
#======================================================================================

#======================================================================================
#       
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

echo "################################################################"
echo "Copy ulimit problem"
echo "################################################################"


sudo cp copy/60-copy.conf /etc/sysctl.d/60-copy.conf
sudo sysctl -p /etc/sysctl.d/60-copy.conf 

echo "################################################################"
echo "fonts"
echo "################################################################"

[ -d "~/.fonts" ] || mkdir -p $HOME/".fonts"
cp fonts/* ~/.fonts/


echo "################################################################"
echo "gimp"
echo "################################################################"

[ -d "~/.gimp-2.8" ] || mkdir -p $HOME/".gimp-2.8"
[ -d "~/.gimp-2.8/scripts" ] || mkdir -p $HOME/".gimp-2.8/scripts"
cp gimp/scripts/* ~/.gimp-2.8/scripts



echo "################################################################"
echo "mount_harddisk_rule"
echo "################################################################"

sudo cp mount_harddisk_rule/49-nopasswd_global.rules /etc/polkit-1/rules.d/49-nopasswd_global.rules



echo "################################################################"
echo "terminator"
echo "################################################################"

[ -d "~/.config/terminator" ] || mkdir -p $HOME/".config/terminator"
sudo cp terminator/config ~/.config/terminator/



echo "########################################"
echo "########    T H E   E N D      #########"
echo "########################################"
