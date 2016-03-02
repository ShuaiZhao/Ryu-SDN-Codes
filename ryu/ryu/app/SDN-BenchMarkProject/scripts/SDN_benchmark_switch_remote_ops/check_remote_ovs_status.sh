#!/bin/bash
USERNAME=szb53
Switches="128.104.159.147 128.104.159.148 128.104.159.149"
OVS_BR=ofpbr
CMD_check_Flow="hostname;ls; sudo ovs-vsctl show"

for ovs in ${Switches} ; do
   ssh  ${ovs} "${CMD_check_Flow}" 
   echo -e "\n"
done
