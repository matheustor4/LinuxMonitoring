#!/bin/bash

echo "Count CapacitymAh WarnmAh RmAh" >> "BatteryMonitor".txt

C=0
while [ True ]

do
 echo $C $(cat /proc/acpi/battery/BAT1/info | grep "design capacity:" | awk '{print $3}') $(cat /proc/acpi/battery/BAT1/info | grep "warn" | awk '{print $4}') $(cat /proc/acpi/battery/BAT1/state | grep remaining | awk '{print $3}')  >> "BatteryMonitor".txt


sleep 30

	C=$(($C+1))
done

