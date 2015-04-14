#!/bin/bash

echo "Contador %CPU %MEM" >> "ProcessMonitor".txt

C=0
while [ True ]

do
 #Substituir o valor 5382 pelo PID do processo
 echo $C $(ps -p 5382 -o %cpu,%mem | grep [0-9]) >> "ProcessMonitor".txt


sleep 30
	
	C=$(($C+1))
done

