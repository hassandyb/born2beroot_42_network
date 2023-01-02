#!/bin/bash
wall "
	#Architecture : $(uname -a)
	#CPU : $(cat /proc/cpuinfo | grep "physical id" | uniq | wc -l)
	#vCPU : $(cat /proc/cpuinfo | grep processor | wc -l)
	#Memory Usage : $(free --mega | grep Mem | awk '{printf"%d/%dMB (%.2f%%)\n", $3, $2, $3/$2*100}')
	#Disk Usage : $(df --total -H | grep total | awk '{printf("%d/%dGB (%s)\n", $3*1000, $2, $5)}')
	#CPU load : $(mpstat | tail -n 1 | awk '{printf("%.2f%%\n", 100 - $13)}')
	#Last boot : $(who -b | awk '{printf("%s %s\n", $3, $4)}')
	#LVM use : $(if [$(lsblk -o type | grep lvm | wc -l) -eq 0]; then echo "no"; else echo "yes"; fi)
	#Connections TCP : $(ss -t | grep "ESTAB" | wc -l) ESTABLISHED
	#User log : $(who | wc -l)
	#Network : IP $(hostname -I) $(ip link | grep ether | awk '{printf("(%s)", $2)}')
	#sudo : $(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd
	"
